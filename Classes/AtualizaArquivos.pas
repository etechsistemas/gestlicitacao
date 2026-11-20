unit AtualizaArquivos;

{ Atualização do sistema pelo servidor: exe (zip), pastas de schemas e imagens (logos).

  - Uma única chamada no login traz a versão do exe e dos pacotes (versaoServidor com '|').
  - Download em partes com barra de progresso; se a conexão cair, continua de onde parou
    (arquivo .part), inclusive no próximo login.
  - Nada do sistema atual é tocado antes de o arquivo novo estar completo e conferido (md5).
    A troca do exe são dois renomes (milissegundos).
  - Mutex por pasta: vários sistemas abertos na mesma pasta não atualizam ao mesmo tempo, e
    quem estava aberto com o exe antigo se reabre sozinho no login.
  - Unit compartilhada pelos sistemas irmãos: cada um diz a seção/chave do ini e os pacotes. }

interface

uses
  Windows, Messages, SysUtils, Classes, Forms, Controls, StdCtrls, ComCtrls, Graphics,
  Dialogs, SqlExpr, DB, IniFiles, Variants, ShellAPI, ZipForge, IdHashMessageDigest;

// Monta o APLIC do getversaoserv com os pacotes: MontaAplic('CLIENTE', 'image|Schemas')
function MontaAplic(const Aplic, Pacotes : String) : String;

// Resposta = retorno do versaoServidor com pacotes ('versao|image=xx|Schemas=yy').
// Secao/Chave = onde fica a versão do exe no config.ini ('CLIENTE', 'VERSAO').
// Retorna True quando o sistema foi atualizado (ou trocado por outra instância) e já
// foi reaberto: quem chamou deve fechar.
function VerificaAtualizacao(Conexao : TSQLConnection; const Resposta, Secao, Chave : String) : Boolean;

// Copia a imagem escolhida para a pasta image do sistema, envia ao servidor (que repassa
// aos outros PCs) e devolve o caminho para gravar no cadastro: 'image\arquivo.ext'.
function EnviaImagemServidor(Conexao : TSQLConnection; const Origem : String) : String;

implementation

const
  PASTA_IMAGENS = 'image';
  // pacote cujo conteudo vai para a pasta do sistema (ACBrNFSeXServicos.ini e afins:
  // o ACBr le esses .ini da pasta do exe antes do que vai compilado nele)
  PACOTE_RAIZ = 'ACBrINI';
  SECAO_PACOTES = 'ARQUIVOS';
  PARTE_INICIAL = 512 * 1024;
  PARTE_MINIMA  = 128 * 1024;
  PARTE_MAXIMA  = 8 * 1024 * 1024;
  TENTATIVAS    = 5;

type
  TFAtualizando = class(TForm)
  private
    LTitulo : TLabel;
    LDetalhe : TLabel;
    Barra : TProgressBar;
    PodeFechar : Boolean;
    Janelas : Pointer;
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
  public
    constructor Cria;
    procedure Mostra(const Titulo, Detalhe : String; Posicao : Integer = -1);
    procedure Fecha;
  end;

  TAtualizador = class
  private
    Conexao : TSQLConnection;
    Tela : TFAtualizando;
    Pasta : String;
    ZipTitulo : String;
    function Tela_ : TFAtualizando;
    function Metodo(const Nome : String) : TSqlServerMethod;
    function InfoArquivo(const Nome : String; out Tamanho : Int64; out MD5 : String) : Boolean;
    procedure BaixaArquivo(const Nome, Destino, Titulo : String);
    procedure Extrai(const Zip, Destino, Titulo : String);
    procedure ZipProgresso(Sender : TObject; Progress : Double; Operation : TZFProcessOperation;
      ProgressPhase : TZFProgressPhase; var Cancel : Boolean);
    procedure AtualizaExe;
    procedure AtualizaPacote(const Nome : String);
    procedure AtualizaImagens;
  public
    constructor Create(AConexao : TSQLConnection);
    destructor Destroy; override;
  end;

var
  ExeInicial : String;   // tamanho|data do exe quando o processo abriu

{ utilitários }

function PastaSistema : String;
begin
  result := ExtractFilePath(Application.ExeName);
end;

function AssinaturaArquivo(const Arq : String) : String;
var
  sr : TSearchRec;
begin
  result := '';
  if FindFirst(Arq, faAnyFile, sr) = 0 then
  try
    result := IntToStr(sr.Size) + '|' + IntToStr(sr.Time);
  finally
    FindClose(sr);
  end;
end;

function ArquivoMD5(const Arq : String) : String;
var
  fs : TFileStream;
  h : TIdHashMessageDigest5;
begin
  fs := TFileStream.Create(Arq, fmOpenRead or fmShareDenyNone);
  try
    h := TIdHashMessageDigest5.Create;
    try
      result := LowerCase(h.HashStreamAsHex(fs));
    finally
      h.Free;
    end;
  finally
    fs.Free;
  end;
end;

function TamanhoArquivo(const Arq : String) : Int64;
var
  sr : TSearchRec;
begin
  result := -1;
  if FindFirst(Arq, faAnyFile, sr) = 0 then
  try
    result := sr.Size;
  finally
    FindClose(sr);
  end;
end;

function LeIni(const Secao, Chave : String) : String;
var
  ini : TIniFile;
begin
  ini := TIniFile.Create(PastaSistema + 'config.ini');
  try
    result := ini.ReadString(Secao, Chave, '');
  finally
    ini.Free;
  end;
end;

procedure GravaIni(const Secao, Chave, Valor : String);
var
  ini : TIniFile;
begin
  ini := TIniFile.Create(PastaSistema + 'config.ini');
  try
    ini.WriteString(Secao, Chave, Valor);
  finally
    ini.Free;
  end;
end;

procedure GravaLogAtualizacao(const Texto : String);
var
  f : TextFile;
  arq : String;
begin
  try
    arq := PastaSistema + 'atualizacao.log';
    AssignFile(f, arq);
    if FileExists(arq) then
      Append(f)
    else
      Rewrite(f);
    try
      Writeln(f, FormatDateTime('dd/mm/yyyy hh:nn:ss', Now) + '  ' + Texto);
    finally
      CloseFile(f);
    end;
  except
    // log nunca pode impedir a atualização
  end;
end;

function FormataMB(Bytes : Int64) : String;
begin
  result := FormatFloat('0.0', Bytes / (1024 * 1024)) + ' MB';
end;

procedure Espera(Milissegundos : Cardinal);
var
  fim : Cardinal;
begin
  fim := GetTickCount + Milissegundos;
  while GetTickCount < fim do
  begin
    Application.ProcessMessages;
    Sleep(50);
  end;
end;

procedure Reabre;
begin
  ShellExecute(0, nil, PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
end;

// o exe foi trocado no disco depois que este processo abriu (outra instância atualizou)
function ExeTrocado : Boolean;
begin
  result := (ExeInicial <> '') and (AssinaturaArquivo(Application.ExeName) <> ExeInicial);
end;

// mutex por pasta do sistema: só uma instância atualiza por vez
function PegaMutex(Atualizador : TAtualizador) : THandle;
var
  nome : String;
  r : Cardinal;
begin
  nome := 'ETechAtualizacao_' + LowerCase(PastaSistema);
  nome := StringReplace(nome, '\', '_', [rfReplaceAll]);
  nome := StringReplace(nome, ':', '_', [rfReplaceAll]);
  result := CreateMutex(nil, False, PChar(nome));
  if result = 0 then
    exit;
  repeat
    r := WaitForSingleObject(result, 200);
    if (r = WAIT_OBJECT_0) or (r = WAIT_ABANDONED) then
      exit;
    Atualizador.Tela_.Mostra('Aguardando outra atualização', 'Outro sistema aberto nesta pasta está atualizando...');
    Application.ProcessMessages;
  until false;
end;

procedure SoltaMutex(var Mutex : THandle);
begin
  if Mutex <> 0 then
  begin
    ReleaseMutex(Mutex);
    CloseHandle(Mutex);
    Mutex := 0;
  end;
end;

function MontaAplic(const Aplic, Pacotes : String) : String;
begin
  result := Aplic;
  if Pacotes <> '' then
    result := result + '|' + Pacotes;
end;

{ TFAtualizando }

constructor TFAtualizando.Cria;
begin
  inherited CreateNew(nil);
  BorderStyle := bsDialog;
  BorderIcons := [];
  Caption := 'Atualização do sistema';
  FormStyle := fsStayOnTop;
  Position := poScreenCenter;
  ClientWidth := 460;
  ClientHeight := 112;
  Font.Name := 'Tahoma';
  Font.Size := 9;
  OnCloseQuery := FormCloseQuery;

  LTitulo := TLabel.Create(Self);
  LTitulo.Parent := Self;
  LTitulo.SetBounds(16, 14, 428, 18);
  LTitulo.Font.Style := [fsBold];
  LTitulo.Font.Size := 10;

  LDetalhe := TLabel.Create(Self);
  LDetalhe.Parent := Self;
  LDetalhe.SetBounds(16, 40, 428, 16);
  LDetalhe.AutoSize := false;

  Barra := TProgressBar.Create(Self);
  Barra.Parent := Self;
  Barra.SetBounds(16, 66, 428, 22);
  Barra.Min := 0;
  Barra.Max := 1000;
  Barra.Smooth := true;
end;

procedure TFAtualizando.FormCloseQuery(Sender : TObject; var CanClose : Boolean);
begin
  // fechar no meio deixaria o sistema sem atualizar; o antigo continua intacto até o fim
  CanClose := PodeFechar;
end;

procedure TFAtualizando.Mostra(const Titulo, Detalhe : String; Posicao : Integer);
begin
  if not Visible then
  begin
    Show;
    Janelas := DisableTaskWindows(Handle);
  end;
  LTitulo.Caption := Titulo;
  LDetalhe.Caption := Detalhe;
  if Posicao >= 0 then
    Barra.Position := Posicao;
  Update;
  Application.ProcessMessages;
end;

procedure TFAtualizando.Fecha;
begin
  if Visible then
  begin
    EnableTaskWindows(Janelas);
    Janelas := nil;
  end;
  PodeFechar := true;
  Close;
end;

{ TAtualizador }

constructor TAtualizador.Create(AConexao : TSQLConnection);
begin
  inherited Create;
  Conexao := AConexao;
  Pasta := PastaSistema;
end;

destructor TAtualizador.Destroy;
begin
  if Tela <> nil then
  begin
    Tela.Fecha;
    Tela.Free;
    Tela := nil;
  end;
  inherited;
end;

function TAtualizador.Tela_ : TFAtualizando;
begin
  if Tela = nil then
    Tela := TFAtualizando.Cria;
  result := Tela;
end;

function TAtualizador.Metodo(const Nome : String) : TSqlServerMethod;
begin
  // criado com a conexão aberta para trazer os tipos dos parâmetros do servidor
  result := TSqlServerMethod.Create(nil);
  result.SQLConnection := Conexao;
  result.ServerMethodName := 'TServerMethods1.' + Nome;
end;

function TAtualizador.InfoArquivo(const Nome : String; out Tamanho : Int64; out MD5 : String) : Boolean;
var
  m : TSqlServerMethod;
  r : String;
  p : Integer;
begin
  m := Metodo('infoArquivo');
  try
    m.Params[0].AsString := Nome;
    m.ExecuteMethod;
    r := m.Params[1].AsString;
  finally
    m.Free;
  end;
  p := Pos('|', r);
  result := p > 0;
  if result then
  begin
    Tamanho := StrToInt64Def(Copy(r, 1, p - 1), -1);
    MD5 := LowerCase(Copy(r, p + 1, MaxInt));
    result := Tamanho >= 0;
  end;
end;

// baixa Nome do servidor para Destino. Usa Destino.part (+ .md5) para continuar
// de onde parou se a conexão cair. Só troca o Destino depois de conferir o md5.
procedure TAtualizador.BaixaArquivo(const Nome, Destino, Titulo : String);
var
  total, posicao : Int64;
  md5, part, partmd5 : String;
  fs : TFileStream;
  m : TSqlServerMethod;
  v : OleVariant;
  n, parte, tentativa : Integer;
  inicio, t0, dt : Cardinal;
  p : Pointer;
  baixado : Int64;
begin
  Tela_.Mostra(Titulo, 'Preparando no servidor...', 0);
  if not InfoArquivo(Nome, total, md5) then
    raise Exception.Create('Arquivo ' + Nome + ' não encontrado no servidor.');

  part := Destino + '.part';
  partmd5 := part + '.md5';
  ForceDirectories(ExtractFilePath(Destino));

  // continua o download anterior só se for do mesmo arquivo
  if FileExists(part) and FileExists(partmd5) then
  begin
    with TStringList.Create do
    try
      LoadFromFile(partmd5);
      if Trim(Text) <> md5 then
        DeleteFile(part);
    finally
      Free;
    end;
  end
  else if FileExists(part) then
    DeleteFile(part);
  with TStringList.Create do
  try
    Text := md5;
    SaveToFile(partmd5);
  finally
    Free;
  end;

  if FileExists(part) then
  begin
    fs := TFileStream.Create(part, fmOpenReadWrite or fmShareDenyWrite);
    if fs.Size > total then
      fs.Size := 0;
  end
  else
    fs := TFileStream.Create(part, fmCreate);
  baixado := 0;
  inicio := GetTickCount;
  m := Metodo('baixaParte');
  try
    posicao := fs.Size;
    fs.Position := posicao;
    parte := PARTE_INICIAL;
    while posicao < total do
    begin
      Tela_.Mostra(Titulo, 'Baixando ' + FormataMB(posicao) + ' de ' + FormataMB(total),
        Round(posicao * 1000 / total));
      t0 := GetTickCount;
      tentativa := 0;
      repeat
        try
          m.Params[0].AsString := Nome;
          m.Params[1].AsInteger := posicao;
          m.Params[2].AsInteger := parte;
          m.ExecuteMethod;
          v := m.Params[3].Value;
          break;
        except
          on E : Exception do
          begin
            inc(tentativa);
            GravaLogAtualizacao('Falha ao baixar ' + Nome + ' em ' + IntToStr(posicao) + ' (tentativa ' +
              IntToStr(tentativa) + '): ' + E.Message);
            if tentativa >= TENTATIVAS then
              raise Exception.Create('A conexão com o servidor caiu durante a atualização.' + #13#10 +
                'O que já foi baixado foi guardado: entre novamente para continuar.' + #13#10#13#10 + E.Message);
            Tela_.Mostra(Titulo, 'Conexão instável, tentando de novo (' + IntToStr(tentativa) + ')...');
            Espera(2000);
            parte := parte div 2;
            if parte < PARTE_MINIMA then
              parte := PARTE_MINIMA;
          end;
        end;
      until false;

      if not VarIsArray(v) then
        raise Exception.Create('O servidor não devolveu o arquivo ' + Nome + '.');
      n := VarArrayHighBound(v, 1) - VarArrayLowBound(v, 1) + 1;
      if n <= 0 then
        raise Exception.Create('O servidor não devolveu o arquivo ' + Nome + '.');
      p := VarArrayLock(v);
      try
        fs.WriteBuffer(p^, n);
      finally
        VarArrayUnlock(v);
      end;
      v := Unassigned;
      posicao := posicao + n;
      baixado := baixado + n;

      // tamanho da parte acompanha a velocidade: cada pedido leva por volta de 1 segundo
      dt := GetTickCount - t0;
      if (dt < 700) and (parte < PARTE_MAXIMA) then
        parte := parte * 2
      else if (dt > 2000) and (parte > PARTE_MINIMA) then
        parte := parte div 2;
    end;
  finally
    m.Free;
    fs.Free;
  end;

  Tela_.Mostra(Titulo, 'Conferindo o arquivo baixado...', 1000);
  if ArquivoMD5(part) <> md5 then
  begin
    DeleteFile(part);
    DeleteFile(partmd5);
    raise Exception.Create('O arquivo ' + Nome + ' chegou com erro. Entre novamente para baixar de novo.');
  end;
  if FileExists(Destino) then
    DeleteFile(Destino);
  if not RenameFile(part, Destino) then
    raise Exception.Create('Não foi possível gravar ' + Destino + '.');
  DeleteFile(partmd5);

  dt := GetTickCount - inicio;
  if baixado > 0 then
    GravaLogAtualizacao(Nome + ': ' + FormataMB(baixado) + ' em ' + FormatFloat('0.0', dt / 1000) + ' s (' +
      FormatFloat('0', baixado / 1024 / (dt / 1000 + 0.001)) + ' KB/s)');
end;

procedure TAtualizador.ZipProgresso(Sender : TObject; Progress : Double; Operation : TZFProcessOperation;
  ProgressPhase : TZFProgressPhase; var Cancel : Boolean);
begin
  Tela_.Mostra(ZipTitulo, 'Extraindo ' + FormatFloat('0', Progress) + '%', Round(Progress * 10));
end;

procedure TAtualizador.Extrai(const Zip, Destino, Titulo : String);
var
  z : TZipForge;
begin
  ZipTitulo := Titulo;
  ForceDirectories(Destino);
  z := TZipForge.Create(nil);
  try
    z.FileName := Zip;
    z.OpenArchive(fmOpenRead or fmShareDenyWrite);
    z.BaseDir := ExcludeTrailingPathDelimiter(Destino);
    z.Options.OverwriteMode := omAlways;
    z.OnOverallProgress := ZipProgresso;
    z.ExtractFiles('*.*');
    z.CloseArchive;
  finally
    z.Free;
  end;
end;

procedure ApagaPasta(const Dir : String);
var
  sr : TSearchRec;
  d : String;
begin
  d := IncludeTrailingPathDelimiter(Dir);
  if not DirectoryExists(d) then
    exit;
  if FindFirst(d + '*.*', faAnyFile, sr) = 0 then
  try
    repeat
      if (sr.Name = '.') or (sr.Name = '..') then
        continue;
      if (sr.Attr and faDirectory) <> 0 then
        ApagaPasta(d + sr.Name)
      else
      begin
        FileSetAttr(d + sr.Name, 0);
        DeleteFile(d + sr.Name);
      end;
    until FindNext(sr) <> 0;
  finally
    FindClose(sr);
  end;
  RemoveDir(d);
end;

// troca os arquivos da pasta temporária pelos do sistema. O exe em uso pode ser
// renomeado (o Windows deixa), então: atual -> .oldAAAAMMDDHHNNSS, novo -> lugar dele.
procedure InstalaArquivos(const Origem, Destino : String; Trocados : TStringList);
var
  sr : TSearchRec;
  o, d, velho, carimbo : String;
begin
  carimbo := FormatDateTime('yyyymmddhhnnss', Now);
  if FindFirst(IncludeTrailingPathDelimiter(Origem) + '*.*', faAnyFile, sr) = 0 then
  try
    repeat
      if (sr.Name = '.') or (sr.Name = '..') then
        continue;
      o := IncludeTrailingPathDelimiter(Origem) + sr.Name;
      d := IncludeTrailingPathDelimiter(Destino) + sr.Name;
      if (sr.Attr and faDirectory) <> 0 then
      begin
        ForceDirectories(d);
        InstalaArquivos(o, d, Trocados);
        continue;
      end;
      if FileExists(d) then
      begin
        // exe: Nome.oldAAAA... (o login apaga os Nome.old* que sobrarem)
        if SameText(ExtractFileExt(d), '.exe') then
          velho := ChangeFileExt(d, '.old' + carimbo)
        else
          velho := d + '.old' + carimbo;
        FileSetAttr(d, 0);
        if not RenameFile(d, velho) then
          raise Exception.Create('Não foi possível substituir ' + d + '.' + #13#10 + SysErrorMessage(GetLastError));
        Trocados.Add(d + '=' + velho);
      end
      else
        Trocados.Add(d + '=');
      if not MoveFile(PChar(o), PChar(d)) then
        raise Exception.Create('Não foi possível gravar ' + d + '.' + #13#10 + SysErrorMessage(GetLastError));
    until FindNext(sr) <> 0;
  finally
    FindClose(sr);
  end;
end;

procedure DesfazTrocas(Trocados : TStringList);
var
  i : Integer;
  d, velho : String;
begin
  for i := Trocados.Count - 1 downto 0 do
  begin
    d := Trocados.Names[i];
    velho := Trocados.ValueFromIndex[i];
    if FileExists(d) then
      DeleteFile(d);
    if velho <> '' then
      RenameFile(velho, d);
  end;
end;

procedure TAtualizador.AtualizaExe;
var
  nomezip, zip, temp, exe : String;
  trocados : TStringList;
  i : Integer;
begin
  nomezip := ChangeFileExt(ExtractFileName(Application.ExeName), '.zip');
  zip := Pasta + nomezip;
  temp := Pasta + '_atualizacao';
  exe := ExtractFileName(Application.ExeName);

  BaixaArquivo(nomezip, zip, 'Atualizando o sistema');

  // extrai numa pasta à parte: o exe atual continua intacto até aqui
  ApagaPasta(temp);
  Extrai(zip, temp, 'Atualizando o sistema');
  if not FileExists(IncludeTrailingPathDelimiter(temp) + exe) then
    raise Exception.Create('O arquivo ' + nomezip + ' do servidor não contém o ' + exe + '.');

  Tela_.Mostra('Atualizando o sistema', 'Instalando a versão nova...', 1000);
  trocados := TStringList.Create;
  try
    try
      InstalaArquivos(temp, ExcludeTrailingPathDelimiter(Pasta), trocados);
    except
      DesfazTrocas(trocados);
      raise;
    end;
    for i := 0 to trocados.Count - 1 do
      GravaLogAtualizacao('Instalado: ' + trocados.Names[i]);
  finally
    trocados.Free;
  end;
  ApagaPasta(temp);
  DeleteFile(zip);
end;

// pasta de schemas (ou ArqINI): extrai por cima da atual. A versão no ini só é gravada
// no fim, então se parar no meio ela é extraída de novo no próximo login.
procedure TAtualizador.AtualizaPacote(const Nome : String);
var
  zip : String;
begin
  zip := Pasta + Nome + '.zip';
  BaixaArquivo(Nome + '.zip', zip, 'Atualizando ' + Nome);
  if SameText(Nome, PACOTE_RAIZ) then
    Extrai(zip, Pasta, 'Atualizando ' + Nome)
  else
    Extrai(zip, Pasta + Nome, 'Atualizando ' + Nome);
  DeleteFile(zip);
end;

// pasta image: baixa só o que é novo ou diferente; nunca apaga (ela também guarda
// os gráficos temporários dos relatórios)
procedure TAtualizador.AtualizaImagens;
var
  m : TSqlServerMethod;
  lista, campos : TStringList;
  i : Integer;
  nome, local, md5 : String;
  tam : Int64;
begin
  lista := TStringList.Create;
  campos := TStringList.Create;
  try
    m := Metodo('listaImagens');
    try
      m.ExecuteMethod;
      lista.Text := m.Params[0].AsString;
    finally
      m.Free;
    end;
    campos.Delimiter := '|';
    campos.StrictDelimiter := true;
    for i := 0 to lista.Count - 1 do
    begin
      campos.DelimitedText := lista[i];
      if campos.Count < 3 then
        continue;
      nome := campos[0];
      tam := StrToInt64Def(campos[1], -1);
      md5 := LowerCase(campos[2]);
      if (nome = '') or (ExtractFileName(nome) <> nome) then
        continue;
      local := Pasta + PASTA_IMAGENS + '\' + nome;
      if FileExists(local) and (TamanhoArquivo(local) = tam) and (ArquivoMD5(local) = md5) then
        continue;
      BaixaArquivo(PASTA_IMAGENS + '\' + nome, local, 'Atualizando imagens');
    end;
  finally
    campos.Free;
    lista.Free;
  end;
end;

{ entrada }

function VerificaAtualizacao(Conexao : TSQLConnection; const Resposta, Secao, Chave : String) : Boolean;
var
  partes : TStringList;
  versao, nome, ver : String;
  i : Integer;
  at : TAtualizador;
  mutex : THandle;
begin
  result := false;
  partes := TStringList.Create;
  try
    partes.Delimiter := '|';
    partes.StrictDelimiter := true;
    partes.DelimitedText := Resposta;
    if partes.Count = 0 then
      exit;
    versao := partes[0];

    // outra instância já trocou o exe enquanto este estava aberto: só reabre
    if ExeTrocado and (LeIni(Secao, Chave) = versao) then
    begin
      Reabre;
      result := true;
      exit;
    end;

    at := TAtualizador.Create(Conexao);
    mutex := 0;
    try
      // sistema
      if (versao <> '') and (LeIni(Secao, Chave) <> versao) then
      begin
        mutex := PegaMutex(at);
        if LeIni(Secao, Chave) <> versao then
        begin
          try
            at.AtualizaExe;
          except
            on E : Exception do
            begin
              GravaLogAtualizacao('Erro na atualização: ' + E.Message);
              at.Tela_.Fecha;
              raise;
            end;
          end;
          GravaIni(Secao, Chave, versao);
          GravaLogAtualizacao('Sistema atualizado para a versão ' + versao);
        end;
        SoltaMutex(mutex);
        Reabre;
        result := true;
        exit;
      end;

      // pacotes (imagens e schemas): erro aqui não impede o login, tenta de novo no próximo
      for i := 1 to partes.Count - 1 do
      begin
        nome := partes.Names[i];
        ver := partes.ValueFromIndex[i];
        if (nome = '') or (ver = '') or (LeIni(SECAO_PACOTES, nome) = ver) then
          continue;
        if mutex = 0 then
          mutex := PegaMutex(at);
        if LeIni(SECAO_PACOTES, nome) = ver then
          continue;
        try
          if SameText(nome, PASTA_IMAGENS) then
            at.AtualizaImagens
          else
            at.AtualizaPacote(nome);
          GravaIni(SECAO_PACOTES, nome, ver);
        except
          on E : Exception do
          begin
            GravaLogAtualizacao('Erro ao atualizar ' + nome + ': ' + E.Message);
            at.Tela_.Fecha;
            MessageDlg('Não foi possível atualizar ' + nome + ' agora.' + #13#10 +
              'O sistema vai abrir normalmente e tenta de novo no próximo login.' + #13#10#13#10 + E.Message,
              mtWarning, [mbOK], 0);
          end;
        end;
      end;
    finally
      SoltaMutex(mutex);
      at.Free;
    end;
  finally
    partes.Free;
  end;
end;

function EnviaImagemServidor(Conexao : TSQLConnection; const Origem : String) : String;
var
  nome, local : String;
  fs : TFileStream;
  v : OleVariant;
  p : Pointer;
  m : TSqlServerMethod;
  ok : Boolean;
begin
  nome := ExtractFileName(Origem);
  local := PastaSistema + PASTA_IMAGENS + '\' + nome;
  ForceDirectories(PastaSistema + PASTA_IMAGENS);

  if not SameText(ExpandFileName(Origem), ExpandFileName(local)) then
  begin
    if FileExists(local) and (ArquivoMD5(local) <> ArquivoMD5(Origem)) then
      if MessageDlg('Já existe na pasta image do sistema um arquivo ' + nome + ' diferente deste ' +
        '(pode ser a imagem de outra empresa).' + #13#10#13#10 + 'Substituir?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        Abort;
    if not CopyFile(PChar(Origem), PChar(local), false) then
      raise Exception.Create('Não foi possível copiar a imagem para ' + local + '.' + #13#10 +
        SysErrorMessage(GetLastError));
  end;

  fs := TFileStream.Create(local, fmOpenRead or fmShareDenyNone);
  try
    v := VarArrayCreate([0, fs.Size - 1], varByte);
    p := VarArrayLock(v);
    try
      fs.ReadBuffer(p^, fs.Size);
    finally
      VarArrayUnlock(v);
    end;
  finally
    fs.Free;
  end;

  m := TSqlServerMethod.Create(nil);
  try
    m.SQLConnection := Conexao;
    m.ServerMethodName := 'TServerMethods1.enviaImagem';
    m.Params[0].AsString := nome;
    m.Params[1].Value := v;
    m.ExecuteMethod;
    ok := m.Params[2].AsBoolean;
  finally
    m.Free;
  end;
  if not ok then
    raise Exception.Create('O servidor não aceitou a imagem ' + nome + ' (use jpg, png, bmp, gif ou ico).');

  result := PASTA_IMAGENS + '\' + nome;
end;

initialization
  ExeInicial := AssinaturaArquivo(Application.ExeName);

end.
