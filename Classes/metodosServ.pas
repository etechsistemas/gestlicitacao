unit metodosServ;

interface
uses
  windows,SysUtils, Classes, Forms, DB, DBClient, ZipForge;

  function ultimo(tabela,campo : String) : integer;
  function ultimoduplic(cliente : integer) : integer;
  function ultimoemp(tabela,campo : String; empresa : integer) : integer;
  procedure ExecSQL(script : string);
  function buscaCep(cep : String): TStringList;
  procedure enviaMail(emailenv, senhaenv, para, cc,cco,prioridade, mensagem, assunto, arquivo, clientserv : String; confirmacao : boolean; codempfat : integer);
  function recuperaSenha(login : String): boolean;
  procedure getfile(caminho, destino : String);
  function pastaserv():String;
  function getversaoserv(pacotes : String = ''):String;
  function getipservidor() : String;
  function atualizaexe():boolean;
  procedure copiaarquivo(origem, destino, pastaserv : String);
  function deletaarq(nomefile : String) : Boolean;
  function verificapendencia(codempfat : integer):String;
  function VerPermissaoEspec(usuario : integer; permissao,tipo : String): Boolean;
  function enviaarq(nomefile : String):boolean;

  implementation

uses DMSistema, UBiblio, DMUsuario, SqlExpr;

procedure getfile(caminho, destino : String);
  var
  Params: TParams;
  Exec: String;
  dest : String;
  extensao, nome : String;
  metodo : TSqlServerMethod;
begin
  //função para enviar arquivos para servidor

  Params := TParams.Create(nil);


  try
    try
      Exec := caminho;
      Params.CreateParam(ftBlob, 'ARQ', ptInput).LoadFromFile(Exec, ftBlob);
      dest := pastaserv()+destino;
      nome := ExtractFileName(caminho);
      // Criado aqui, com a conexão aberta, para trazer do servidor os tipos dos
      // parâmetros. O getFile do DMSistema recebe o nome do método antes de
      // conectar, fica sem esses tipos e, depois de enviar, o Delphi acusava
      // "Field 'arquiv' is of an unsupported type".
      metodo := TSqlServerMethod.Create(nil);
      try
        metodo.SQLConnection := FDMSistema.etechserver;
        metodo.ServerMethodName := 'TServerMethods1.getfile';
        metodo.Params[0].Value := PackageParams(Params);
        metodo.Params[1].AsString := dest;
        metodo.Params[2].AsString := nome;
        metodo.ExecuteMethod;
      finally
        metodo.Free;
      end;
    except

    end;
  finally
    Params.Free;
  end;
end;

function verificapendencia(codempfat : integer):String;
begin
    if (codempfat > 0) then
      FDMSistema.VerificaPendencia.Params[0].AsInteger := codempfat
    else
      FDMSistema.VerificaPendencia.Params[0].AsInteger := 1;
    FDMSistema.VerificaPendencia.ExecuteMethod;
    result := FDMSistema.VerificaPendencia.Params[1].AsString;
end;


function getipservidor() : String;
begin
    if FDMSistema <> nil then
    begin
      FDMSistema.IPServidor.ExecuteMethod;
      result := FDMSistema.IPServidor.Params[0].AsString;
    end;
end;

function VerPermissaoEspec(usuario : integer; permissao,tipo : String): Boolean;
begin
  if tipo = 'GRUPO' then
  begin
    FDMUsuario.QPesqPerfilPermissaoEspec.Close;
    FDMUsuario.QPesqPerfilPermissaoEspec.Params.ParamByName('USUARIO').AsInteger := usuario;
    FDMUsuario.QPesqPerfilPermissaoEspec.Open;

    if FDMUsuario.QPesqPerfilPermissaoEspec.Locate(permissao,'S',[]) then
    begin
      result := true;
    end
    else
    begin
      result := false;
    end;
  end
  else
  begin
    FDMUsuario.QPesqUsuarioPermissaoEspec.Close;
    FDMUsuario.QPesqUsuarioPermissaoEspec.Params.ParamByName('CODIGO').AsInteger := usuario;
    FDMUsuario.QPesqUsuarioPermissaoEspec.Open;

    if FDMUsuario.QPesqUsuarioPermissaoEspec.Locate(permissao,'S',[]) then
    begin
      result := true;
    end
    else
    begin
      result := false;
    end;
  end;
end;

  function ultimoemp(tabela,campo : String; empresa : integer) : integer;
  begin
    FDMSistema.UltimoEmp.Params[0].AsString := tabela;
    FDMSistema.UltimoEmp.Params[1].AsString := campo;
    FDMSistema.UltimoEmp.Params[2].AsInteger := empresa;
    FDMSistema.UltimoEmp.ExecuteMethod;
    result := FDMSistema.UltimoEmp.Params[3].AsInteger;
  end;

procedure copiaarquivo(origem, destino, pastaserv : String);
begin
  fdmsistema.copiaarquivo.params[0].AsString := origem;
  fdmsistema.copiaarquivo.params[1].AsString := Destino;
  fdmsistema.copiaarquivo.params[2].AsString := pastaserv;
  fdmsistema.copiaarquivo.executemethod;
end;

function deletaarq(nomefile : String) : Boolean;
begin

  fdmsistema.DeletaArq.params[0].AsString := nomefile;
  fdmsistema.DeletaArq.executemethod;
  result := fdmsistema.DeletaArq.Params[1].AsBoolean;

end;


function atualizaexe():boolean;
var
  Params: TParams;
  sNovoNome: string;
  FileStream: TFileStream;
begin
  sNovoNome := '';
  Params := TParams.Create(nil);
  try
    fdmsistema.atualizaexe.params[0].AsString := ExtractFileName(Application.ExeName);
    fdmsistema.atualizaexe.executemethod;
    UnPackParams(FDMSistema.atualizaexe.Params[1].Value, Params);
    if Length(Params.ParamByName('ARQ').AsBlob) = 0 then
      raise Exception.Create('Arquivo de atualização '+ExtractFileName(Application.ExeName)+' não encontrado no servidor.');

    if FileExists(Application.ExeName) then
    begin
       sNovoNome := ChangeFileExt(Application.ExeName,'.old'+formatdatetime('yyyymmdd',date));
       {$IFDEF MSWINDOWS} FileSetAttr(ParamStr(0), 0); {$ENDIF}
       if FileExists(sNovoNome) then
        deletefile(sNovoNome);

       RenameFile(Application.ExeName,sNovoNome);
    end;

    try
      FileStream := TFileStream.Create(Application.ExeName, fmCreate);
      try
        FileStream.Write(PChar(Params.ParamByName('ARQ').AsBlob)^, Length(Params.ParamByName('ARQ').AsBlob));
      finally
        FileStream.Free;
      end;
    except
      //nao gravou o exe novo: volta o antigo para o sistema continuar abrindo
      if (sNovoNome <> '') and FileExists(sNovoNome) then
      begin
        DeleteFile(Application.ExeName);
        RenameFile(sNovoNome, Application.ExeName);
      end;
      raise;
    end;
  finally
    Params.Free;
  end;
  result := true;
end;

function enviaarq(nomefile : String):boolean;
var
  Params: TParams;
  FileStream: TFileStream;
begin
//função para receber arquivos do servidor (grava na pasta do sistema)

  result := false;
  Params := TParams.Create(nil);
  try
    fdmsistema.enviaarq.params[0].AsString := nomefile;
    fdmsistema.enviaarq.executemethod;
    UnPackParams(FDMSistema.enviaarq.Params[1].Value, Params);
    FileStream := TFileStream.Create(ExtractFilePath(Application.ExeName)+nomefile, fmCreate);
    try
      FileStream.Write(PChar(Params.ParamByName('ARQ').AsBlob)^, Length(Params.ParamByName('ARQ').AsBlob));
    finally
      FileStream.Free;
    end;
    result := true;
  finally
    Params.Free;
  end;
end;


function pastaserv():String;
begin
    FDMSistema.PastaServ.ExecuteMethod;
    result := FDMSistema.PastaServ.Params[0].AsString;

end;

  function ultimo(tabela,campo : String) : integer;
  begin
    FDMSistema.Ultimo.Params[0].AsString := tabela;
    FDMSistema.Ultimo.Params[1].AsString := campo;
    FDMSistema.Ultimo.ExecuteMethod;
    result := FDMSistema.Ultimo.Params[2].AsInteger;
  end;

  function ultimoduplic(cliente : integer) : integer;
  begin
    FDMSistema.Ultimoduplic.Params[0].Asinteger := cliente;
    FDMSistema.Ultimoduplic.ExecuteMethod;
    result := FDMSistema.Ultimoduplic.Params[1].AsInteger;
  end;

  procedure ExecSQL(script : string);
  begin
    fdmsistema.ExecuteSQL.Params[0].AsString := script;
    fdmsistema.ExecuteSQL.ExecuteMethod;

  end;

  function buscaCep(cep : String): TStringList;
  begin
      fdmsistema.ConsultaCEP.Params[0].AsString := cep;
      fdmsistema.ConsultaCEP.ExecuteMethod;
      result := Split(fdmsistema.ConsultaCEP.Params[1].AsString,'|');
  end;

  function getversaoserv(pacotes : String):String;
  begin
    fdmsistema.getversaoserv.Params.ParamByName('APLIC').AsString := 'GERLIC' + pacotes;
    fdmsistema.getversaoserv.ExecuteMethod;
    result := fdmsistema.getversaoserv.Params[1].Asstring;
  end;

  function recuperaSenha(login : String): boolean;
  begin
      fdmsistema.RecuperaSenha.Params[0].AsString := login;
      fdmsistema.RecuperaSenha.ExecuteMethod;
      result := fdmsistema.RecuperaSenha.Params[1].AsBoolean;
  end;

  procedure enviaMail(emailenv, senhaenv, para, cc,cco,prioridade, mensagem, assunto, arquivo, clientserv : String; confirmacao : boolean; codempfat : integer);
begin
    fdmsistema.EnviaMail.Params[0].AsString := emailenv;
    fdmsistema.EnviaMail.Params[1].AsString := Senhaenv;
    fdmsistema.EnviaMail.Params[2].AsString := para;
    fdmsistema.EnviaMail.Params[3].AsString := cc;
    fdmsistema.EnviaMail.Params[4].AsString := cco;
    fdmsistema.EnviaMail.Params[5].AsString := prioridade;
    fdmsistema.EnviaMail.Params[6].AsString := mensagem;
    fdmsistema.EnviaMail.Params[7].AsString := assunto;
    fdmsistema.EnviaMail.Params[8].AsString := arquivo;
    fdmsistema.EnviaMail.Params[9].AsString := clientserv;
    fdmsistema.EnviaMail.Params[10].AsBoolean := confirmacao;
    fdmsistema.EnviaMail.Params[11].AsInteger := codempfat;
    fdmsistema.EnviaMail.ExecuteMethod;
end;

end.
