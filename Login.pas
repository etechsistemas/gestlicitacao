unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, dxGDIPlusClasses, StdCtrls, Mask, DBCtrls, shellapi,
  Menus, cxLookAndFeelPainters, cxButtons, cxGraphics, cxLookAndFeels, IniFiles,
  ComCtrls,ShellAnimations, dxSkinsCore, dxSkinBlack ;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    BtOk: TcxButton;
    cxButton2: TcxButton;
    EdSenha: TEdit;
    EdUser: TEdit;
    cxButton1: TcxButton;
    procedure BtOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LerIni;
    procedure EdSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdUserKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    server, port, usuario, senha, tipopermissao : String;
    aprov : boolean;
  end;

var
  FLogin: TFLogin;
  contador : integer;

implementation

uses UBiblio, Principal, DMUsuario, DMSistema, metodosServ, AtualizaArquivos;

{$R *.dfm}

const
  //pastas que o servidor mantem iguais em todos os PCs
  PACOTES = 'image';

//sistema, imagens e schemas numa chamada so (com barra de progresso).
//True = atualizou o exe e ja reabriu o sistema
function AtualizouSistema : boolean;
begin
  result := false;
  try
    result := VerificaAtualizacao(FDMSistema.etechserver, getversaoserv('|' + PACOTES), 'GERLIC', 'VERSAO');
  except
    on E : Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOk], 0);
      Abort;
    end;
  end;
end;

//apaga os exes antigos que a atualizacao deixou na pasta (Nome.oldAAAAMMDD)
procedure apagaexesantigos;
var
  sr : TSearchRec;
  pasta : String;
begin
  pasta := ExtractFilePath(Application.ExeName);
  if FindFirst(ChangeFileExt(Application.ExeName, '.old*'), faAnyFile, sr) = 0 then
  try
    repeat
      DeleteFile(pasta + sr.Name);
    until FindNext(sr) <> 0;
  finally
    FindClose(sr);
  end;
end;

procedure TFLogin.BtOkClick(Sender: TObject);
var i,p,x : integer;
  pendencia : String;
  senhaerrada,servidor : boolean;
begin
  usuario := EdUser.Text;
  senha := EdSenha.Text;
  senhaerrada := false;
  servidor := true;

  if EdUser.Text = '' then
  begin
    ShowMessage('Favor preencher o campo usuário!');
    EdUser.SetFocus;
    abort;
  end;

  if EdSenha.Text = '' then
  begin
    ShowMessage('Favor preencher o campo senha!');
    EdSenha.SetFocus;
    abort;
  end;
  gravalogtexto('inicio','usuario');
  try
    try
      if not (FPrincipal.trocausu) and not (aprov) then
      begin
        //gravalogtexto('cria fdmsistema','usuario');
        if FDMSistema = nil then
          Application.CreateForm(TFDMSistema, FDMSistema);
        //gravalogtexto('criou','usuario');
      end;
      except
        on E : Exception do begin

        if (Pos('Windows socket error: No connection could be made because the target machine actively refused',e.Message) > 0)
        or (Pos('Windows socket error: Nenhuma conexão pôde ser feita porque a máquina de destino as recusou ativamente (10061), on API ',e.Message) > 0) then
        else
          MessageDlg(E.Message, mtError, [mbOk], 0);

        contador := contador + 1;
        EdUser.Clear;
        EdSenha.Clear;
        EdUser.SetFocus;
        abort;
      end;
    end;

    try
      if not (FPrincipal.trocausu) and not (aprov) then
      begin
        //gravalogtexto('cria fdmusuario','usuario');
        if FDMUsuario = nil then
          Application.CreateForm(TFDMUsuario, FDMUsuario);
        //gravalogtexto('criou','usuario');
        FDMSistema.etechserver.Open;
      end;
    except
       on E :Exception do begin
        MessageDlg(E.Message, mtError, [mbOk], 0);
        contador := contador + 1;
        EdUser.Clear;
        EdSenha.Clear;
        EdUser.SetFocus;
       end;
    end;

    FDMUsuario.QVerUsuario.Close;
    FDMUsuario.QVerUsuario.Params.ParamByName('login').AsString := EdUser.Text;
    FDMUsuario.QVerUsuario.Params.ParamByName('senha').AsString := EdSenha.Text;
    FDMUsuario.QVerUsuario.open;

    if FDMUsuario.QVerUsuario.RecordCount > 0 then
    begin
      if aprov then
      begin
        if VerPermissaoEspec(FDMUsuario.QVerUsuarioCODIGO.Value,tipopermissao,'GRUPO') then
        begin
          ModalResult := mrok;
        end
        else
        begin
          if VerPermissaoEspec(FDMUsuario.QVerUsuarioCODIGO.Value,tipopermissao,'USUARIO') then
          begin
            ModalResult := mrok;
          end
          else
          begin
            ModalResult := mrno;
          end;
        end;
      end
      else
      begin
        if FDMUsuario.QVerUsuarioCODIGO.Value <> 1 then
        begin
          with FPrincipal do
          begin
            for I := 0 to ComponentCount -1 do
            begin
               if (Components[I] is TcxButton) then
               begin
                  if TcxButton(Components[I]).Tag = 0 then
                      TcxButton(Components[I]).Enabled := False;
               end;
            end;

            for I := 0 to MainMenu1.Items.Count -1 do
            begin
              if (MainMenu1.Items[i].Caption <> '-') and (MainMenu1.Items[i].Caption <> '') then
              begin
                MainMenu1.Items[i].Visible := false;
              end;
              for p := 0 to MainMenu1.Items[I].Count - 1 do
              begin
                MainMenu1.Items[i].Items[p].Visible := false;
                for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do
                begin
                  MainMenu1.Items[i].Items[p].Items[x].Visible := false;
                end;
              end;
            end;
          end;
        end;

        apagaexesantigos;

        if AtualizouSistema then
          close
        else
        begin
          FPrincipal.entrou := true;
          ModalResult := mrok;
        end;
      end;
    end
    else
    begin
      EdUser.Clear;
      EdSenha.Clear;
      EdUser.SetFocus;
      contador := contador + 1;
      MessageDlg('Usuário e senha incorretos!',mtError,[mbok],0);
      abort;
    end;

    if not (aprov) then
    begin
      pendencia := verificapendencia(FDMUsuario.QVerUsuarioCODEMPFAT.Value);

      if pendencia = 'A' then
        messagedlg('Aviso: Constam em nosso sistema duplicatas em aberto, o seu acesso poderá sofrer restrições nos próximos dias, favor entrar em contato com o setor financeiro!',mtWarning,[mbNo],0);

      if pendencia = 'N' then
      begin
        messagedlg('Aviso: Constam em nosso sistema duplicatas em aberto, o seu acesso foi bloqueado, favor entrar em contato com o setor financeiro!',mtWarning,[mbNo],0);
        ModalResult := mrCancel;
      end;
    end;
  except
    if contador = 3 then
    begin
      if FPrincipal.trocausu then
      begin
        MessageDlg('Não foi possível fazer login com outro usuário.',mtWarning,[mbOK],0);
        FDMSistema.etechserver.Close;
        usuario := FPrincipal.usuario;
        senha := FPrincipal.senha;
        FDMSistema.etechserver.Open;
        FDMUsuario.QVerUsuario.Close;
        FDMUsuario.QVerUsuario.Params.ParamByName('login').AsString := usuario;
        FDMUsuario.QVerUsuario.Params.ParamByName('senha').AsString := senha;
        FDMUsuario.QVerUsuario.open;
      end;
      ModalResult := mrCancel;
    end;
  end;

end;

procedure TFLogin.cxButton1Click(Sender: TObject);
var
  temporario : boolean;
begin
    if Trim(EdUser.Text) = '' then
    begin
      showmessage('Favor informar o nome do usuário ou e-mail!');
      EdUser.SetFocus;
      exit;
    end;

    //antes do primeiro login ainda nao existe conexao com o servidor: abre uma so para isso
    temporario := FDMSistema = nil;
    if temporario then
    begin
      try
        Application.CreateForm(TFDMSistema, FDMSistema);
      except
        on E : Exception do
        begin
          FDMSistema := nil;
          if (Pos('10061', E.Message) > 0) or (Pos('actively refused', E.Message) > 0) then
            MessageDlg('Verifique se o servidor está aberto.', mtError, [mbOk], 0)
          else
            MessageDlg(E.Message, mtError, [mbOk], 0);
          exit;
        end;
      end;
    end;

    Screen.Cursor := crHourGlass;
    try
      try
        if recuperaSenha(Trim(EdUser.Text)) then
          showmessage('E-mail de recuperação de senha enviado!')
        else
          showmessage('Não foi possível enviar a senha.' + #13#10#13#10 +
            'Confira se o usuário (ou e-mail) está certo, se ele está ativo e se tem e-mail no cadastro.');
      except
        on E : Exception do
          MessageDlg('Não foi possível enviar a senha.' + #13#10#13#10 + E.Message, mtError, [mbOk], 0);
      end;
    finally
      Screen.Cursor := crDefault;
      //a conexao aberta so para isso e fechada: o Entrar abre a dele com o usuario digitado
      if temporario and (FDMSistema <> nil) then
      begin
        FDMSistema.Free;
        FDMSistema := nil;
      end;
    end;
end;

procedure TFLogin.cxButton2Click(Sender: TObject);
begin
      if FPrincipal.trocausu then
      begin
        FDMSistema.etechserver.Close;
        usuario := FPrincipal.usuario;
        senha := FPrincipal.senha;
        FDMSistema.etechserver.Open;
        FDMUsuario.QVerUsuario.Close;
        FDMUsuario.QVerUsuario.Params.ParamByName('login').AsString := usuario;
        FDMUsuario.QVerUsuario.Params.ParamByName('senha').AsString := senha;
        FDMUsuario.QVerUsuario.open;
      end;
      ModalResult := mrCancel;
end;

procedure TFLogin.EdUserKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
      key := #0;
      EdSenha.SetFocus;
    end;
end;

procedure TFLogin.EdSenhaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
      BtOkClick(sender);

end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  aprov := false;
  tipopermissao := '';
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
    LerIni;
    contador := 0;
    EdUser.SetFocus;
end;

procedure TFLogin.LerIni;
var
   ArqIni : tIniFile;
   Diretorio : String;
begin
   ArqIni := TIniFile.Create((ExtractFilePath(Application.ExeName)+'config.ini'));
   Try
      server := ArqIni.ReadString ('GERLIC','IP',server);
      port := ArqIni.ReadString('GERLIC','PORTA',port);
      versao := ArqIni.ReadString('GERLIC','VERSAO',versao);
      versaoserv := ArqIni.ReadString('GERLIC','VERSAOSERV',versaoserv);
   Finally
      ArqIni.Free;
    end;
end ;


end.
