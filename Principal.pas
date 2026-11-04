unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinsdxStatusBarPainter, cxContainer, cxEdit, dxSkinscxPCPainter, Menus,
  CustomizeDlg, PlatformDefaultStyleActnCtrls, AppEvnts,
  cxButtons, cxPC, cxTextEdit, cxMaskEdit, cxDropDownEdit, shellapi, jpeg,
  dxStatusBar, dxSkinsForm, ImgList, cxLookupEdit, cxDBLookupEdit,
  cxGrid, cxGridCustomView,
  ACBrCEP, cxPCdxBarPopupMenu, ACBrBase, ACBrSocket;

type
  TFPrincipal = class(TForm)
    dxStatusBar1: TdxStatusBar;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Image2: TImage;
    PageControl: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    cxButton7: TcxButton;
    cxButton5: TcxButton;
    BtMinhaConta: TcxButton;
    cxTabSheet7: TcxTabSheet;
    BTCLIENTES1: TcxButton;
    BTVendedores1: TcxButton;
    BTFornecedores1: TcxButton;
    ApplicationEvents1: TApplicationEvents;
    TrayIcon1: TTrayIcon;
    dxSkinController1: TdxSkinController;
    cxImageList1: TcxImageList;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Utilitrios1: TMenuItem;
    Configuraes1: TMenuItem;
    Sair1: TMenuItem;
    Cliente1: TMenuItem;
    Configuraes2: TMenuItem;
    Email1: TMenuItem;
    mRelat: TMemo;
    Fornecedores1: TMenuItem;
    Licitao1: TMenuItem;
    Processo1: TMenuItem;
    N1: TMenuItem;
    ipoEntidade1: TMenuItem;
    Fonte1: TMenuItem;
    Modalidade1: TMenuItem;
    ipodeDadosdosProdutos1: TMenuItem;
    DadosparaCredenciamento1: TMenuItem;
    DadosparaHabilitao1: TMenuItem;
    N2: TMenuItem;
    Relatrio1: TMenuItem;
    CRM1: TMenuItem;
    PipelineVenda1: TMenuItem;
    N3: TMenuItem;
    ClientePotencial1: TMenuItem;
    ACBrCEP1: TACBrCEP;
    cxButton6: TcxButton;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure cxButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Configuraes2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure buscaEmpresa;
    procedure cxButton5Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure BTVendedores1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ipoEntidade1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Modalidade1Click(Sender: TObject);
    procedure Processo1Click(Sender: TObject);
    procedure Email1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
    procedure PipelineVenda1Click(Sender: TObject);
    procedure ClientePotencial1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    trocausu, entrou : boolean;
    usuario, senha, sqlemp : string;
  end;

var
  FPrincipal: TFPrincipal;
  usulogado, codempfat : integer;
  ipservidor, versao, exclusao , versaoserv, todasemp, filtroemp : String;

implementation

uses UBiblio, Login, DMUsuario,  DM, Fornecedor, Localizador,
  Sobre, Cliente, Vendedores, Configuracoes, DMFornec, metodosServ,
   FuncoesDEV, Modalidade, TipoEntidade, FonteLic, Entidade, Processo, Email, ConProcesso,
  PipelineVenda, CliPoten;

{$R *.dfm}

procedure TFPrincipal.buscaEmpresa;
begin
      fdmusuario.QConUsuemp.close;
      fdmusuario.QConUsuemp.params.parambyname('CODUSU').asinteger := usulogado;
      fdmusuario.QConUsuemp.open;

      filtroemp := '';

      fdmusuario.QConUsuemp.First;
      while not fdmusuario.QConUsuemp.eof do
      begin
        if filtroemp <> '' then
          filtroemp := filtroemp + ' or ';

        filtroemp := filtroemp + ' CODIGO = '+inttostr(fdmusuario.QConUsuempCODEMPFAT.value);
        fdmusuario.QConUsuemp.Next;
      end;
      fdmusuario.QConUsuemp.First;

      sqlemp := 'select CODIGO, RAZAOSOCIAL, NOMEFANTA, SERIE, SERIECTE, CIDADE, SERIESCAN, SERIESERV from empresa';

      if filtroemp <> '' then
      begin
        filtroemp := '(' + filtroemp+')';
        sqlemp := sqlemp + ' where '+ filtroemp;
      end;
end;

procedure TFPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  sMsg : String;
  Pos1, Pos2: Integer;
begin
  gravalog(e);
  if Pos(UpperCase('is not a valid date'), UpperCase(E.Message)) <> 0 then
  begin
    ShowMessage('Data inválida, proceda a correção.');
  end

  else if Pos(UpperCase('must have a value'), UpperCase(E.Message)) <> 0 then
  begin
    Pos1 := Pos('''', E.Message);
    sMsg := E.Message;
    Delete(sMsg, Pos1, 1);
    Pos2 := Pos('''', sMsg);
    sMsg := copy(E.Message, Pos1 + 1, Pos2 - Pos1);
    sMsg := 'É obrigatório o preenchimento do campo '+ sMsg + '.';
    ShowMessage(sMsg);
  end

  else if Pos(UpperCase('key violation'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Houve violação de Chave.  Registro já incluido.';
    ShowMessage(sMsg);
  end

  else if Pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Campo preenchido com valor não válido. Procedaa correção.';
    ShowMessage(sMsg);
  end

  else if Pos(UpperCase('is not a valid time'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Hora inválida, proceda a correção.';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('Erro ApplyUpdates'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Não foi possível salvar a modificação no banco de dados.';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('is not a valid float'), UpperCase(E.Message)) <> 0 then
  begin
    Pos1 :=Pos('''', E.Message);
    sMsg := E.Message;
    Delete(sMsg, Pos1, 1);
    Pos2 := Pos('''', sMsg);
    sMsg := copy(E.Message, Pos1 + 1, Pos2 - Pos1);
    sMsg := 'O valor  '+ sMsg + ' não é válido.';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('field value required'), UpperCase(E.Message)) <> 0 then
  begin
    Pos1 := Pos('column ', E.Message) + 7;
    Pos2 := Pos(',', E.Message);
    sMsg := copy(E.Message, Pos1, Pos2 - Pos1);
    sMsg := 'Campo ' + sMsg + ' deve ser preenchido.';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('ATTEMPT TO STORE DUPLICATE VALUE'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Não é permitido valor duplicado. ';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('FOREIGN KEY'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Operação não permitida, registro vinculado em outra tabela.';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('Provider not exported:'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := 'Versão do servidor de aplicação incompatível com a Aplicação';
    ShowMessage(E.Message + #13 + sMsg)
  end
  else if (Pos(UpperCase('MUST APPLY UPDATES BEFORE REFRESHING DATA'), UpperCase(E.Message)) <> 0) then
  begin
    sMsg := 'É necessário aplicar as alterações antes de atualizar os dados';
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('missing database'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := ' Banco de Dados não encontrado.' + #13 +
                ' Tente novamente em alguns instantes ou' + #13 +
                ' entre em contato com sua equipe técnica,' + #13 +
                ' provável problema de conexão com a rede.' + #13 +
                ' O programa será fechado.' ;
    ShowMessage(sMsg);
  end
  else if Pos(UpperCase('ERROR READING FROM SOCKET'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := ' Servidor em manutenção ou provável' + #13 +
                ' problema de conexão com a rede.' + #13 +
                ' uma nova tentativa será feita' ;
    ShowMessage(sMsg);
    //ReOpenServer;
  end
  else if Pos(UpperCase('NENHUMA CONEXãO PôDE SER FEITA PORQUE A MáQUINA DE DESTINO AS RECUSOU ATIVAMENTE (10061), ON API ' + '''' + 'CONNECT' + ''''), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := ' Servidor em manutenção ou provável' + #13 +
                ' problema de conexão com a rede.' + #13 +
                ' Tente novamente em alguns instantes ou' + #13 +
                ' entre em contato com sua equipe técnica';
    ShowMessage(sMsg);
    //ReOpenServer;
  end
  else if Pos(UpperCase('(10061)'), UpperCase(E.Message)) <> 0 then
  begin
    sMsg := ' Servidor em manutenção ou provável' + #13 +
                ' problema de conexão com a rede.' + #13 +
                ' Tente novamente em alguns instantes ou' + #13 +
                ' entre em contato com sua equipe técnica.' ;
    ShowMessage(sMsg);
    //ReOpenServer;
  end
  else
  begin
    sMsg := 'Ocorreu o seguinte erro: ' + #13 +UpperCase(E.Message);
    ShowMessage(sMsg);
  end;
end;

procedure TFPrincipal.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
  Sentido: Smallint;
begin
  //muda cor do objeto focado
  if (Screen.ActiveControl <> nil) and (UltCtrl <> Screen.ActiveControl) then
    begin
      if (UltForm <>'') and (UltCtrl <> nil) and (UltCtrl.Name<>'') and (Screen.ActiveForm.Name = UltForm) {and (FindComponent(UltCtrl.Name) <> nil)} then
        begin
          if (UltCtrl is TEdit) then
            TEdit(UltCtrl).Color := UltCor
          else if (UltCtrl is TDBEdit) then
            TDBEdit(UltCtrl).Color := UltCor
          else if (UltCtrl is TDBComboBox) then
            TDBComboBox(UltCtrl).Color := UltCor
          else if (UltCtrl is TComboBox) then
            TComboBox(UltCtrl).Color := UltCor
          else if (UltCtrl is TDBLookupComboBox) then
            TDBLookupComboBox(UltCtrl).Color := UltCor;
          UltCtrl := nil;
        end
      else
        UltCtrl := nil;

      if (Screen.ActiveControl is TDBEdit) then
        begin
          UltCor := TDBEdit(Screen.ActiveControl).Color;
          TDBEdit(Screen.ActiveControl).Color := $00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end
      else if (Screen.ActiveControl is TEdit)then
        begin
          UltCor := TEdit(Screen.ActiveControl).Color;
          TEdit(Screen.ActiveControl).Color := clInfoBk; //$00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end
      else if (Screen.ActiveControl is TDBComboBox)then
        begin
          UltCor := TDBComboBox(Screen.ActiveControl).Color;
          TDBComboBox(Screen.ActiveControl).Color := $00FFDDDD;; //$00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end
      else if (Screen.ActiveControl is TComboBox)then
        begin
          UltCor := TComboBox(Screen.ActiveControl).Color;
          TComboBox(Screen.ActiveControl).Color := clInfoBk; //$00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end
      else if (Screen.ActiveControl is TDBLookupComboBox)then
        begin
          UltCor := TDBLookupComboBox(Screen.ActiveControl).Color;
          if (TDBLookupComboBox(Screen.ActiveControl).DataField <> '') and (TDBLookupComboBox(Screen.ActiveControl).DataSource <> nil) then
            TDBLookupComboBox(Screen.ActiveControl).Color := $00FFDDDD
          else
            TDBLookupComboBox(Screen.ActiveControl).Color := clInfoBk; //$00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end;

{      else if (Screen.ActiveControl is TcxDBLookupComboBox)then
        begin
          UltCor := TcxDBLookupComboBox(Screen.ActiveControl).Style.Color;
          if (TcxDBLookupComboBox(Screen.ActiveControl).DataBinding.DataField <> '') and (TcxDBLookupComboBox(Screen.ActiveControl).DataBinding.DataSource <> nil) then
            TcxDBLookupComboBox(Screen.ActiveControl).Style.Color := $00FFDDDD
          else
            TcxDBLookupComboBox(Screen.ActiveControl).Style.Color := clInfoBk; //$00FFDDDD;
          UltCtrl := Screen.ActiveControl;
          UltForm := Screen.ActiveForm.Name;
        end;}
    end;
  //fim muda cor do objeto focado}

  //troca tab por enter em toda aplicação, dentre outros movimentos com teclas
  //If not (((Screen.ActiveControl is TCustomMemo) and (TMemo(Screen.ActiveControl).WantReturns = true))or (Screen.ActiveControl is TCustomGrid){ or (Screen.ActiveForm.ClassName = 'TMessageForm')}  or (Screen.ActiveControl.ClassName = TcxGridDBTableView.ClassName)  ) then // akiiiiiiiiiiiiiiiiii o erro de acess
  If not (((Screen.ActiveControl is TCustomMemo) and (TMemo(Screen.ActiveControl).WantReturns = true))or (Screen.ActiveControl is TCustomGrid){ or (Screen.ActiveForm.ClassName = 'TMessageForm')}) then
  begin

    If Msg.message = WM_KEYDOWN then
    begin
   //ShowMessage(        Screen.ActiveForm.ActiveControl.ClassName);
      Case Msg.wParam of
        VK_RETURN :
        begin
          If not (Screen.ActiveControl is TButton) and not (Screen.ActiveControl is TcxButton) and not (Screen.ActiveControl is TcxGrid) and not (Screen.ActiveControl is TcxGridSite) and not (Screen.ActiveControl is TcxCustomComboBoxInnerEdit) and not (Screen.ActiveControl is TcxCustomInnerTextEdit) then//or (Screen.ActiveControl is TBitBtn)
          begin
            //Screen.ActiveForm.OnClick := nil;
            Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);

            {If (Screen.ActiveControl is TButton) or (Screen.ActiveControl is TcxButton) then//or (Screen.ActiveControl is TBitBtn)
              Screen.ActiveForm.ActiveControl.Action := nil;  }
          end;
        end;

{

        VK_DOWN : If not ((Screen.ActiveControl is TDBLookupComboBox) or (Screen.ActiveControl is TDBComboBox) or (Screen.ActiveControl is TComboBox) or (Screen.ActiveControl is Tlistbox)
        or (Screen.ActiveControl is TcxCustomComboBoxInnerEdit) or (Screen.ActiveControl is TcxCustomDBLookupEdit) or (Screen.ActiveControl is TcxComboBox) or (Screen.ActiveControl is TcxDBLookupComboBox) or (Screen.ActiveControl is TcxGrid) or (Screen.ActiveControl is TcxGridSite)) then
          Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);

        VK_UP : If not ((Screen.ActiveControl is TDBLookupComboBox) or (Screen.ActiveControl is TDBComboBox) or (Screen.ActiveControl is TComboBox) or (Screen.ActiveControl is Tlistbox)
        or (Screen.ActiveControl is TcxCustomComboBoxInnerEdit) or (Screen.ActiveControl is TcxCustomDBLookupEdit) or (Screen.ActiveControl is TcxComboBox) or (Screen.ActiveControl is TcxDBLookupComboBox) or (Screen.ActiveControl is TcxGrid) or (Screen.ActiveControl is TcxGridSite)) then
          Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);}
//cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox
        //VK_F5 : FPrincipal.BAtualizarClick(Self);

      end;

//      if (Msg.wParam = VK_RETURN) or (Msg.wParam = VK_DOWN) or (Msg.wParam = VK_UP) or (Msg.wParam = VK_F5) then
      if (Msg.wParam = VK_RETURN) then
      begin
        Screen.ActiveForm.OnKeyPress := nil;
        //Screen.ActiveForm.OnClick := nil;
      end;

    end;
  end;
  //troca tab por enter em toda aplicação, dentre outros movimentos com teclas

// primeiramente verificamos se é o evento a ser tratado...
  if Msg.message = WM_MOUSEWHEEL then
    if (ActiveControl is TCustomDBGrid) or (Screen.ActiveControl is TCustomGrid) or (Screen.ActiveControl is TDBLookupComboBox) or (Screen.ActiveControl is TDBComboBox) or (Screen.ActiveControl is TComboBox) or (Screen.ActiveControl is Tlistbox) then   // *** <=== AQUI você testa se classe é TDBGRID
    begin
      Msg.message := WM_KEYDOWN;
      Msg.lParam := 0;
      Sentido := HiWord(Msg.wParam);
      if Sentido > 0 then
        keybd_event(VK_UP, 0, 0, 0)
      else
        keybd_event(VK_DOWN, 0, 0, 0);
    end;
  //return msg;
end;

procedure TFPrincipal.BTVendedores1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFVendedores,FVendedores);
        FVendedores.ShowModal;
    finally
      FVendedores.free;
      FVendedores := nil;
    end;
end;

procedure TFPrincipal.Cliente1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFCliente,FCliente);
        Fcliente.ShowModal;
    finally
      FCliente.free;
      FCliente := nil;
    end;
end;

procedure TFPrincipal.ClientePotencial1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFCliPoten,FCliPoten);
        FCliPoten.ShowModal;
    finally
      FCliPoten.free;
      FCliPoten := nil;
    end;
end;

procedure TFPrincipal.Configuraes2Click(Sender: TObject);
begin
   try
        Application.CreateForm(TFConfiguracoes,FConfiguracoes);
        FConfiguracoes.ShowModal;
    finally
      FConfiguracoes.free;
      FConfiguracoes := nil;
    end;
end;

procedure TFPrincipal.cxButton5Click(Sender: TObject);
var i, p, x : integer;
    temp : TComponent;
begin
  i := 0;
  p := 0;
  x := 0;
  temp := nil;

  trocausu := true;

  try
    Application.CreateForm(TFLogin, FLogin);

    if FLogin.ShowModal = mrok then
    begin
      PageControl.ActivePageIndex := 0;
      dxStatusBar1.Panels[0].Text := 'Usuário: '+FDMUsuario.QVerUsuarioNOME.Value;
      dxStatusBar1.Panels[1].Text := ''+FormatDateTime('dddd","dd" de "mmmm" de "yyyy', now);
      usulogado :=  FDMUsuario.QVerUsuarioCODIGO.Value;
      usuario := FDMUsuario.QVerUsuarioNOME.Value;
      codempfat := FDMUsuario.QVerUsuarioCODEMPFAT.Value;
      senha := FDMUsuario.QVerUsuarioSenha.Value;
      buscaEmpresa;

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

        FDMUsuario.QConUsuPermGerLic.Close;
        FDMUsuario.QConUsuPermGerLic.Params.ParamByName('USUARIO').AsInteger := usulogado;
        FDMUsuario.QConUsuPermGerLic.Open;

        for I := 0 to MainMenu1.Items.Count -1 do
        begin
          for p := 0 to MainMenu1.Items[I].Count - 1 do
          begin
            for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do
            begin
              if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Items[p].Items[x].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name))]),[]) then
              begin
                MainMenu1.Items[i].Items[p].Items[x].Visible := true;
                temp := nil;
                temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
                if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                  TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
              end;
            end;
            if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Items[p].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Items[p].Name))]),[]) then
            begin
              MainMenu1.Items[i].Items[p].Visible := true;
              temp := nil;
              temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
              if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
            end;
          end;
            if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Name))]),[]) then
            begin
              MainMenu1.Items[i].Visible := true;
              temp := nil;
              temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
              if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
            end;
        end;
      end
      else
      begin
        with FPrincipal do
        begin
          for I := 0 to ComponentCount -1 do
          begin
             if (Components[I] is TcxButton) then
             begin
                if TcxButton(Components[I]).Tag = 0 then
                    TcxButton(Components[I]).Enabled := True;
             end;
          end;

          for I := 0 to MainMenu1.Items.Count -1 do
          begin
            if (MainMenu1.Items[i].Caption <> '-') and (MainMenu1.Items[i].Caption <> '') then
            begin
              MainMenu1.Items[i].Visible := true;
            end;
            for p := 0 to MainMenu1.Items[I].Count - 1 do
            begin
              MainMenu1.Items[i].Items[p].Visible := true;
              for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do
              begin
                MainMenu1.Items[i].Items[p].Items[x].Visible := True;
              end;
            end;
          end;
        end;
      end;
    end;
  finally
    FLogin.Free;
    FLogin := nil;
  end;
end;

procedure TFPrincipal.cxButton6Click(Sender: TObject);
var
  saudacao : String;
begin
    if (Time >= StrToTime('00:00:00'))and (Time < StrToTime('11:59:59')) then
      saudacao := 'Bom dia';
    if (Time >= StrToTime('12:00:00'))and (Time < StrToTime('17:59:59')) then
      saudacao := 'Bom tarde';
    if (Time >= StrToTime('18:00:00'))and (Time < StrToTime('23:59:59')) then
      saudacao := 'Boa noite';

    ShellExecute(Handle, 'open', PChar('https://api.whatsapp.com/send?1=pt_BR&phone=5542999389239&text=Usuario: '+fdmusuario.QVerUsuarioNOME.Value+', '+saudacao), '', '', 1);
end;

procedure TFPrincipal.cxButton7Click(Sender: TObject);
begin
    close;
end;

procedure TFPrincipal.Email1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEMail,FEMail);
    FEMail.principal := true;
    FEMail.ShowModal;
  finally
    FEMail.Free;
    FEMail := nil;
  end;
end;

procedure TFPrincipal.Fonte1Click(Sender: TObject);
begin
     try
        Application.CreateForm(TFFonteLic,FFonteLic);
        FFonteLic.ShowModal;
    finally
      FFonteLic.free;
      FFonteLic := nil;
    end;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  i , p , x : integer;
begin
  FPrincipal.Caption:=Application.Title;
  Application.ShowHint := True;
  Application.ShowHint := True;
  trocausu := false;
  entrou := false;
  renomeia();
end;

procedure TFPrincipal.FormShow(Sender: TObject);
var  i,x,p,j : integer;
      temp : TComponent;
begin
    ipservidor := getipservidor;
    PageControl.ActivePageIndex := 0;
    if entrou then
    begin
      dxStatusBar1.Panels[0].Text := 'Usuário: '+FDMUsuario.QVerUsuarioNOME.Value;
      dxStatusBar1.Panels[1].Text := ''+FormatDateTime('dddd","dd" de "mmmm" de "yyyy', now);
      usulogado :=  FDMUsuario.QVerUsuarioCODIGO.Value;
      usuario := FDMUsuario.QVerUsuarioNOME.Value;
      codempfat := FDMUsuario.QVerUsuarioCODEMPFAT.Value;
      senha := FDMUsuario.QVerUsuarioSenha.Value;
      buscaEmpresa;

      usuario := FDMUsuario.QVerUsuarioNOME.Value;
      senha := FDMUsuario.QVerUsuarioSenha.Value;

      fdm.TConfig.Open;

      if (fdm.tconfigPAPELPAREDE.value <> '') and (FileExists(fdm.tconfigPAPELPAREDE.value)) then
      begin
        Image1.Picture.LoadFromFile(fdm.tconfigPAPELPAREDE.value);
      end;

      if FDMUsuario.QVerUsuarioCODIGO.Value <> 1 then
      begin
        FDMUsuario.QConUsuPermGerLic.Close;
        FDMUsuario.QConUsuPermGerLic.Params.ParamByName('USUARIO').AsInteger := usulogado;
        FDMUsuario.QConUsuPermGerLic.Open;

        for I := 0 to MainMenu1.Items.Count -1 do
        begin
          for p := 0 to MainMenu1.Items[I].Count - 1 do
          begin
            for x := 0 to MainMenu1.Items[I].Items[p].Count -1  do
            begin
              if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Items[p].Items[x].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Items[p].Items[x].Name))]),[]) then
              begin
                MainMenu1.Items[i].Items[p].Items[x].Visible := true;
                temp := nil;
                temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
                if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                  TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
              end;
            end;
            if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Items[p].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Items[p].Name))]),[]) then
            begin
              MainMenu1.Items[i].Items[p].Visible := true;
              temp := nil;
              temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
              if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
            end;
          end;
            if FDMUsuario.QConUsuPermGerLic.Locate('NOMEMODULO;NOMEFORM',VarArrayOf([StringReplace(UpperCase(MainMenu1.Items[i].Caption),'&','',[rfIgnoreCase]),UpperCase(String(MainMenu1.Items[i].Name))]),[]) then
            begin
              MainMenu1.Items[i].Visible := true;
              temp := nil;
              temp := TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value));
              if (FDMUsuario.QConUsuPermGerLicBOTAO.Value <> '') and (temp <> nil) then
                TcxButton(FindComponent(FDMUsuario.QConUsuPermGerLicBOTAO.Value)).Enabled := true;
            end;
        end;
      end;
    end;
end;

procedure TFPrincipal.Fornecedor1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFFornecedor,FFornecedor);
        FFornecedor.ShowModal;
    finally
      FFornecedor.free;
      FFornecedor := nil;
    end;
end;

procedure TFPrincipal.Fornecedores1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEntidade,FEntidade);
    FEntidade.ShowModal;
  finally
    FEntidade.Free;
    FEntidade := nil;
  end;
end;

procedure TFPrincipal.ipoEntidade1Click(Sender: TObject);
begin
     try
        Application.CreateForm(TFTipoEntidade,FTipoEntidade);
        FTipoEntidade.ShowModal;
    finally
      FTipoEntidade.free;
      FTipoEntidade := nil;
    end;
end;

procedure TFPrincipal.Modalidade1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFModalidade,FModalidade);
    FModalidade.ShowModal;
  finally
    FModalidade.Free;
    FModalidade := nil;
  end;
end;

procedure TFPrincipal.PipelineVenda1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFPipelineVenda,FPipelineVenda);
        FPipelineVenda.ShowModal;
    finally
      FPipelineVenda.free;
      FPipelineVenda := nil;
    end;
end;

procedure TFPrincipal.Processo1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFProcesso,FProcesso);
    FProcesso.ShowModal;
  finally
    FProcesso.Free;
    FProcesso := nil;
  end;
end;

procedure TFPrincipal.Relatrio1Click(Sender: TObject);
begin
    try
        Application.CreateForm(TFConProcesso,FConProcesso);
        FConProcesso.ShowModal;
    finally
      FConProcesso.free;
      FConProcesso := nil;
    end;
end;

procedure TFPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFPrincipal.Sobre2Click(Sender: TObject);
begin
     try
        Application.CreateForm(TFSobre,FSobre);
        FSobre.ShowModal;
    finally
      FSobre.free;
      FSobre := nil;
    end;
end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
begin
  if usulogado > 0 then
  begin
    ExecSQL('update agenda set situacao = '+QuotedStr('FALTOU')+' where situacao = '+QuotedStr('AGENDADO')+' and DATE <= getdate() and horario <= cast(DATEADD(HOUR,1,GETDATE()) as time)');
  end;
end;

end.
