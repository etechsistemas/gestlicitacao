unit Email;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, DBCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons,SQLTimSt, dxSkinsCore, dxSkinBlack;

type
  TFEMail = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    DBMemo3: TDBMemo;
    Label4: TLabel;
    DBMemo4: TDBMemo;
    Label5: TLabel;
    DBMemo5: TDBMemo;
    Label6: TLabel;
    DBMemo6: TDBMemo;
    BtLocArq: TcxButton;
    OpenDialog1: TOpenDialog;
    Label7: TLabel;
    DBMemo7: TDBMemo;
    CkConfirm: TCheckBox;
    CbEmail: TComboBox;
    Label8: TLabel;
    Panel2: TPanel;
    BtOk: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtOkClick(Sender: TObject);
    procedure BtLocArqClick(Sender: TObject);
    procedure CbEmailChange(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure insere;
    procedure adicionaassinatura;
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
    senhaenv : String;
  public
    { Public declarations }
    arquivo, destino, assunto, texto, tipo : String;
    codprincipal, codpesq : integer;
    boleto, visualizar, bloqdest, processo, principal, show, enviado, nfe : boolean;
  end;

var
  FEMail: TFEMail;

implementation

uses metodosServ, Principal, DM, UBiblio, DMUsuario, DMFornec,
  Fornecedor, Cliente, DMCliente, ConBuscaContato, DMGerLicitacao;

{$R *.dfm}

procedure TFEMail.BtLocArqClick(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
      if fdm.THistoEnvARQUIVOS.Value <> '' then
      begin
        fdm.THistoEnvARQUIVOS.Value := fdm.THistoEnvARQUIVOS.Value + ';' + OpenDialog1.FileName;
      end
      else
      begin
        fdm.THistoEnvARQUIVOS.Value := OpenDialog1.FileName;
      end;
    end;
end;

procedure TFEMail.BtOkClick(Sender: TObject);
var
  clientserv : String;
  arquivos : TStringlist;
  confirmacao : boolean;
  i : integer;
begin
    if not (FEMail.Active) then
    begin
      FDM.THistoEnv.close;
      FDM.THistoEnv.params.parambyname('CODIGO').asinteger := 99999;
      FDM.THistoEnv.open;

      insere;

      FDM.THistoEnvARQUIVOS.Value := arquivo;
      FDM.THistoEnvDESTINO.Value := destino;

      if fdm.TConfigCONFIRMAMAIL.Value = 'S' then
        confirmacao := true
      else
        confirmacao := false;

      fdm.THistoEnvASSUNTO.Value := assunto;
      fdm.THistoEnvTEXTO.Value := texto;
    end
    else
    begin
      confirmacao := CkConfirm.checked;

      if fdm.THistoEnvASSUNTO.Value = '' then
      begin
        if (messagedlg('Enviar o e-mail sem assunto?',mtConfirmation,[mbYes,mbNo],0) = mrno) then
        begin
          DBMemo2.SetFocus;
          abort;
        end;
      end;

      if fdm.THistoEnvTEXTO.Value = '' then
      begin
        if (messagedlg('Enviar o e-mail sem texto?',mtConfirmation,[mbYes,mbNo],0) = mrno) then
        begin
          DBMemo1.SetFocus;
          abort;
        end;
      end;
    end;

    if (not fdm.TEmpresaPORTA.Value > 0) then
    begin
      ShowMessage('Sem porta de e-mail cadastrada!');
      abort;
    end;

    if fdm.TEmpresaSMTP.Value = '' then
    begin
      ShowMessage('Sem SMTP de e-mail cadastrado!');
      abort;
    end;

    if not (ValidarEmail(FDM.THistoEnvDESTINO.Value)) then
    begin
      showmessage('O e-mail destino é inválido!');
      if FEMail.Active then
        DBMemo6.SetFocus;
      abort;
    end;

    FDM.THistoEnvCODIGO.Value := ultimo('histoenv','CODIGO');
    FDM.THistoEnvDATA.Value := DateTimeToSQLTimeStamp(now);
    FDM.THistoEnvHORA.Value := DateTimeToSQLTimeStamp(now);
    FDM.THistoEnvPRIORIDADE.value := 'NORMAL';
    FDM.thistoenv.post;
    FDM.thistoenv.ApplyUpdates(0);

    try
      // Sempre manda os anexos para a pasta email\ do servidor. Antes só mandava quando o IP
      // configurado era diferente do desta máquina, o que falha com localhost e outras placas.
      if (fdm.THistoEnvARQUIVOS.Value <> '') then
      begin
        clientserv := 'S';
        try
          if pos(';',fdm.THistoEnvARQUIVOS.Value) > 0 then
            arquivos := Split(fdm.THistoEnvARQUIVOS.Value, ';')
          else
          begin
            arquivos := TStringList.Create;
            arquivos.Append(fdm.THistoEnvARQUIVOS.Value);
          end;
          i := 0;
          while (i < arquivos.Count)  do
          begin
            if FileExists(arquivos[i]) then
              getfile(arquivos[i],'email\');
            i := i + 1;
          end;
        finally

        end;
      end
      else
      begin
        clientserv := 'N';
        if (fdm.THistoEnvARQUIVOS.Value <> '') then
        begin
          if pos(';',fdm.THistoEnvARQUIVOS.Value) > 0 then
            arquivos := Split(fdm.THistoEnvARQUIVOS.Value, ';')
          else
          begin
            arquivos := TStringList.Create;
            arquivos.Append(fdm.THistoEnvARQUIVOS.Value);
          end;
        end;
      end;

      enviaMail(fdm.thistoenvremetente.value,senhaenv,FDM.THistoEnvDESTINO.Value,FDM.THistoEnvCC.Value,fdm.THistoEnvCCO.Value,fdm.THistoEnvPRIORIDADE.Value,fdm.THistoEnvTEXTO.Value,fdm.THistoEnvASSUNTO.Value,fdm.THistoEnvARQUIVOS.Value,clientserv,confirmacao, fdm.TEmpresaCODIGO.Value);

      enviado := true;
      if (FEmail.Active) then
      begin
        ShowMessage('E-mail enviado com sucesso!');
      end;
    except
      on E :Exception do begin
        gravalog(e);
        MessageDlg(E.Message, mtError, [mbOk], 0);
        FDM.thistoenv.delete;
        FDM.thistoenv.ApplyUpdates(0);

        insere;
        adicionaassinatura;
      end;
    end;

    if (processo) or (nfe) or (boleto) or not (principal) then
    begin
      close;
    end
    else
    begin
      insere;
      adicionaassinatura;
    end;
end;

procedure TFEMail.insere;
begin
    fdm.thistoenv.append;
    fdm.THistoEnvCODEMPFAT.Value := fdm.TEmpresaCODIGO.Value;
    fdm.THistoEnvNOMEEMPFAT.Value := fdm.TEmpresaNOMEFANTA.Value;
    fdm.THistoEnvCODUSU.Value := usulogado;

    if fdm.TConfigUSARMAILUSUARIO.Value = 'S' then
    begin
      if (fdmusuario.QVerUsuarioEMAIL.Value <> '') and (fdmusuario.QVerUsuarioSENHAmail.Value <> '') then
      begin
        if (FEMail.Active) or (show) then
          cbemail.Text := 'E-MAIL DO USUARIO';
        fdm.THistoEnvREMETENTE.Value := fdmusuario.QVerUsuarioEMAIL.Value;
        senhaenv := fdmusuario.QVerUsuarioSENHAmail.Value;
      end
      else
      begin
        fdm.THistoEnvREMETENTE.Value := fdm.TEmpresaEMAILENV.Value;
        senhaenv := fdm.TEmpresaSENHAMAIL.Value;
        if (FEMail.Active) or (show) then
          cbemail.Text := 'E-MAIL PADRAO';
      end;
    end
    else
    begin
      fdm.THistoEnvREMETENTE.Value := fdm.TEmpresaEMAILENV.Value;
      senhaenv := fdm.TEmpresaSENHAMAIL.Value;
      if (FEMail.Active) or (show) then
        cbemail.Text := 'E-MAIL PADRAO';
    end;

    if fdm.TEmpresaCCEMAIL.Value <> '' then
      fdm.THistoEnvCC.value := fdm.TEmpresaCCEMAIL.Value;

    if FDMusuario.QVerUsuarioCCEMAIL.Value <> '' then
    begin
      if fdm.THistoEnvCC.value <> '' then
        fdm.THistoEnvCC.value := fdm.THistoEnvCC.value + '; ' + FDMusuario.QVerUsuarioCCEMAIL.Value
      else
        fdm.THistoEnvCC.value := FDMusuario.QVerUsuarioCCEMAIL.Value;
    end;
end;

procedure TFEMail.CbEmailChange(Sender: TObject);
begin
    if (cbemail.Text = 'E-MAIL DO USUARIO') then
    BEGIN
      if fdmusuario.QVerUsuarioEMAIL.Value <> '' then
      begin
        fdm.THistoEnvREMETENTE.Value := fdmusuario.QVerUsuarioEMAIL.Value;
      end
      else
      begin
        showmessage('Usuário sem e-mail cadastrado!');
        fdm.THistoEnvREMETENTE.Value := fdm.TEmpresaEMAILENV.Value;
        cbemail.ItemIndex := 1;
      end;
    END
    else
    begin
      fdm.THistoEnvREMETENTE.Value := fdm.TEmpresaEMAILENV.Value;
    end;
end;

procedure TFEMail.cxButton2Click(Sender: TObject);
begin
    if (messagedlg('Você tem certeza que deseja cancelar o envio deste e-mail?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    begin
      fdm.thistoenv.cancel;
      if (boleto) then
      begin
        close;
      end
      else
      begin
        insere;
        adicionaassinatura;
      end;
    end;
end;

procedure TFEMail.cxButton3Click(Sender: TObject);
begin
    if not (visualizar) then
      fdm.thistoenv.Cancel;
    close;
end;

procedure TFEMail.cxButton4Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFCliente,FCliente);
      FCliente.PConsulta.Visible := true;
      if FCliente.ShowModal = mrok then
      begin
        if FDMCliente.TClienteEMAIL.value = '' then
        begin
          showmessage('Cliente sem e-mail cadastrado!');
        end
        else
        begin
          tipo := 'c';
          codprincipal := FDMCliente.TClienteCODIGO.Value;
          cxButton7.Enabled := true;
          if FDM.THistoEnvDESTINO.value <> '' then
            FDM.THistoEnvDESTINO.value := FDM.THistoEnvDESTINO.value+ ';' + FDMCliente.TClienteEMAIL.value
          else
            FDM.THistoEnvDESTINO.value := FDMCliente.TClienteEMAIL.value;
        end;
      end;
    finally
      FCliente.Free;
      FCliente := nil;
    end;
end;

procedure TFEMail.cxButton5Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFFornecedor,FFornecedor);
      FFornecedor.PConsulta.Visible := true;
      if FFornecedor.ShowModal = mrok then
      begin
        if FDMFornec.TFornecEMAIL.value = '' then
        begin
          showmessage('Fornecedor sem e-mail cadastrado!');
        end
        else
        begin
          tipo := 'f';
          codprincipal := FDMFornec.TFornecCODIGO.Value;
          cxButton7.Enabled := true;
          if FDM.THistoEnvDESTINO.value <> '' then
            FDM.THistoEnvDESTINO.value := FDM.THistoEnvDESTINO.value+ ';' + FDMFornec.TFornecEMAIL.value
          else
            FDM.THistoEnvDESTINO.value := FDMFornec.TFornecEMAIL.value;
        end;
      end;
    finally
      FFornecedor.Free;
      FFornecedor := nil;
    end;
end;

procedure TFEMail.cxButton7Click(Sender: TObject);
begin
    if codprincipal > 0 then
    begin
      try
        Application.CreateForm(TFConBuscaContato, FConBuscaContato);
        FConBuscaContato.tipo := tipo;
        FConBuscaContato.codcli := codprincipal;
        if FConBuscaContato.ShowModal = mrOk then
        begin
          if FConBuscaContato.CkConfirm.Checked then
          begin
            fdm.QBuscaContatos.First;
            while not fdm.QBuscaContatos.eof do
            begin
              if FDM.THistoEnvDESTINO.value <> '' then
                FDM.THistoEnvDESTINO.value := FDM.THistoEnvDESTINO.value+ ';' + fdm.QBuscaContatosEMAIL.value
              else
                FDM.THistoEnvDESTINO.value := fdm.QBuscaContatosEMAIL.value;
              fdm.QBuscaContatos.next;
            end;
          end
          else
          begin
            fdm.QBuscaContatos.First;
            while not fdm.QBuscaContatos.eof do
            begin
              if FDM.THistoEnvCC.value <> '' then
                FDM.THistoEnvCC.value := FDM.THistoEnvCC.value+ ';' + fdm.QBuscaContatosEMAIL.value
              else
                FDM.THistoEnvCC.value := fdm.QBuscaContatosEMAIL.value;
              fdm.QBuscaContatos.next;
            end;
          end;
        end;
      finally
        FConBuscaContato.Free;
        FConBuscaContato := nil;
      end;
    end
    else
    begin
      showmessage('Nenhum cliente, fornecedor ou transportadora informados!');
    end;
end;

procedure TFEMail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    fdm.thistoenv.close;
end;

procedure TFEMail.FormCreate(Sender: TObject);
begin
    codpesq := 0;
    arquivo := '';
    boleto := false;
    bloqdest := false;
    visualizar := false;
    principal := false;
    show := false;
    nfe := false;
    enviado := false;
    processo := false;
    tipo := '';
end;

procedure TFEMail.FormShow(Sender: TObject);
var
  textomail : String;
begin
    textomail := '';
    show := true;

    if not (fdm.TEmpresa.Active) then
      fdm.TEmpresa.Open;

    fdm.TEmpresa.Locate('CODIGO',codempfat,[]);

    if (visualizar) then
    begin
      btok.Visible := false;
      cxButton2.Visible := false;
      cxButton4.Visible := false;
      cxButton5.Visible := false;
      panel1.Enabled := false;

      fdm.thistoenv.close;
      fdm.thistoenv.params.parambyname('CODIGO').asinteger := codpesq;
      fdm.thistoenv.open;
    end
    else
    begin
      if (bloqdest) then
      begin
        DBMemo6.ReadOnly := true;
        DBMemo6.TabStop := false;
        DBMemo6.Color := clBtnFace;
      end;

      if codprincipal > 0 then
        cxButton7.Enabled := true;

      if fdm.TConfigCONFIRMAMAIL.Value = 'S' then
        CkConfirm.Checked := true
      else
        CkConfirm.Checked := false;

      fdm.thistoenv.close;
      fdm.thistoenv.params.parambyname('CODIGO').asinteger := 999999;
      fdm.thistoenv.open;

      insere;

      if texto <> '' then
      begin
        fdm.THistoEnvTEXTO.Value := texto;
      end;

      if processo then
      begin
        if FDMGerLicitacao.TConfigLic.Active then
          FDMGerLicitacao.TConfigLic.Refresh
        else
          FDMGerLicitacao.TConfigLic.open;

        fdm.THistoEnvTEXTO.Value := FDMGerLicitacao.TConfigLicMSGENVIO.Value;
        fdm.THistoEnvASSUNTO.Value := FDMGerLicitacao.TConfigLicASSUNTOENVIO.Value;
      end;

      if (assunto <> '') then
        fdm.THistoEnvASSUNTO.Value := assunto;

      if (boleto) then
      begin
        fdm.THistoEnvTEXTO.Value := fdm.TEmpresaTXTMAILBOLETO.Value;
        fdm.THistoEnvASSUNTO.Value := fdm.TEmpresaASSUNTOMAILBOLETO.Value;
      end;

      fdm.THistoEnvARQUIVOS.Value := arquivo;
      fdm.THistoEnvDESTINO.Value := destino;

      adicionaassinatura;
    end;
end;

procedure TFEMail.adicionaassinatura;
begin
  if FDMUsuario.QVerUsuarioASSINATURAMAIL.Value <> '' then
  begin
    if fdm.THistoEnvTEXTO.Value <> '' then
      fdm.THistoEnvTEXTO.Value := fdm.THistoEnvTEXTO.Value + #13 + #13 + FDMUsuario.QVerUsuarioASSINATURAMAIL.Value
    else
      fdm.THistoEnvTEXTO.Value := FDMUsuario.QVerUsuarioASSINATURAMAIL.Value;
  end;
end;

end.
