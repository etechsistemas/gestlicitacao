unit Arquivos;

interface

uses
  Windows, SysUtils, Classes, shellapi;

function LocalizaTodosArquivos(DirOrigem : string) :  TStringList;
function LocalizaArquivos(DirOrigem,nomearq : string) : string;
Function RecycleBin(sFileName: string): boolean;
function ExtractName(const FileName: String): String;

implementation

function LocalizaTodosArquivos(DirOrigem : string) :  TStringList;
{ Retorna os arquivos da pasta e das subpastas (quem chama libera a lista) }

  procedure busca(pasta : string; lista : TStringList);
  var
    Arquivo : TSearchRec;
  begin
    pasta := IncludeTrailingPathDelimiter(pasta);
    if FindFirst(pasta + '*.*', faAnyFile, Arquivo) = 0 then
    try
      repeat
        // Verifica se é um subdiretório
        if (Arquivo.Attr and faDirectory) = faDirectory then
        begin
          // Verifica se não é diretório pai ('.' ou '..')
          if (Arquivo.Name <> '.') and (Arquivo.Name <> '..') then
            busca(pasta + Arquivo.Name, lista);
        end
        else
          lista.Add(pasta + Arquivo.Name);
      until FindNext(Arquivo) <> 0;
    finally
      FindClose(Arquivo);
    end;
  end;

begin
  Result := TStringList.Create;
  if Trim(DirOrigem) <> '' then
    busca(DirOrigem, Result);
end;

function LocalizaArquivos(DirOrigem,nomearq : string) : string;
{ Retorna o caminho do primeiro arquivo da pasta ou das subpastas cujo nome
  contém nomearq; vazio se não achar }
var
  lista : TStringList;
  i : integer;
begin
  Result := '';
  lista := LocalizaTodosArquivos(DirOrigem);
  try
    for i := 0 to lista.Count - 1 do
      if Pos(nomearq, ExtractFileName(lista[i])) > 0 then
      begin
        Result := lista[i];
        Break;
      end;
  finally
    lista.Free;
  end;
end;

Function RecycleBin(sFileName: string): boolean;
// Envia um arquivo para a lixeira ( requer a unit Shellapi.pas)
var
  fos: TSHFileOpStruct;
  nome: string;
Begin
  // o pFrom é uma lista terminada por dois #0
  nome := sFileName + #0;
  FillChar(fos, Sizeof(fos), 0);
  With fos do
  begin
    wFunc := FO_DELETE;
    pFrom := PChar(nome);
    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
  end;
  Result := (0 = ShFileOperation(fos));
end;

function ExtractName(const FileName: String): String;
{ Retorna o nome do Arquivo sem extensão }
begin
  Result := ChangeFileExt(ExtractFileName(FileName), '');
end;

end.
