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
    PAtualizacao: TPanel;
    Label3: TLabel;
    procedure BtOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LerIni;
    procedure EdSenhaKeyPress(Sender: TObject; var Key: Char);
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

uses UBiblio, Principal, DMUsuario, DMSistema, metodosServ;

{$R *.dfm}

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

        if (versao <> getversaoserv()) then
        begin
          try
            try
              PAtualizacao.Visible := true;
              FLogin.Refresh;
              gravalogtexto('atualiza','usuario');
              atualizaexe;
              gravaini('GERLIC','VERSAO',getversaoserv());
              ShellExecute(0,nil,PChar(Application.ExeName) ,nil, nil, SW_SHOWNORMAL);
              close;
            Except
              on E :Exception do begin
                MessageDlg(E.Message, mtError, [mbOk], 0);
                PAtualizacao.Visible := false;
              end;
            end;
          finally
            PAtualizacao.Visible := false;
          end;
        end
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
begin
    if EdUser.Text <> '' then
    begin
      if not (recuperaSenha(EdUser.Text)) then
      begin
        showmessage('Usuário não encontrado ou desativado');
      end
      else
      begin
        showmessage('E-mail de recuperação de senha enviado!');
      end;

    end
    else
    begin
      showmessage('Favor informar o nome do usuário ou e-mail!');
      EdUser.SetFocus;

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
