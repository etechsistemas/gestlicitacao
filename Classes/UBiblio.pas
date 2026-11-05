unit UBiblio;

interface
uses strutils,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, Buttons, DB, DBCtrls,  DBGrids, Math, IniFiles, Registry, Jpeg, ExtCtrls, TypInfo, WinInet, DateUtils, Variants, Grids, cxGridDBTableView,DBClient,
  cxButtons,cxDBNavigator, WinSock, cxDBLookupComboBox;


Procedure TabEnter(key : char);
Procedure AC;
Procedure DC;
Procedure Ativa();
Procedure Desativa();
procedure AbreTabela(XTabela : TclientDataset);
procedure AbreConsulta(XConsulta : TclientDataset);
procedure ApagaTabela(pTabela:TclientDataset);
procedure Abrir(pTabela: TclientDataset);
Procedure GravaReg(pCab, pChave, pValor:String);
procedure AtivaMenu(pForm : TForm);
procedure DesativaMenu(pForm : TForm);
Function Fechar(Tabela:TclientDataset): Boolean; // Função para evitar que o usuário feche o formulário antes de confirmar ou cancelar
Function SoNumeros(Valor:String): String;
Function AtivaMini(TSheet : TPanel ):Boolean;
Function Split(valor , referencia : string): TStringList;
Function DesativaMini(TSheet : TPanel ):Boolean;
Function Arredondar(Valor: Double; Dec: Integer): Double;
function DataValida(StrD: string): boolean;
Function LastDayOfMonth (Data : TDateTime) : TDateTime;
Function NextMonth (Data : TDateTime) : TDateTime;
Function FirstDayOfMonth (Data : TDateTime) : TDateTime;
Function MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;
Function Informa(mensagem:string):word;
Function Confirma(mensagem:string):word;
Function Editando(Tabela:TclientDataset): Boolean;
function JpgToBmp(cImage: String): Boolean;
Function Digita(pCab, pPerg, pDigitado:String):String;
function DiadaSemana(pData:TDate):String;
function Mes(pData:TDate):String;
function mestonumero(mesestenso : String):integer;
Function VerificaCPF(xcpf:string):Boolean;
Function Extenso(Valor : Extended): String;
Function Espacos(Palavra : String; Tamanho:Integer;pLado : String): String;
Function Zeros(Valor:String; Tamanho : Integer): String;
Function ZerosD(Valor:String; Tamanho : Integer): String;
Function Espaco(Palavra : String; Tamanho:Integer): String;
Function VerificaCGC(num: string): boolean;
function Encrypt( const sStr: String; Key: Word): String;
Function SerialNum(FDrive:String) :String;
Function Maiuscula(tecla:char) :char;
Function SemAcento(tecla:String) :string;
Function MudarVirgula(tecla:String):String;
function CheckUrl(url: string): boolean;
function vpis(Dado: String):boolean;
Function VerMemo(texto : string) :string;
//function arredondaparacima(valor: Double): integer;
Procedure mostrapesq(textoencontrado, key :String; componente :TEdit);
function ChecaForm(aForm: Tform): Boolean;
function FormExiste(aberto: Tform): Boolean;
Function ApagEsp(texto : string) :string;
function TrocaVirgPPto(Valor: string): String;
procedure MudaCor(Sender: TObject);
function NomeComputador(): string;
function virgulaponto(valor : double): string;
function VirgPonto(Valor: string): String; // 13/03/2009
function IsConnectedToInternet: Boolean;
procedure marcaCamposChave(marcar : boolean);
function verificaCampos(tag : integer): boolean;
Function StringToStyle( S: String ): TFontStyles;
Function StyleToString( styles: TFontStyles ): String;
function Arred5(Valor: Double; Dec: Integer): Double;
Function Arredondarcima(value: double;casas : integer): double;
Function Arredondar2(value: double;casas : integer): double;
procedure GravaIni(tag: String; subtag : String; valor: String);
function IpAddress: String;
function ReadIPs: TStrings;
function ValidarEmail(const Email: string): Boolean;
procedure gravalog(e : Exception);
procedure gravalogex(e : Exception; nomearq : String);
procedure gravalogtexto(texto : String; nomearq : String);

//============================================================================//
var
  vForm : Tform;
  Componente: Tcomponent;
  CorComp: TColor;
  UltCtrl: TWinControl;
  UltCor: TColor;
  UltForm: String;
  codigosimp : array of String;

const

C1 = 2132;
C2 = 464656;


procedure LimpaLookupBackspace(Combo: TDBLookupComboBox; Key: Word);
function AbrePesquisa(Classe: TFormClass; var Ref; Combo: TDBLookupComboBox; Campo: TField; Consulta: Boolean = True): Boolean;

implementation

uses  MaskUtils, Principal;

function ValidarEmail(const Email: string): Boolean;
var
  AtPos, DotPos: Integer;
begin
  Result := False;

  // Verifica se o e-mail está vazio
  if Trim(Email) = '' then
    Exit;

  // Encontra a posição do símbolo '@' e do último '.'
  AtPos := Pos('@', Email);
  DotPos := LastDelimiter('.', Email);

  // Verifica se '@' está presente e não é o primeiro ou o último caractere
  if (AtPos > 1) and (AtPos < Length(Email)) then
  begin
    // Verifica se '.' está presente após '@'
    if (DotPos > AtPos + 1) and (DotPos < Length(Email)) then
    begin
      // Verifica se há apenas um '@' no e-mail
      //if PosEx('@', Email, AtPos + 1) = 0 then deativei por poder informar mais de um e-mail
        Result := True;
    end;
  end;
end;

function nomecontroleativo : string;
begin
  if screen.activecontrol <> nil then
    result := screen.activecontrol.name
  else
    result := '';
end;

procedure gravalogtexto(texto : String; nomearq : String);
var
    NomeDoLog: string;
    Arquivo: TextFile;
begin
   NomeDoLog := ChangeFileExt(ExtractFilePath(Application.Exename)+nomearq,'.log');
    AssignFile(Arquivo, NomeDoLog);
    if FileExists(NomeDoLog) then
      Append(Arquivo)
    else
      ReWrite(Arquivo);
    try
      IF screen.activeform <> NIL THEN
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + texto+' - Form: '+screen.activeform.name+' - Controle:'+nomecontroleativo+' - Usuário: '+inttostr(usulogado))
      ELSE
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + texto+' - SEM FORM ATIVO');
//      Application.ShowException(E);
    finally
       CloseFile (Arquivo);
    end;


end;

procedure gravalog(e : Exception);
var
    NomeDoLog: string;
    Arquivo: TextFile;
begin
   NomeDoLog := ChangeFileExt(Application.Exename,'.log');
    AssignFile(Arquivo, NomeDoLog);
    if FileExists(NomeDoLog) then
      Append(Arquivo)
    else
      ReWrite(Arquivo);
    try
      IF screen.activeform <> NIL THEN
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + E.Message+' - Form: '+screen.activeform.name+' - Controle:'+nomecontroleativo+' - Usuário: '+inttostr(usulogado))
      ELSE
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + E.Message+' - SEM FORM ATIVO');
      Application.ShowException(E);
    finally
       CloseFile (Arquivo);
    end;


end;

procedure gravalogex(e : Exception; nomearq : String);
var
    NomeDoLog: string;
    Arquivo: TextFile;
begin
   NomeDoLog := ChangeFileExt(ExtractFilePath(Application.Exename)+nomearq,'.log');
    AssignFile(Arquivo, NomeDoLog);
    if FileExists(NomeDoLog) then
      Append(Arquivo)
    else
      ReWrite(Arquivo);
    try
      IF screen.activeform <> NIL THEN
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + E.Message+' - Form: '+screen.activeform.name+' - Controle:'+nomecontroleativo+' - Usuário: '+inttostr(usulogado))
      ELSE
        WriteLn(Arquivo, DateTimeToStr(Now) + ':' + E.Message+' - SEM FORM ATIVO');
      Application.ShowException(E);
    finally
       CloseFile (Arquivo);
    end;


end;

function mestonumero(mesestenso : String):integer;
var
  mes : integer;
begin
  if mesestenso = 'JANEIRO' then
    begin
      mes := 1;
    end
    else if mesestenso = 'FEVEREIRO' then
    begin
      mes := 2;
    end
    else if mesestenso = 'MARÇO' then
    begin
      mes := 3;
    end
    else if mesestenso = 'ABRIL' then
    begin
      mes := 4;
    end
    else if mesestenso = 'MAIO' then
    begin
      mes := 5;
    end
    else if mesestenso = 'JUNHO' then
    begin
      mes := 6;
    end
    else if mesestenso = 'JULHO' then
    begin
      mes := 7;
    end
    else if mesestenso = 'AGOSTO' then
    begin
      mes := 8;
    end
    else if mesestenso = 'SETEMBRO' then
    begin
      mes := 9;
    end
    else if mesestenso = 'OUTUBRO' then
    begin
      mes := 10;
    end
    else if mesestenso = 'NOVEMBRO' then
    begin
      mes := 11;
    end
    else if mesestenso = 'DEZEMBRO' then
    begin
      mes := 12;
    end;

    result := mes;

end;

procedure GravaIni(tag: String; subtag : String; valor: String);
var
  ArqIni : TIniFile;
begin
    ArqIni := TIniFile.Create((ExtractFilePath(Application.ExeName)+'config.ini'));
    Try
      ArqIni.WriteString(tag, subtag, valor);
    Finally
      ArqIni.Free;
    end;
end;

function IpAddress: String;
var
  iplist : TStrings;
begin
  iplist := ReadIPs;

  if iplist.Count > 0 then
     Result := iplist[0];

  iplist.Free;
end;

function ReadIPs: TStrings;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  Buffer: PAnsiChar;
  iI: Integer;
  PPtr: PaPInAddr;
  pHE: PHostEnt;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);

  Result := TStringList.Create;

  try
    Result.Clear;
    Buffer := '';
    GetHostName(Buffer, SizeOf(Buffer));
    pHE := GetHostByName(buffer);

    if pHE = nil then
       Exit;

     PPtr := PaPInAddr(pHE^.H_Addr_List);
     iI := 0;
     while pPtr^[iI] <> nil do
     begin
       Result.Add(String(Inet_NToA(PPtr^[iI]^)));
       Inc(iI);
     end;
  finally
     WSACleanup;
  end;
end;

//==============================================================================//
procedure TabEnter(key : char);
var  xForm :tform;
begin
  xForm:=Screen.ActiveForm;
//  ShowMessage('"'+key+'"');
   case key of
      #13 :begin
             key:=#0;
             XForm.Perform(WM_NextDlgCtl,0,0); // Tecla ENTER
           end;
      #38 :begin
             key:=#0;
             XForm.Perform(WM_NextDlgCtl,1,0); // Tecla PARA CIMA
           end;
      #26 :begin
             key:=#0;
             XForm.Perform(WM_NextDlgCtl,1,0); // Tecla PARA CIMA
           end;

      #40 :begin
             key:=#0;
             XForm.Perform(WM_NextDlgCtl,0,0); // Tecla PARA BAIXO
           end;
      #28 :begin
             key:=#0;
             XForm.Perform(WM_NextDlgCtl,0,0); // Tecla PARA BAIXO
           end;

      else if key <> #9 Then
        key:=Maiuscula(key);
   end
{  if key =#13 Then
    XForm.Perform(WM_NextDlgCtl,0,0);}
end;
//==============================================================================//


procedure marcaCamposChave(marcar : boolean);
 var
   I: Integer;
   pForm: TForm;
begin
   pForm := Screen.ActiveForm;
   with pForm do
   begin
     for I := 0 to ComponentCount - 1 do
     begin
       if marcar then
       begin
         if (Components[I].ClassType = TdbEdit)  and (TdbEdit(Components[I]).Tag = 1) then
         begin
            TdbEdit(Components[I]).TextHint := 'Campo Obrigatório';
            TdbEdit(Components[I]).Color := clGradientActiveCaption;

         end
         else if (Components[I].ClassType = TDBComboBox)  and (TDBComboBox(Components[I]).Tag = 1) then
         begin
            TDBComboBox(Components[I]).TextHint := 'Campo Obrigatório';
            TDBComboBox(Components[I]).Color := clGradientActiveCaption;
         end
         else if (Components[I].ClassType = TDBLookupComboBox)  and (TDBLookupComboBox(Components[I]).Tag = 1) then
         begin
            TDBLookupComboBox(Components[I]).Color := clGradientActiveCaption;
         end
        else if (Components[I].ClassType = TcxDBLookupComboBox)  and (TcxDBLookupComboBox(Components[I]).Tag = 1) then
         begin
            TcxDBLookupComboBox(Components[I]).Style.Color := clGradientActiveCaption;
         end;
       end
       else
       begin
         if (Components[I].ClassType = TdbEdit)  and (TdbEdit(Components[I]).Tag = 1) then
         begin
            TdbEdit(Components[I]).TextHint := '';
            TdbEdit(Components[I]).Color := clWindow;

         end
         else if (Components[I].ClassType = TDBComboBox)  and (TDBComboBox(Components[I]).Tag = 1) then
         begin
            TDBComboBox(Components[I]).TextHint := '';
            TDBComboBox(Components[I]).Color := clWindow;

         end
         else if (Components[I].ClassType = TDBLookupComboBox)  and (TDBLookupComboBox(Components[I]).Tag = 1) then
         begin
            TDBLookupComboBox(Components[I]).Color := clWindow;
         end
         else if (Components[I].ClassType = TcxDBLookupComboBox)  and (TcxDBLookupComboBox(Components[I]).Tag = 1) then
         begin
            TcxDBLookupComboBox(Components[I]).Style.Color := clWindow;
         end;
       end;

     end;
   end;


end;

function verificaCampos(tag : integer): boolean;
 var
   I: Integer;
   pForm: TForm;
   retorno : boolean;
begin
   retorno := false;
   pForm := Screen.ActiveForm;
   with pForm do
   begin
     for I := 0 to ComponentCount - 1 do
     begin
         if (Components[I].ClassType = TdbEdit)  and (TdbEdit(Components[I]).Tag = 1) and (TdbEdit(Components[I]).Text = '') then
         begin
            if (TdbEdit(Components[I]).Text = '') then
            begin
              TdbEdit(Components[I]).SetFocus;
              TdbEdit(Components[I]).TextHint := 'Campo sem preencher!';
              retorno := true;
            end;
         end
         else if (Components[I].ClassType = TDBComboBox)  and (TDBComboBox(Components[I]).Tag = 1) and (TDBComboBox(Components[I]).Text = '') then
         begin
            if (TDBComboBox(Components[I]).Text = '') then
            begin
              TDBComboBox(Components[I]).SetFocus;
              TDBComboBox(Components[I]).TextHint := 'Campo sem preencher!';
              retorno := true;
            end;
         end
        else if (Components[I].ClassType = TDBLookupComboBox)  and (TDBLookupComboBox(Components[I]).Tag = 1) and (TDBLookupComboBox(Components[I]).Text = '') then
         begin
            if (TDBLookupComboBox(Components[I]).Text = '') then
            begin
              TDBLookupComboBox(Components[I]).SetFocus;
              retorno := true;
            end;
         end
         else if (Components[I].ClassType = TcxDBLookupComboBox)  and (TcxDBLookupComboBox(Components[I]).Tag = 1) and (TcxDBLookupComboBox(Components[I]).Text = '') then
         begin
            if (TcxDBLookupComboBox(Components[I]).Text = '') then
            begin
              TcxDBLookupComboBox(Components[I]).SetFocus;
              retorno := true;
            end;
         end;

       end;
     end;
     result := retorno;
end;


 Procedure Ativa();
var
  I: Integer;
  pForm :tform;
begin

        pForm:= Screen.ActiveForm;
        with pForm do
        begin
          for I := 0 to ComponentCount - 1 do
          begin
            if Components[I] is TButton then
            begin
              if ((TButton(Components[I]).Name = 'BtConfirma') or
                    (TButton(Components[I]).Name = 'BtCancela')) or
                    (((TButton(Components[I]).Name = 'BTInsere') or
                    (TButton(Components[I]).Name = 'BtAltera') or
                    (TButton(Components[I]).Name = 'BtAnalise') or
                    (TButton(Components[I]).Name = 'BtImporta') or
                    (TButton(Components[I]).Name = 'BtProducao'))) or
                ((TButton(Components[I]).Name = 'BtImprime')) then
              begin
                TButton(Components[I]).enabled := False;
              end
              else
                TButton(Components[I]).enabled := True;
            end

            else if Components[I] is TcxButton then
            begin
              if ((TcxButton(Components[I]).Name = 'BtConfirma') or
                    (TcxButton(Components[I]).Name = 'BtCancela')) or
                    (((TcxButton(Components[I]).Name = 'BTInsere') or
                    (TcxButton(Components[I]).Name = 'BtAltera') or
                    (TcxButton(Components[I]).Name = 'BtAnalise') or
                    (TcxButton(Components[I]).Name = 'BtImporta') or
                    (TcxButton(Components[I]).Name = 'BtProducao'))) or
                ((TcxButton(Components[I]).Name = 'BtImprime')) then
              begin
                TcxButton(Components[I]).enabled := False;
              end
              else
                TcxButton(Components[I]).enabled := True;
            end

            else if Components[I] is TSpeedButton then
            begin
              if ((TSpeedButton(Components[I]).Name = 'BtConfirma') or
                    (TSpeedButton(Components[I]).Name = 'BtCancela')) or
                    (((TSpeedButton(Components[I]).Name = 'BTInsere') or
                    (TSpeedButton(Components[I]).Name = 'BtAltera') or
                    (TSpeedButton(Components[I]).Name = 'BtAnalise') or
                    (TSpeedButton(Components[I]).Name = 'BtImporta') or
                    (TSpeedButton(Components[I]).Name = 'BtProducao'))) or
                ((TSpeedButton(Components[I]).Name = 'BtImprime')) then
              begin
                TSpeedButton(Components[I]).enabled := False;
              end
              else
                TSpeedButton(Components[I]).enabled := True;
            end

            else if Components[I] is TBitBtn then
            begin
              if ((TBitBtn(Components[I]).Name = 'BtConfirma') or
                    (TBitBtn(Components[I]).Name = 'BtCancela')) or
                    (((TBitBtn(Components[I]).Name = 'BTInsere') or
                    (TBitBtn(Components[I]).Name = 'BtAltera') or
                    (TBitBtn(Components[I]).Name = 'BtAnalise') or
                    (TBitBtn(Components[I]).Name = 'BtImporta') or
                    (TBitBtn(Components[I]).Name = 'BtProducao'))) or
                ((TBitBtn(Components[I]).Name = 'BtImprime')) then
              begin
                TBitBtn(Components[I]).enabled := False;
              end
              else
                TBitBtn(Components[I]).enabled := True;
            end

            else if Components[I] is TDBNavigator then
            begin
              TDBNavigator(Components[I]).enabled := True;
            end

            else if Components[I] is TcxDBNavigator then
            begin
              TcxDBNavigator(Components[I]).enabled := True;
            end

            else if Components[I] is TPanel then
            begin
              if (TPanel(Components[I]).Name = 'PDados') then
              begin
                TPanel(Components[I]).enabled := False;
              end;
              if (TPanel(Components[I]).Name = 'PGrid') then
              begin
                TPanel(Components[I]).enabled := True;
              end;
              // TPanel(Components[I]).Color:= $0041C0E0;
            end;

          end;
        end;

end;
//==============================================================================//
Procedure Desativa();
var
  I: Integer;
  pForm :tform;
begin
  pForm:=Screen.ActiveForm;
  with pForm do
  begin
    for I := 0 to ComponentCount -1 do
      begin
        if (Components[I] is TButton) then
          begin
            if (TButton(Components[I]).Name = 'BtConfirma') or (TButton(Components[I]).Name = 'BtCancela') or (TButton(Components[I]).Name = 'BtInclui') or (TButton(Components[I]).Name = 'BtIncCont') or (TButton(Components[I]).Hint = 'Inclui uma nova opção') then
             begin
                   TButton(Components[I]).enabled := True;
              end
            else
                TButton(Components[I]).enabled := False;
          end

          else if (Components[I] is TcxButton) then
          begin
            if (TcxButton(Components[I]).Name = 'BtConfirma') or (TcxButton(Components[I]).Name = 'BtCancela') or (TcxButton(Components[I]).Name = 'BtInclui') or (TcxButton(Components[I]).Name = 'BtIncCont') or (TcxButton(Components[I]).Hint = 'Inclui uma nova opção') then
             begin
                   TcxButton(Components[I]).enabled := True;
              end
            else
                TcxButton(Components[I]).enabled := False;
          end

          else if (Components[I] is TSpeedButton) then
          begin
            if (TSpeedButton(Components[I]).Name = 'BtConfirma') or (TSpeedButton(Components[I]).Name = 'BtCancela') or (TSpeedButton(Components[I]).Name = 'BtInclui') or (TSpeedButton(Components[I]).Name = 'BtIncCont') or (TSpeedButton(Components[I]).Hint = 'Inclui uma nova opção') then
             begin
                   TSpeedButton(Components[I]).enabled := True;
              end
            else
                TSpeedButton(Components[I]).enabled := False;
          end

          else if (Components[I] is TBitBtn) then
          begin
            if (TBitBtn(Components[I]).Name = 'BtConfirma') or (TBitBtn(Components[I]).Name = 'BtCancela') or (TBitBtn(Components[I]).Name = 'BtInclui') or (TBitBtn(Components[I]).Name = 'BtIncCont') or (TBitBtn(Components[I]).Hint = 'Inclui uma nova opção') then
             begin
                   TBitBtn(Components[I]).enabled := True;
              end
            else
                TBitBtn(Components[I]).enabled := False;
          end

        else if Components[I] is TDBNavigator then
          begin
            TDBNavigator(Components[I]).enabled := False;
          end

        else if Components[I] is TcxDBNavigator then
          begin
            TcxDBNavigator(Components[I]).enabled := False;
          end

        else if Components[I] is TPanel then
          begin
            if (TPanel(Components[I]).Name = 'PDados') then
              begin
                TPanel(Components[I]).enabled := True;
              end;
            if (TPanel(Components[I]).Name = 'PGrid') then
              begin
                TPanel(Components[I]).enabled := False;
              end;
          end;

      end;
   end;
end;
//==============================================================================//

Function AtivaMini(TSheet : TPanel ):Boolean;
var
  I: Integer;
begin
    TSheet.Enabled:=True;
    with Screen.ActiveForm do
       BEGIN
            for I := 0 to ComponentCount -1 do
              begin
                 if Components[I] is TButton then
                   BEGIN
                      if ((TBitBtn(Components[I]).Caption = 'C&onfirmar') or (TBitBtn(Components[I]).Caption = '&Cancelar')) {and (TSheet.ContainsControl(TButton(Components[I]))) }then
                        begin
                           TBitBtn(Components[I]).enabled := False;
                        end
                      else
                        begin
                          if ((TBitBtn(Components[I]).Caption = '&Incluir') or (TBitBtn(Components[I]).Caption = '&Alterar')){or (TBitBtn(Components[I]).Caption = '&Excluir') or (TBitBtn(Components[I]).Caption = '&Imprimir')) and (TSheet.ContainsControl(TButton(Components[I]))) }then
                              begin
                                    TBitBtn(Components[I]).enabled := True;
                              end;
                        end;
                    END;
                  if (Components[I] is TDBNavigator) and (TDBNavigator(Components[I]).Name<>'Navegador') and (TSheet.ContainsControl(TButton(Components[I]))) then
                    begin
                        TDBNavigator(Components[I]).enabled := True;
                    end;
              end;
        END;
end;
//==============================================================================//
Function DesativaMini(TSheet : TPanel ):Boolean;
var
  I: Integer;
begin
  TSheet.Enabled:=True;
  with Screen.ActiveForm do
      BEGIN
        for I := 0 to ComponentCount -1 do
          begin
           if Components[I] is TButton then
              BEGIN
                  if ((TBitBtn(Components[I]).Caption = 'C&onfirmar') or (TBitBtn(Components[I]).Caption = '&Cancelar')) {and (TSheet.ContainsControl(TButton(Components[I]))) }then
                      begin
                         TBitBtn(Components[I]).enabled := True;
                      end
                  else
                      begin
                          if ((TBitBtn(Components[I]).Caption = '&Incluir') or (TBitBtn(Components[I]).Caption = '&Alterar')){ or (TBitBtn(Components[I]).Caption = '&Excluir')or (TBitBtn(Components[I]).Caption = '&Imprimir'))}{ and (TSheet.ContainsControl(TButton(Components[I]))) }then
                              begin
                                  TBitBtn(Components[I]).enabled := False;
                              end;
                      end;
              END;
            if (Components[I] is TDBNavigator) and (TSheet.ContainsControl(TButton(Components[I]))) then
              begin
                    TDBNavigator(Components[I]).enabled := False;
              end;
          end;
      END;
end;

//=================================================//
function Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
  Numero1,
  Numero2,
  Numero3,
  Total: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Total:=(Numero3 / (Exp(Ln(10) * Dec)));
  Result:=Total;
end;
//=================================================//
function DataValida(StrD: string): Boolean;
{Testa se uma data é valida}
begin
  Result := true;
  try
    StrToDate(StrD);
  except  on EConvertError do
    begin
      ShowMessage ('Data Inválida!');
      Result:=False;
    end;
  end;
end;
//=================================================//
{Retorna data do primeiro dia do mês, ou primeiro dia útil, de uma data informada}
Function FirstDayOfMonth (Data : TDateTime) : TDateTime;
var Ano, Mes, Dia : word;    DiaDaSemana   : Integer;
begin
   DecodeDate (Data, Ano, Mes, Dia);
   Dia := 1;
  { if lSabDom Then
   begin
        DiaDaSemana := DayOfWeek (Data);
        if DiaDaSemana = 1 Then
           Dia := 2
        else  if DiaDaSemana = 7 Then
           Dia := 3;
   end;}
        FirstDayOfMonth := EncodeDate (Ano, Mes, Dia);
   end;
//=====================================================================//
{Retorna uma data no Mês seguinte a uma data informada}
Function NextMonth (Data : TDateTime) : TDateTime;
var
  Ano, Mes, Dia : word;
begin
  DecodeDate(Data, Ano, Mes, Dia);
  if Mes = 12 Then
    begin
      Mes := 1;
      Inc (Ano);
    end
  else
    Inc (Mes);
  Result := encodedate(ano,mes,dia);//MenorDataValida (Ano, Mes, Dia);
end;
//=================================================//
{ Esta função retorna true se a data passada como parâmetro é fim de mês. Retorna false caso contrário. }
Function LastDayOfMonth (Data : TDateTime) : TDateTime;
var
  Ano, Mes, Dia : word;
  AuxData : TDateTime;
  DiaDaSemana : Integer;
begin
  //ShowMessage('a '+DateToStr(NextMonth (Data)));
  DecodeDate(data, ano, mes, dia);
  if Mes = 12 Then
    begin
      Mes := 1;
      Inc (Ano);
    end
  else
    Inc (Mes);

  AuxData := EncodeDate(ano,mes,01)-1;

//  AuxData := FirstDayOfMonth (NextMonth (Data)) - 1;

{if lSabDom Then
  begin
    DecodeDate (Auxdata, Ano, Mes, Dia);
    DiaDaSemana := DayOfWeek (AuxData);
    if DiaDaSemana = 1 Then
      Dia := Dia - 2
    else if DiaDaSemana = 7 Then
      Dec (Dia);
    AuxData := EnCodeDate (Ano, Mes, Dia);
  end;  }
 LastDayOfMonth := AuxData;
end;
//=================================================//
{Retorna a maior data anterior a uma data inválida}
Function MenorDataValida (Ano, Mes, Dia : Word) : TDateTime;
Var
  Continua : Boolean;
  DataAux  : TDateTime;
  begin
    Continua := True;
    DataAux  := date;
    while Continua do
      Try
        DataAux := EncodeDate (Ano, Mes, Dia);
        Continua := False;
      Except
        Dec (Dia);
      End;
    MenorDataValida := DataAux;
  end;
//==================================================================//
Procedure AC;
Begin
  Screen.Cursor := crHourGlass;
End;

Procedure DC;
Begin
  Screen.Cursor := crDefault;
End;

Function Informa(mensagem:string):word;
begin
     result := MessageDlg(mensagem,MtInformation,[mbOk],0);
end;

Function Confirma(mensagem:string):word;
begin
     result := MessageDlg(mensagem,MtConfirmation,[mbYes,mbNo],0);
end;

Function Editando(Tabela:TclientDataset): Boolean;
begin
   if Tabela.State in [Dsinsert, DsEdit] then
      Result := True
   else
     begin
      Result := False;
     end
end;
function JpgToBmp(cImage: String): Boolean;
// Requer a Jpeg declarada na clausua uses da unit
var
MyJPEG : TJPEGImage;
MyBMP : TBitmap;
begin
Result := False;
if fileExists(cImage+'.Jpg') then
  begin
  MyJPEG := TJPEGImage.Create;
  with MyJPEG do
  begin
  try
  LoadFromFile(cImage+'.Jpg');
  MyBMP := TBitmap.Create;
  with MyBMP do
  begin
  Width := MyJPEG.Width;
  Height := MyJPEG.Height;
  Canvas.Draw(0,0,MyJPEG);
  SaveToFile(cImage+'.Bmp');
  Free;
  Result := True;
  end;
  finally
  Free;
  end;
  end;
  end;
end;

procedure AbreTabela(XTabela : TclientDataset);
begin
   //try
      AC;
      if XTabela.Active = false then
        XTabela.Open
      else
        XTabela.Refresh;
      DC;
   {except
      On EZDatabaseError do
        begin
         Informa('Erro na tabela '+ XTabela.Name);
         DC;
         raise ;
        end;
   end;}
end;

procedure AbreConsulta(XConsulta : TclientDataset);
begin
   try
      AC;
      XConsulta.Close;
      XConsulta.Open;
      DC;
   except
         begin
         Informa('Erro na Consulta '+ XConsulta.Name);
         DC;
         raise ;
        end;
   end;
end;

Function SoNumeros(Valor:String): String;
var
  i : integer;
  Caracter,XValor : String;
begin
   I := 1;
   XValor := '';
   while I < (Length(Valor)+1) do
     begin
       Caracter := Copy(Valor,I,1);
       If (Caracter <> ',') and (Caracter <> '.') and (Caracter <> '-') and (Caracter <> '/') and (Caracter <> '(') and (Caracter <> ')') and (Caracter <> ' ')then
          XValor := XValor + Caracter;
       I := I + 1;
     end;
   Result := XValor;
end;


Function Digita(pCab, pPerg, pDigitado:String):String;
var
  ClickedOK: Boolean;
begin
  ClickedOK := InputQuery(pCab, pPerg, pDigitado);
  if ClickedOK
  then Result := pDigitado
  Else Result := '';
end;

function DiadaSemana(pData:TDate):String;
begin
   case DayOfWeek(pData)of
   1: Result := 'DOMINGO';
   2: Result := 'SEGUNDA-FEIRA';
   3: Result := 'TERÇA-FEIRA';
   4: Result := 'QUARTA-FEIRA';
   5: Result := 'QUINTA-FEIRA';
   6: Result := 'SEXTA-FEIRA';
   7: Result := 'SÁBADO';
   end;

end;

function Mes(pData:TDate):String;
begin
   case MonthOf(pData)of
   1: Result := 'JANEIRO';
   2: Result := 'FEVEREIRO';
   3: Result := 'MARÇO';
   4: Result := 'ABRIL';
   5: Result := 'MAIO';
   6: Result := 'JUNHO';
   7: Result := 'JULHO';
   8: Result := 'AGOSTO';
   9: Result := 'SETEMBRO';
   10: Result := 'OUTUBRO';
   11: Result := 'NOVEMBRO';
   12: Result := 'DEZEMBRO';
   end;

end;

procedure ApagaTabela(pTabela:TclientDataset);
begin
  while pTabela.RecordCount > 0 do
     pTabela.Delete;
end;

Procedure GravaReg(pCab, pChave, pValor:String);
var
   reg: TRegIniFile;
begin
   reg := TRegIniFile.create('SOFTWARE\LEGIO\');
   try
      reg.WriteString(pCab,pChave,pValor);
   finally
      reg.free;
   end;
end;

Function VerificaCPF(xcpf:string):Boolean;
var
   CPF1,CPF2,Controle : String;
   Soma, Digito,i,j,ContIni,ContFim : integer;
begin
   CPF1 := copy(xcpf,1,9);
   CPF2 := copy(xcpf,10,2);
   Controle := '';
   ContIni := 2;
   ContFim := 10;
   Digito := 0;
   For j := 1 to 2 do
      begin
        Soma := 0;
        For i := ContIni to ContFim do
          begin
            Soma := Soma + (StrToInt(copy(cpf1,i-j,1)) * (ContFim+1+j-i));
          end;
        if j = 2 then
           Begin
             Soma := Soma + (2*Digito);
           End;
        digito := (Soma * 10) mod 11;
        if digito = 10 then
          begin
            digito := 0;
          end;
        Controle := Controle + inttoStr(digito);
        ContIni := 3;
        ContFim := 11
      end;
      if controle <> CPF2 then
         Begin
           ShowMessage('CPF Inválido');
           result := false;
         End
      Else
           result := true;
end;




//####################### RETORNA O EXTENSO DE UM VALOR
function Extenso(Valor : Extended): String;
var
Centavos, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
Unidades: array [1..9] of string = ('um', 'dois', 'três', 'quatro',
'cinco','seis', 'sete', 'oito','nove');
Dez : array [1..9] of string = ('onze', 'doze', 'treze',
'quatorze', 'quinze','dezesseis', 'dezessete','dezoito', 'dezenove');
Dezenas: array [1..9] of string = ('dez', 'vinte', 'trinta',
'quarenta', 'cinquenta','sessenta', 'setenta','oitenta', 'noventa');
Centenas: array [1..9] of string = ('cento', 'duzentos',
'trezentos', 'quatrocentos', 'quinhentos', 'seiscentos','setecentos',
'oitocentos', 'novecentos');

function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:
String): String;
begin
  if Expressao then Result := CasoVerdadeiro else Result := CasoFalso;
end;

function MiniExtenso( Valor: ShortString ): string;
var Unidade, Dezena, Centena: String;
begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
        begin
          Unidade := Dez[StrToInt(Valor[3])];
          Dezena := '';
        end
    else
      begin
          if Valor[2] <> '0' then Dezena :=  Dezenas[StrToInt(Valor[2])];
          if Valor[3] <> '0' then unidade :=  Unidades[StrToInt(Valor[3])];
      end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      Centena := 'cem'
    else
      if Valor[1] <> '0' then
         Centena := Centenas[StrToInt(Valor[1])]
      else
         Centena := '';
    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or (Unidade <> '')),' e ', '') + Dezena +
    ifs( (Dezena <> '') and (Unidade <> ''), ' e ', '')+ Unidade;
end;

BEGIN
if Valor = 0 then
  begin
    Result := '';
    Exit;
  end;
Texto := FormatFloat( '000000000000.00', Valor );
Centavos := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
Centena := MiniExtenso( Copy( Texto, 10, 3 ) );
Milhar := MiniExtenso( Copy( Texto, 7, 3 ) );
if Milhar <> '' then
  Milhar := Milhar + ' mil';
Milhao := MiniExtenso( Copy( Texto, 4, 3 ) );
if Milhao <> '' then
  Milhao := Milhao + ifs( Copy( Texto, 4, 3 ) = '001', ' milhão',' milhões');
Bilhao := MiniExtenso( Copy( Texto, 1, 3 ) );
if Bilhao <> '' then
  Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',' bilhões');
if (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
  Result := Bilhao + ' de reais'
else if (Milhao <> '') and (Milhar + Centena = '') then
  Result := Milhao + ' de reais'
else
  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar + Centena <> ''),ifs((Pos(' e ', Bilhao) > 0) or
(Pos( ' e ', Milhao + Milhar + Centena ) > 0
), ', ', ' e '), '')
+
Milhao +
ifs( (Milhao <> '') and (Milhar + Centena <> ''),
ifs((Pos(' e ', Milhao) > 0) or
(Pos( ' e ', Milhar + Centena ) > 0 ), ', ',
' e '), '') +
Milhar +
ifs( (Milhar <> '') and (Centena <> ''),
ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '), '')
+
Centena + ifs( Int(Valor) = 1, ' real', ' reais' );
if Centavos <> '' then
Result := Result + ' e ' + Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' centavo', ' centavos' );
END;

// Verifica se a tabela estiver fechada, o procedimento abre-a
procedure Abrir(pTabela: TclientDataset);
begin
    if PTabela.State = dsInactive then
       pTabela.Open;
end;

Function Espacos(Palavra : String; Tamanho:Integer;pLado : String): String;
//pLado = Espaços a direita ou a esquerda
begin
  Palavra := Copy(Palavra,1,Tamanho);
  while Length(Palavra) < Tamanho do
    begin
      if pLado = 'D'
      then Palavra := Palavra + ' '
      else Palavra := ' ' + Palavra;
    end;
  Result := Palavra;
end;



Function Zeros(Valor:String; Tamanho : Integer): String;
var
  i : integer;
  Caracter,XValor : String;
begin
   I := 1;
   XValor := '';
   while I < (Length(Valor)+1) do
     begin
       Caracter := Copy(Valor,I,1);
       If Caracter <> ',' then
          XValor := XValor + Caracter;
       I := I + 1;
     end;
   if length(XValor) < Tamanho then
      begin
        while Length(XValor) < Tamanho do
           XValor := '0'+ Xvalor;
      end
   else  xValor := Copy(xValor,1,Tamanho);
   Result := XValor;
end;

Function ZerosD(Valor:String; Tamanho : Integer): String;
var
  i : integer;
  Caracter,XValor : String;
begin
   I := 1;
   XValor := '';
   while I < (Length(Valor)+1) do
     begin
       Caracter := Copy(Valor,I,1);
       If Caracter <> ',' then
          XValor := XValor + Caracter;
       I := I + 1;
     end;
   if length(XValor) < Tamanho then
      begin
        while Length(XValor) < Tamanho do
           XValor :=  Xvalor+'0';
      end
   else  xValor := Copy(xValor,1,Tamanho);
   Result := XValor;
end;

Function Espaco(Palavra : String; Tamanho:Integer): String;
begin
  Palavra := Copy(Palavra,1,Tamanho);
  while Length(Palavra) < Tamanho do
    begin
      Palavra := Palavra + ' ';
    end;
  Result := Palavra;
end;

procedure AtivaMenu(pForm : TForm);
var
  I: Integer;
begin
     with pForm do
     begin
          for I := 0 to ComponentCount -1
          do begin
             if Components[I] is TSpeedButton
             then begin
                  if ((TSpeedButton(Components[I]).Name = 'BtConfirma') or (TSpeedButton(Components[I]).Name = 'BtCancela'))
                  then begin
                       TSpeedButton(Components[I]).enabled := False;
                       end
                  else TSpeedButton(Components[I]).enabled := True;
                  end;

             if Components[I] is TMenuItem
             then begin
                  if ((TMenuItem(Components[I]).Name = 'MConfirma') or (TMenuItem(Components[I]).Name = 'MCancela'))
                  then begin
                       TMenuItem(Components[I]).enabled := false;
                       end
                  else TMenuItem(Components[I]).enabled := True;
                  if TMenuItem(Components[I]).Name = 'MOpcoes' then
                     TMenuItem(Components[I]).enabled := True;
                 end;
        end;
     end;
end;

procedure DesativaMenu(pForm : TForm);
var
  I: Integer;
begin
     with pForm do
     begin
          for I := 0 to ComponentCount -1
          do begin
             if Components[I] is TSpeedButton
             then begin
                  if ((TSpeedButton(Components[I]).Name = 'BtConfirma') or (TSpeedButton(Components[I]).Name = 'BtCancela'))
                  then begin
                       TSpeedButton(Components[I]).enabled := True;
                       end
                  else TSpeedButton(Components[I]).enabled := False;
                  end;
             if Components[I] is TMenuItem
             then begin
                  if ((TMenuItem(Components[I]).Name = 'MConfirma') or (TMenuItem(Components[I]).Name = 'MCancela'))
                  then begin
                       TMenuItem(Components[I]).enabled := True;
                       end
                  else TMenuItem(Components[I]).enabled := False;
                  if (TMenuItem(Components[I]).Name='MOpcoes')or(TMenuItem(Components[I]).Name='MArquivo')or(TMenuItem(Components[I]).Name='MConsultas') then
                     TMenuItem(Components[I]).enabled := True;
                  end;
        end;
     end;
end;


Function Fechar(Tabela:TclientDataset): Boolean;
begin
   if Tabela.State in [Dsinsert, DsEdit] then
     begin
        Informa('Não pode fechar este formulário pois você ainda está editando um registro...');
        Result := False;
     end
   else
     Result := True;
end;

Function VerificaCGC(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 n10:=StrToInt(num[10]);
 n11:=StrToInt(num[11]);
 n12:=StrToInt(num[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[13]+num[14];
 if calculado=digitado then
   result:=true
  else
    begin
      informa('CGC inválido');
      result:=false;
    end;
end;

function Encrypt( const sStr: String; Key: Word): String;
(************************************************************)
var
    I: LongInt;
begin
    Result := sStr;
    for I := 1 to Length(sStr) do begin
        Result[I] := Char(Byte(sStr[I]) xor (Key shr 8));
        Key := (Byte(sStr[I]) + Key) * C1 + C2;
    end;
end;

Function SerialNum(FDrive:String) :String;
var
   Serial: DWord;
   DirLen, Flags: DWord;
   DLabel : Array[0..11] of Char;
begin
   Try
     GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
     Result := IntToHex(Serial,8);
   Except
     Result := '';
   end;
end;

function TrocaVirgPPto(Valor: string): String; // 13/03/2009
   var i:integer;
begin
    if Valor <> '' then begin
        for i := 1 to Length(Valor) do begin
            if Valor[i]='.' then begin
                Valor[i]:=',';
            end
            else if Valor[i] = ',' then begin
                Valor[i]:='.';
            end;
        end;
     end;
     Result := valor;
end;

Function Maiuscula(tecla:char) :char;
var
   minuscula,maiuscul : string;
begin
   minuscula:='áãàèéëêìíïÒóõùúüçñ';
   maiuscul:='ÁÃÁÈÉËÊÌÍÏÒÓÕÙÚÜÇÑ';
   if pos(tecla,minuscula)>0 Then
     result:=Maiuscul[pos(tecla,minuscula)]
   else
     result:=UpCase(tecla);
end;

Function SemAcento(tecla:String):String; // 13/03/2009 GUILHERME
var
  i : integer;
  Caracter,XValor : String;
  acento, sacento : string;
begin
  I := 1;
  XValor := '';
  while I < (Length(tecla)+1) do
  begin
    Caracter := Copy(tecla,I,1);
    If (Caracter = 'Á') OR (Caracter = 'Ã') OR (Caracter = 'Â') or (Caracter = 'È') OR (Caracter = 'É') OR (Caracter = 'Ë') OR (Caracter = 'Ê') or (Caracter = 'Ì')
    OR (Caracter = 'Í') OR (Caracter = 'Ï') or (Caracter = 'Ò') OR (Caracter = 'Õ') OR (Caracter = 'Ó') or (Caracter = 'Ù') OR (Caracter = 'Ü')
    OR (Caracter = 'Ú') or (Caracter = 'Ç') or (Caracter = 'Ñ') or (caracter = 'º') or (Caracter = 'ç')then
    begin
      If (Caracter = 'Á') OR (Caracter = 'Ã') OR (Caracter = 'Â') then XValor := XValor + 'A'
      else If (Caracter = 'È') OR (Caracter = 'É') OR (Caracter = 'Ë') OR (Caracter = 'Ê')then XValor := XValor + 'E'
      else If (Caracter = 'Ì') OR (Caracter = 'Í') OR (Caracter = 'Ï')then XValor := XValor + 'I'
      else If (Caracter = 'Ò') OR (Caracter = 'Õ') OR (Caracter = 'Ó')then XValor := XValor + 'O'
      else If (Caracter = 'Ù') OR (Caracter = 'Ü') OR (Caracter = 'Ú')then XValor := XValor + 'U'
      else If (Caracter = 'Ç') or (Caracter = 'ç')then XValor := XValor + 'C'
      else If (Caracter = 'Ñ')then XValor := XValor + 'N'
      else If (Caracter = 'º')then XValor := XValor + '';
    end
    else
      XValor := XValor + caracter;
       I := I + 1;
     end;
   Result := XValor;
end;

Function MudarVirgula(tecla:String):String; // 13/03/2009 GUILHERME
var
  i : integer;
  Caracter,XValor : String;
  acento, sacento : string;
begin
  I := 1;
  XValor := '';
  while I < (Length(tecla)+1) do
  begin
    Caracter := Copy(tecla,I,1);
    If (Caracter = ',')then
    begin
      XValor := XValor + '.';
    end
    else
      XValor := XValor + caracter;
       I := I + 1;
     end;
   Result := XValor;
end;


function CheckUrl(url: string): boolean;
var
  hSession, hfile, hRequest: hInternet;
  dwindex, dwcodelen: dword;
  dwcode: array[1..20] of char;
  res: pchar;
begin
  if pos('http://', lowercase(url)) = 0 then
    url := 'http://' + url;
  Result := false;
  hSession := InternetOpen('InetURL:/1.0', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if assigned(hsession) then
  begin
    hfile := InternetOpenUrl(hsession, pchar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex := 0;
    dwCodeLen := 10;
    HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE, @dwcode, dwcodeLen, dwIndex);
    res := pchar(@dwcode);
    result := (res = '200') or (res = '302');
    if assigned(hfile) then
      InternetCloseHandle(hfile);
    InternetCloseHandle(hsession);
  end;
end;

function vpis(Dado: String):boolean;
var
i,wsoma,wm11,wdv,wdigito: integer;
begin
  vpis := false;
  if (length(Dado)<>11) then
    begin
      Application.MessageBox('Valor informado não é válido!', 'Atenção!', mb_IconStop+mb_ok);
      vpis := false;
    end
  else if (Trim(Dado) <> '') then
    begin
      wdv := StrToInt(copy(Dado,11,1));
      wsoma := 0;
      wm11 := 2;
      for i := 1 to 10 do
        begin
          wsoma := wsoma + (wm11 * StrToInt(Copy(Dado,11 -i, 1)));
          if wm11 < 9 then
            wm11 := wm11+1
          else
            wm11 := 2;
        end;
      wdigito := 11 - (wsoma mod 11);
      if wdigito > 9 then
        wdigito := 0;
      if (wdv = wdigito) then
        begin
      //    Application.MessageBox('Valor válido!','Aviso !', mb_IconStop+mb_ok);
          vpis := True;
        end
      else
        begin
          Application.MessageBox('Valor informado não é válido!', 'Atenção!', mb_IconStop+mb_ok);
          vpis := false;
        end;
    end;
end;

Function VerMemo(texto : string) :string;
begin
   if Length(texto)>0 Then
     begin
       while (texto[1]=#13) or (texto[1]=#10) do
         texto[1] := DefaultBlank;

       end;

   Result := texto;
end;
{
function arredondaparacima(valor: Double): integer;
begin
   if Trunc(Valor) <> valor then
     Result:= trunc(valor)+1
   else
     Result:= trunc(valor);
end;
}
Procedure mostrapesq(textoencontrado, key :String; componente :TEdit);
var textopesq : string;
begin
   textopesq := copy(componente.Text,1,componente.SelStart)+key;
   componente.Text:=textoencontrado;
   componente.SelStart:=Length(textopesq);
   componente.SelLength:=Length(textoencontrado);
end;

Function ApagEsp(texto : string) :string;
begin
   while copy(texto,length(texto),1) = ' ' do
      texto := copy(texto,1,length(texto)-1);
   while copy(texto,1,1) = ' ' do
      texto := copy(texto,2,length(texto));
   Result := texto;
end;

Function Split(valor , referencia : string): TStringList;
var
  resultado : TStringList;
  i : integer;
begin
       resultado := TStringList.Create;
       while pos(referencia,valor) > 0 do
       begin
           resultado.Append(trim(copy(valor,1,pos(referencia,valor)-1)));
           valor := copy(valor,pos(referencia,valor)+length(referencia),length(vALOR));
       end;
       if valor <> '' then
          resultado.Append(trim(valor));

       result := resultado;
end;

//Procedure que Muda a cor dos componentes focados
procedure MudaCor(Sender: TObject);
begin
  if Assigned(Componente) then
    TEdit(Componente).Color := CorComp; //cor original do componente

  if (Screen.ActiveControl <> nil) and (IsPublishedProp(Screen.ActiveControl, 'Color')) then
  begin
    CorComp := TEdit(Screen.ActiveControl).Color;
    TEdit(Screen.ActiveControl).Color := $00C2F9FC; // cor com foco
    Componente := Screen.ActiveControl;
  end;
end;


function NomeComputador(): string;
var
  buffer : array[0..255] of char;
  size : dword;
  UserName: String;
  ComputerName: String;
begin
  size := 256;
  GetUserName(buffer, size);
  UserName := buffer;
  size := MAX_COMPUTERNAME_LENGTH + 1;
  GetComputerName(buffer, size);
  ComputerName := buffer;
  {ShowMessage('Usuário: ' + UserName + #13 +
     'Nome do Computador: '+ComputerName);}
  Result := ComputerName;
end;

function virgulaponto(valor : double): string;
begin
  Result := StringReplace(FloatToStr(valor),',','.', [rfReplaceAll, rfIgnoreCase]);
end;



function VirgPonto(Valor: string): String; // 13/03/2009
   var i:integer;
begin
    if Valor <> '' then begin
        for i := 1 to Length(Valor) do begin
            if Valor[i]='.' then begin
                Valor[i]:=',';
            end
            else if Valor[i] = ',' then begin
                Valor[i]:='.';
            end;
        end;
     end;
     Result := valor;
end;

function ChecaForm(aForm: Tform): Boolean;
var
I:Integer;
begin
    ChecaForm := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aForm then
    begin
    ChecaForm := true;
    Break;
    end;
end;  (* ChecaForm *)

function FormExiste(aberto: Tform): Boolean;
var
I:Integer;
begin
    FormExiste := false;
    for I := 0 to Screen.FormCount -1 do
    if Screen.Forms[i] = aberto then
    begin
    FormExiste := true;
    Break;
    end
end;

function IsConnectedToInternet: Boolean;
var
  dwConnectionTypes: Integer;
begin
  try
    dwConnectionTypes := INTERNET_CONNECTION_MODEM +
    INTERNET_CONNECTION_LAN +
    INTERNET_CONNECTION_PROXY;
    if InternetGetConnectedState(@dwConnectionTypes, 0) then
      Result := true
  else
    Result := false;
  except
    Result := false;
  end;
end;

Function StyleToString( styles: TFontStyles ): String;
var
style: TFontStyle;
Begin
Result := '[';
For style := Low(style) To High(style) Do
  Begin
    If style IN styles Then
    Begin
      If Length(result) > 1 Then
        result := result + ',';
      result := result + GetEnumname(typeInfo(TFontStyle), Ord(style));
    End; { If }
  End; { For }
  result := result + ']';
End; { StyleToString }

Function StringToStyle(S: String): TFontStyles;
Var
  sl: TStringList;
  style: TFontStyle;
  I: Integer;
Begin
  result := [];
  If Length(S) < 2 Then
    Exit;

  If S[1] = '[' Then
    Delete(S, 1, 1);
  If S[Length(S)] = ']' Then
    Delete(S, Length(S), 1);

  If Length(S) = 0 Then
    Exit;

  sl := TStringList.Create;
  try
    sl.commatext := S;
    For I := 0 To sl.Count - 1 Do
    Begin
      try
        style := TFontStyle(GetEnumValue(typeInfo(TFontStyle), sl[I]));
        Include(result, style);
      except
      end;
    End; { For }
  finally
    sl.Free
  end;
End; { StringToStyle }

function Arred5(Valor: Double; Dec: Integer): Double;
var
  Valor1,Numero1,Numero2,Numero3,tot: Double;
  tx1,tx2 : string;
  a : TStringList;
begin
  if Valor > 0 then
  begin
    if Arredondar2(valor,dec) <= (valor - (valor * 0.05))then
    begin{
      a := Split(floattostr(valor),',');
      tx1 := a[0];
      tx2 := a[1];

      tx2 := Copy(tx2,1,dec);
      Valor1 := StrToFloat(tx1+','+tx2);
      if dec = 0 then
      begin
        Result := Valor1 + 1;
      end;
      if dec = 1 then
      begin
        Result := Valor1 + 0.1;
      end;
      if dec = 2 then
      begin
        Result := Valor1 + 0.01;
      end;
      if dec = 3 then
      begin
        Result := Valor1 + 0.001;
      end;
      if dec = 4 then
      begin
        Result := Valor1 + 0.0001;
      end;}
      tot := Arredondarcima(Valor,dec);
      Result := tot;
    end
    else
    begin
      tot := Arredondar2(valor,dec);
      Result := tot;
    end;
  end
  else
    result := 0;
end;

Function Arredondarcima(value: double;casas : integer): double;
var
  fator, valor : Extended;
begin
  fator := IntPower(10, casas);
  //arredonda antes a 6 casas para o residuo de ponto flutuante nao subir o valor (ex.: 1,1 * 100 = 110,00000000001)
  valor := SimpleRoundTo(value * fator, -6);
  if Frac(valor) > 0 then
    valor := Int(valor) + 1
  else
    valor := Int(valor);
  result := valor / fator;
end;

Function Arredondar2(value: double;casas : integer): double;
Var
    fracao, Total, tot:real;
    decimal, mult :string;
    i, poszero: integer;
begin
   try
   fracao:=Frac(value); //Retorna a parte fracionária de um número
   decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2));
   //decimal recebe a parte decimal
   //Enquanto o tamanho da variavel decimal for maior que o número de casas faça
    while length(decimal) > casas do
    begin
      //Descarta o último digito da variável Decimal
      //decimal:=leftstr(decimal,length(decimal)-1);
      //Soma o valor número da variavel decimal + 1

      poszero := length(decimal)-1;
      if (strtofloat(copy(decimal,length(decimal),length(decimal))) >= 5) then
      begin
        decimal := floattostr(strtofloat(leftstr(decimal,length(decimal)-1)) + 1);
        if poszero = length(decimal)-1 then
        begin
          value := value + 1;
          decimal :=  floattostr(strtofloat(RightStr(decimal,length(decimal)-1)));
        end;
      end
      else
      begin
        {if (strtofloat(copy(decimal,length(decimal)-1,length(decimal))) > 0) then
          decimal := floattostr(strtofloat(leftstr(decimal,length(decimal)-1)) - 1)
        else}
          decimal := floattostr(strtofloat(leftstr(decimal,length(decimal)-1)));
      end;

      decimal := Zeros(decimal,poszero);
    end;
   mult := '1';
   i:= 0;

   if length(decimal) < casas then
     i := casas - length(decimal);

   while i < casas do
   begin
    mult := mult + '0';
    inc(i);
   end;
   tot := 0;
   if length(decimal) > 0 then
   begin
     tot := (int(value) + (strtofloat(decimal)/strtoint(mult))); //devolve o resultado para a função
     result:=tot;
   end
   else
   begin
     tot := (int(value));
     result:=tot;
   end;
except
Raise Exception.Create('Erro no arredondamento');
   end;
end;


procedure LimpaLookupBackspace(Combo: TDBLookupComboBox; Key: Word);
begin
  if Key = VK_BACK then
    Combo.KeyValue := -1;
end;

// abre a tela de cadastro/consulta em modo pesquisa e joga o código escolhido no lookup
function AbrePesquisa(Classe: TFormClass; var Ref; Combo: TDBLookupComboBox; Campo: TField; Consulta: Boolean = True): Boolean;
var
  Painel: TComponent;
begin
  Result := False;
  try
    Application.CreateForm(Classe, Ref);
    if Consulta then
    begin
      Painel := TForm(Ref).FindComponent('PConsulta');
      if Painel is TControl then
        TControl(Painel).Visible := True;
    end;
    if TForm(Ref).ShowModal = mrOk then
    begin
      Combo.KeyValue := Campo.Value;
      Result := True;
    end;
  finally
    TForm(Ref).Free;
    TForm(Ref) := nil;
  end;
end;

end.
