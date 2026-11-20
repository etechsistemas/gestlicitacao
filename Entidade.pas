unit Entidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinBlack, cxPC, cxControls, ExtCtrls, shellapi, acbrcep,
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxContainer, cxGroupBox, cxRadioGroup, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, DBCtrls,
  Mask, Grids, DBGrids, cxCheckBox, cxDBEdit, cxLookAndFeels, dxSkinsCore,
  dxSkinscxPCPainter, SQLTimSt, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxPCdxBarPopupMenu, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFEntidade = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EdNome: TEdit;
    RgFiltro: TcxRadioGroup;
    PConsulta: TPanel;
    PDados: TPanel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn;
    BtImprimir: TcxButton;
    CkInativ: TcxCheckBox;
    cxButton16: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    PopupMenu1: TPopupMenu;
    Restaurar1: TMenuItem;
    cxTabSheet12: TcxTabSheet;
    Panel16: TPanel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    CkInativ2: TcxCheckBox;
    cxButton9: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtConsultar: TcxButton;
    Label49: TLabel;
    cxButton13: TcxButton;
    CbTipoCli: TDBLookupComboBox;
    Label51: TLabel;
    Label52: TLabel;
    DtMovInicial: TcxDateEdit;
    DtMovFinal: TcxDateEdit;
    RgData: TcxRadioGroup;
    cxGridDBTableView1CEP: TcxGridDBColumn;
    cxGridDBTableView1DATACAD: TcxGridDBColumn;
    cxGridDBTableView1ENDERECO: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1BAIRRO: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1FONE2: TcxGridDBColumn;
    cxGridDBTableView1SITE: TcxGridDBColumn;
    cxGridDBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGridDBTableView1DATAALT: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Panel13: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label64: TLabel;
    Label76: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    DBEdit4: TDBEdit;
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    BtCep: TcxButton;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    BtTipo: TcxButton;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    BtCodmunic: TcxButton;
    DBEdit27: TDBEdit;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    btpais: TcxButton;
    cxGroupBox1: TcxGroupBox;
    DBGrid3: TDBGrid;
    PageControl2: TcxPageControl;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    Panel19: TPanel;
    BtAddCliDoc: TcxButton;
    BtRemCliDoc: TcxButton;
    BtVisuDoc: TcxButton;
    DBGrid9: TDBGrid;
    Label26: TLabel;
    Label27: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    EdCnpj: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit26: TDBEdit;
    DBComboBox3: TDBComboBox;
    Panel8: TPanel;
    BtAddFilial: TcxButton;
    BtRevFilial: TcxButton;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

    procedure BtInsereClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativosClick(Sender: TObject);
    procedure BtAddContClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure BtAddFilialClick(Sender: TObject);
    procedure BtRevFilialClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure BtInativClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxDBLookupComboBox4Exit(Sender: TObject);
    procedure BtTipoClick(Sender: TObject);
    procedure cxDBLookupComboBox5Exit(Sender: TObject);
    procedure BtCodmunicClick(Sender: TObject);
    procedure cxDBLookupComboBox6Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure cxButon8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure BtCep2Click(Sender: TObject);
    procedure btpaisClick(Sender: TObject);
    procedure cxDBLookupComboBox8Exit(Sender: TObject);
    procedure BtVisuDocClick(Sender: TObject);
    procedure BtAddCliDocClick(Sender: TObject);
    procedure BtRemCliDocClick(Sender: TObject);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codultreceita, codulclidoc, codultcont, codpesq, codultfilial : integer;
    sql, sql2: String;
  end;

var
  FEntidade: TFEntidade;

implementation

uses Principal, UBiblio, DMSistema, CliCont,
  DM, metodosServ, DMRh, relatorio,
  Municipio,  RelCli, DM2, Pais, DMGerLicitacao
  , TipoEntidade, EntidadeDoc, EntidadeFilial, EntidadeCont;
{$R *.dfm}

procedure TFEntidade.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFEntidade.cxButton4Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFEntidade.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure TFEntidade.cxButton6Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGrid1DBTableView1,'',FDMGerLicitacao.QConEntidade.RecordCount,1);
end;

procedure TFEntidade.cxButton7Click(Sender: TObject);
begin
    close;
end;

procedure TFEntidade.cxButon8Click(Sender: TObject);
var
  ordenar : String;
  i : integer;
begin
  try
    Application.CreateForm(TFRelCli,FRelCli);
    ordenar := '';

    if cxGridDBTableView1.Filtering.MRUItems.Count > 0 then
    begin
      FDMGerLicitacao.QConEntidade2.Filtered := false;
      FDMGerLicitacao.QConEntidade2.Filter := cxGridDBTableView1.Filtering.MRUItems.Items[0].Filter.FilterText;
      FDMGerLicitacao.QConEntidade2.Filtered := true;
    end;

    for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      if cxGridDBTableView1.Columns[i].SortIndex = 0 then
      begin
        ordenar := ordenar + cxGridDBTableView1.Columns[i].DataBinding.FieldName+';';
      end;
    end;
    FDMGerLicitacao.QConEntidade2.IndexFieldNames := ordenar;

    if not fdm.Tempresa.active then
      fdm.Tempresa.Open;
    if fdm.TempresaLOGO.Value <> '' then
    begin
      if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
      begin
        FRelCli.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
        FRelCli.QRImage1 := ProportionalHeight(FRelCli.QRImage1,68);
      end
      else
      begin
        showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
      end;
    end;
    FDMGerLicitacao.QConEntidade2.DisableControls;
    FRelCli.QuickRep1.Preview;
  finally
    FRelCli.Free;
    FRelCli := nil;
    FDMGerLicitacao.QConEntidade2.EnableControls;
    FDMGerLicitacao.QConEntidade2.Filtered := false;
    FDMGerLicitacao.QConEntidade2.Filter := '';
    FDMGerLicitacao.QConEntidade2.IndexFieldNames := '';
  end;
end;

procedure TFEntidade.cxButton9Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGridDBTableView1,'',FDMGerLicitacao.QConEntidade2.RecordCount,1);
end;

procedure TFEntidade.cxDBLookupComboBox4Exit(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeCODLOCAL.Value > 0 then
  begin
    fdm.TLocalizador.Locate('CODIGO', FDMGerLicitacao.TEntidadeCODLOCAL.Value, []);
    FDMGerLicitacao.TEntidadeNOMELOCAL.Value := fdm.TLocalizadorNOME.Value;

  end;
end;

procedure TFEntidade.cxDBLookupComboBox5Exit(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeTIPOCLI.Value > 0 then
  begin
    FDMGerLicitacao.TTipoEntidade.Locate('CODIGO', FDMGerLicitacao.TEntidadeTIPOCLI.Value, []);
    FDMGerLicitacao.TEntidadeDESCTIPOCLI.Value := FDMGerLicitacao.TTipoEntidadeNOME.Value;
  end;
end;

procedure TFEntidade.cxDBLookupComboBox6Exit(Sender: TObject);
begin
    if FDMGerLicitacao.TEntidadeCODMUNICUF.Value > 0 then
    begin
      fdm.TMunicipio.Locate('CODMUNICUF',FDMGerLicitacao.TEntidadeCODMUNICUF.Value,[] );
      FDMGerLicitacao.TEntidadeCODESTADO.Value := fdm.TMunicipioID_ESTADO.value;
      FDMGerLicitacao.TEntidadeCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.value;
      FDMGerLicitacao.TEntidadeUF.Value := fdm.TMunicipioUF.Value;
      FDMGerLicitacao.TEntidadeCIDADE.Value := fdm.TMunicipioDESCRICAO.Value;
    end;
end;

procedure TFEntidade.cxDBLookupComboBox8Exit(Sender: TObject);
begin
    if (FDMGerLicitacao.TEntidadeCODPAIS.Value > 0) then
    begin
      fdm2.TPais.Locate('CODIGO',FDMGerLicitacao.TEntidadeCODPAIS.Value,[]);
      FDMGerLicitacao.TEntidadeNOMEPAIS.Value := fdm2.TPaisNOME.Value;
    end;
end;

procedure TFEntidade.cxButton16Click(Sender: TObject);
var
  cliente : String;
begin
    cliente := inputbox('E-Tech','Informe o código do cliente:','');
    if (trim(cliente) <> '') then
    begin
      FDMGerLicitacao.TEntidade.Close;
      FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := strtoint(cliente);
      FDMGerLicitacao.TEntidade.Open;

      if FDMGerLicitacao.TEntidade.recordcount = 0 then
        ShowMessage('Nenhum cliente encontrado com o código: '+cliente);
    end;
end;

procedure TFEntidade.cxButton17Click(Sender: TObject);
begin
    close;
end;

procedure TFEntidade.BtRemCliDocClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeDoc.RecordCount > 0 then
    FDMGerLicitacao.TEntidadeDoc.Delete;
end;

procedure TFEntidade.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFEntidade.BtInativClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidade.Filtered then
    FDMGerLicitacao.TEntidade.Filtered := False
  else
    FDMGerLicitacao.TEntidade.Filtered := true;
end;

procedure TFEntidade.BtInsereClick(Sender: TObject);
begin
  desativa;
  PDados.Enabled := true;

  FDMGerLicitacao.TEntidade.Append;
  FDMGerLicitacao.TEntidadeCODIGO.Value := 0;
  FDMGerLicitacao.TEntidadeCODPAIS.Value := 1058;
  FDMGerLicitacao.TEntidadeNOMEPAIS.Value := 'BRASIL';
  FDMGerLicitacao.TEntidadeCont.Refresh;
  FDMGerLicitacao.TEntidadeSTATUS.Value := 'A';
  FDMGerLicitacao.TEntidadeOUTRARENDA.Value := 'N';
  FDMGerLicitacao.TEntidadeDATACAD.Value := DateTimeToSQLTimeStamp(now);
  FDMGerLicitacao.TEntidadeDATAALT.Value := DateTimeToSQLTimeStamp(now);
  FDMGerLicitacao.TEntidadeCODUSU.Value := usulogado;
  FDMGerLicitacao.TEntidadeUSUALT.Value := usulogado;

  codultcont := 0;
  codultfilial := 0;

  marcaCamposChave(true);

  BtCodmunic.Enabled := true;
  BtAddCliDoc.Enabled := true;
  BtRemCliDoc.Enabled := true;
  BtVisuDoc.Enabled := true;
  BtAddCont.Enabled := true;
  BtAddFilial.Enabled := true;
  Btpais.Enabled := true;
  BtRevCont.Enabled := true;
  BtRevFilial.Enabled := true;
  BtCep.Enabled := true;
  BtTipo.Enabled := true;
  Panel13.Enabled := True;

  DBedit2.SetFocus;
end;

procedure TFEntidade.btpaisClick(Sender: TObject);
begin
    try
      application.CreateForm(TFPais,FPais);
      FPais.PConsulta.Visible := true;
      if FPais.ShowModal = mrok then
      begin
        FDMGerLicitacao.TEntidadeCODPAIS.Value := fdm2.TPaisNUMERO.Value;
        FDMGerLicitacao.TEntidadeNOMEPAIS.Value := fdm2.TPaisNOME.Value;
      end;
    finally
      FPais.Free;
      FPais := nil;
    end;
end;

procedure TFEntidade.BtEditaClick(Sender: TObject);
begin
  desativa;

  Btpais.Enabled := true;
  BtAddCont.Enabled := true;
  BtAddFilial.Enabled := true;
  BtRevCont.Enabled := true;
  BtRevFilial.Enabled := true;
  BtCep.Enabled := true;
  BtCodmunic.Enabled := true;
  BtTipo.Enabled := true;
  BtAddCliDoc.Enabled := true;
  BtRemCliDoc.Enabled := true;
  BtVisuDoc.Enabled := true;
  PDados.Enabled := true;
  FDMGerLicitacao.TEntidade.Edit;
  FDMGerLicitacao.TEntidadeDATAALT.Value := DateTimeToSQLTimeStamp(now);
  FDMGerLicitacao.TEntidadeUSUALT.Value := usulogado;
  marcaCamposChave(true);

  Panel13.Enabled := True;

  DBEdit2.SetFocus;
end;

procedure TFEntidade.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMGerLicitacao.TEntidade.State in [dsinsert]) then
    begin
      FDMGerLicitacao.TEntidadeCont.CancelUpdates;
      FDMGerLicitacao.TEntidadeFilial.CancelUpdates;
    end;

    FDMGerLicitacao.TEntidade.Cancel;
    PDados.Enabled := false;
    ativa;
    BtInsere.SetFocus;

    BtCodmunic.Enabled := false;
    BtAddCont.Enabled := false;
    Btpais.Enabled := false;
    BtAddFilial.Enabled := false;
    BtRevCont.Enabled := false;
    BtRevFilial.Enabled := false;
    BtCep.Enabled := false;
    BtTipo.Enabled := false;
    BtAddCliDoc.Enabled := false;
    BtRemCliDoc.Enabled := false;
    BtVisuDoc.Enabled := true;

    marcaCamposChave(false);

    Panel13.Enabled := False;
  end;
end;

procedure TFEntidade.BtCep2Click(Sender: TObject);
var
  temp: TStringList;
begin
  if (FDMGerLicitacao.TEntidadeCEPTRABALHO.Value <> '') and (length(FDMGerLicitacao.TEntidadeCEPTRABALHO.Value) = 9) and (IsConnectedToInternet) then
  begin
    if fdm.TConfigFONTECONSULTACEP.Value <> '' then
    begin
      if fdm.TConfigFONTECONSULTACEP.Value = 'BASE4YOU' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsBases4you;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'BUSCARCEP' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsBuscarCep;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'BYJG' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsByJG;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'CEPLIVE' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsCepLivre;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'CORREIOS' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsCorreios;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'DEVMEDIA' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsDevMedia;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'KINGHOST' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsKingHost;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'REPUBLICAVIRTUAL' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsRepublicaVirtual;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'RNSOLUCOES' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsRNSolucoes;
      end;
      FPrincipal.ACBrCEP1.BuscarPorCEP(StringReplace(FDMGerLicitacao.TEntidadeCEPTRABALHO.Value, '-', '',[rfReplaceAll]));

      if (FPrincipal.ACBrCEP1.Enderecos.Count < 1) then
      begin
        showmessage('Nenhum Endereço encontrado!');
      end
      else
      begin
        if FPrincipal.ACBrCEP1.Enderecos[0].Logradouro <> null then
          FDMGerLicitacao.TEntidadeENDTRABALHO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Logradouro)
        else
          FDMGerLicitacao.TEntidadeENDTRABALHO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Bairro <> null then
          FDMGerLicitacao.TEntidadeBAIRROTRABALHO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Bairro)
        else
          FDMGerLicitacao.TEntidadeBAIRROTRABALHO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Municipio <> null then
          FDMGerLicitacao.TEntidadeCIDADETRABALHO.Value := SemAcento(UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Municipio))
        else
          FDMGerLicitacao.TEntidadeCIDADETRABALHO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].UF <> null then
          FDMGerLicitacao.TEntidadeUFTRABALHO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].UF)
        else
          FDMGerLicitacao.TEntidadeUFTRABALHO.Value := '';
      end;
    end
    else
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(FDMGerLicitacao.TEntidadeCEPTRABALHO.Value, '-', '',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;

      if temp.Strings[0] <> null then
        FDMGerLicitacao.TEntidadeENDTRABALHO.Value := UpperCase(temp.Strings[0])
      else
        FDMGerLicitacao.TEntidadeENDTRABALHO.Value := '';

      if temp.Strings[1] <> null then
        FDMGerLicitacao.TEntidadeBAIRROTRABALHO.Value := UpperCase(temp.Strings[1])
      else
        FDMGerLicitacao.TEntidadeBAIRROTRABALHO.Value := '';

      if temp.Strings[2] <> null then
        FDMGerLicitacao.TEntidadeCIDADETRABALHO.Value := SemAcento(UpperCase(temp.Strings[2]))
      else
        FDMGerLicitacao.TEntidadeCIDADETRABALHO.Value := '';

      if temp.Strings[3] <> null then
        FDMGerLicitacao.TEntidadeUFTRABALHO.Value := UpperCase(temp.Strings[3])
      else
        FDMGerLicitacao.TEntidadeUFTRABALHO.Value := '';
    end;
  end;
end;

procedure TFEntidade.BtCepClick(Sender: TObject);
var
  temp: TStringList;
begin
  if (FDMGerLicitacao.TEntidadeCEP.Value <> '') and (length(FDMGerLicitacao.TEntidadeCEP.Value) = 9) and (IsConnectedToInternet) then
  begin
    if fdm.TConfigFONTECONSULTACEP.Value <> '' then
    begin
      if fdm.TConfigFONTECONSULTACEP.Value = 'BASE4YOU' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsBases4you;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'BUSCARCEP' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsBuscarCep;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'BYJG' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsByJG;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'CEPLIVE' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsCepLivre;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'CORREIOS' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsCorreios;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'DEVMEDIA' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsDevMedia;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'KINGHOST' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsKingHost;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'REPUBLICAVIRTUAL' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsRepublicaVirtual;
      end
      else if fdm.TConfigFONTECONSULTACEP.Value = 'RNSOLUCOES' then
      begin
        FPrincipal.ACBrCEP1.WebService := wsRNSolucoes;
      end;
      FPrincipal.ACBrCEP1.BuscarPorCEP(StringReplace(FDMGerLicitacao.TEntidadeCEP.Value, '-', '',[rfReplaceAll]));

      if (FPrincipal.ACBrCEP1.Enderecos.Count < 1) then
      begin
        showmessage('Nenhum Endereço encontrado!');
      end
      else
      begin
        if FPrincipal.ACBrCEP1.Enderecos[0].Logradouro <> null then
          FDMGerLicitacao.TEntidadeENDERECO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Logradouro)
        else
          FDMGerLicitacao.TEntidadeENDERECO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Bairro <> null then
          FDMGerLicitacao.TEntidadeBAIRRO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Bairro)
        else
          FDMGerLicitacao.TEntidadeBAIRRO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Municipio <> null then
          FDMGerLicitacao.TEntidadeCIDADE.Value := SemAcento(UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Municipio))
        else
          FDMGerLicitacao.TEntidadeCIDADE.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].UF <> null then
          FDMGerLicitacao.TEntidadeUF.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].UF)
        else
          FDMGerLicitacao.TEntidadeUF.Value := '';
      end;
    end
    else
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(FDMGerLicitacao.TEntidadeCEP.Value, '-', '',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;

      if temp.Strings[0] <> null then
        FDMGerLicitacao.TEntidadeENDERECO.Value := UpperCase(temp.Strings[0])
      else
        FDMGerLicitacao.TEntidadeENDERECO.Value := '';

      if temp.Strings[1] <> null then
        FDMGerLicitacao.TEntidadeBAIRRO.Value := UpperCase(temp.Strings[1])
      else
        FDMGerLicitacao.TEntidadeBAIRRO.Value := '';

      if temp.Strings[2] <> null then
        FDMGerLicitacao.TEntidadeCIDADE.Value := SemAcento(UpperCase(temp.Strings[2]))
      else
        FDMGerLicitacao.TEntidadeCIDADE.Value := '';

      if temp.Strings[3] <> null then
        FDMGerLicitacao.TEntidadeUF.Value := UpperCase(temp.Strings[3])
      else
        FDMGerLicitacao.TEntidadeUF.Value := '';
    end;

    if FDMGerLicitacao.TEntidadeCIDADE.Value <> '' then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := FDMGerLicitacao.TEntidadeCIDADE.Value;
      fdm.QBuscaMunic.Open;
      FDMGerLicitacao.TEntidadeCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      FDMGerLicitacao.TEntidadeCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
      FDMGerLicitacao.TEntidadeCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;
    end;

    DBEdit6.SetFocus;
  end;
end;

procedure TFEntidade.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        FDMGerLicitacao.TEntidadeCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        FDMGerLicitacao.TEntidadeCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.Value;
        FDMGerLicitacao.TEntidadeCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.Value;
        FDMGerLicitacao.TEntidadeUF.Value := fdm.TMunicipioUF.Value;
        FDMGerLicitacao.TEntidadeCIDADE.Value := fdm.TMunicipioDESCRICAO.Value;
      end;
    finally
      FMunicipio.Free;
      FMunicipio := nil;
    end;
end;

procedure TFEntidade.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if not (fdm.TConfigCAMPOSOBRIGCLIFOR.Value = 'S') then
  begin
    if FDMGerLicitacao.TEntidadeNOME.Value = '' then
    begin
      showmessage('O campo Nome / Razão Social é obrigatório!');
      DBEdit2.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeCEP.Value = '' then
    begin
      showmessage('O campo CEP é obrigatório!');
      DBEdit15.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeFONE.Value = '' then
    begin
      showmessage('O campo telefone é obrigatório!');
      DBEdit29.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeNUMERO.Value = '' then
    begin
      showmessage('O campo número é obrigatório!');
      DBEdit6.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeCIDADE.Value = '' then
    begin
      showmessage('O campo cidade é obrigatório!');
      DBEdit12.SetFocus;
      abort;
    end;

    if not (FDMGerLicitacao.TEntidadeCODPAIS.Value > 0) then
    begin
      showmessage('O campo país é obrigatório!');
      cxDBLookupComboBox8.SetFocus;
      abort;
    end;


    if not (FDMGerLicitacao.TEntidadeCODMUNIC.Value > 0) and (FDMGerLicitacao.TEntidadeCODPAIS.Value = 1058)then
    begin
      showmessage('O campo código do município é obrigatório!');
      cxDBLookupComboBox6.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeUF.Value = '' then
    begin
      showmessage('O campo UF é obrigatório!');
      DBComboBox2.SetFocus;
      abort;
    end;

    if FDMGerLicitacao.TEntidadeENDERECO.Value = '' then
    begin
      showmessage('O campo endereço é obrigatório!');
      DBEdit3.SetFocus;
      abort;
    end;

    if not (FDMGerLicitacao.TEntidadeTIPOCLI.Value > 0) then
    begin
      showmessage('O campo tipo da entidade é obrigatório!');
      cxDBLookupComboBox5.SetFocus;
      abort;
    end;

  if messagedlg('Confirmar a entidade ' + FDMGerLicitacao.TEntidadeNOME.Value + '?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (FDMGerLicitacao.TEntidadeCODIGO.Value = 0) then
    begin
      codigo := ultimo('entidade', 'codigo');
    end
    else
      codigo := FDMGerLicitacao.TEntidadeCODIGO.Value;

    if (FDMGerLicitacao.TEntidadeCODIGO.Value = 0) then
    begin
      FDMGerLicitacao.TEntidadeFilial.First;
      while not FDMGerLicitacao.TEntidadeFilial.Eof do
      begin
        FDMGerLicitacao.TEntidadeFilial.Edit;
        FDMGerLicitacao.TEntidadeFilialCODCLI.Value := codigo;
        FDMGerLicitacao.TEntidadeFilial.Post;
        //FDMGerLicitacao.TEntidadeFilial.Next;
      end;

      FDMGerLicitacao.TEntidadeCont.First;
      while not FDMGerLicitacao.TEntidadeCont.Eof do
      begin
        FDMGerLicitacao.TEntidadeCont.Edit;
        FDMGerLicitacao.TEntidadeContCODCLI.Value := codigo;
        FDMGerLicitacao.TEntidadeCont.Post;
        //FDMGerLicitacao.TEntidadeCont.Next;
      end;


      FDMGerLicitacao.TEntidadeDoc.First;
      while not FDMGerLicitacao.TEntidadeDoc.Eof do
      begin
        FDMGerLicitacao.TEntidadeDoc.Edit;
        FDMGerLicitacao.TEntidadeDocCODCLI.Value := codigo;
        FDMGerLicitacao.TEntidadeDoc.Post;
        //FDMGerLicitacao.TEntidadeCont.Next;
      end;

      FDMGerLicitacao.TEntidadeCODIGO.Value := codigo;
    end;

    FDMGerLicitacao.TEntidade.Post;
    FDMGerLicitacao.TEntidade.ApplyUpdates(-1);

    FDMGerLicitacao.TEntidadeCont.ApplyUpdates(-1);

    FDMGerLicitacao.TEntidadeFilial.ApplyUpdates(-1);

    FDMGerLicitacao.TEntidadeDoc.ApplyUpdates(-1);

    ativa;
    BtInsere.SetFocus;

    BtAddCont.Enabled := false;
    Btpais.Enabled := false;
    BtRevCont.Enabled := false;
    BtRevFilial.Enabled := false;
    BtAddCliDoc.Enabled := false;
    BtRemCliDoc.Enabled := false;
    BtVisuDoc.Enabled := true;
    BtCep.Enabled := false;

    marcaCamposChave(false);
    BtCodmunic.Enabled := false;
    BtTipo.Enabled := false;
    Panel13.Enabled := False;

    FDMGerLicitacao.QConEntidade.Refresh;

    if FDMGerLicitacao.QEntidadePesq.Active then
      FDMGerLicitacao.QEntidadePesq.Refresh;
    if FDMGerLicitacao.QEntidadePesq2.Active then
      FDMGerLicitacao.QEntidadePesq2.Refresh;
  end;
  end;
end;

procedure TFEntidade.BtConsultarClick(Sender: TObject);
var
  filtrando : boolean;
begin
    filtrando := false;
    FDMGerLicitacao.QConEntidade2.Close;
    sql2 := '';
    sql2 := sql2 + 'select * from entidade';
    if not ckinativ2.Checked then
    begin
      if filtrando then
      begin
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      sql2 := sql2 + ' status = '+QuotedStr('A');
    end;

    if DtMovInicial.Text <> '' then
    begin
      if filtrando then
      begin
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      if rgdata.ItemIndex = 0 then
      begin
        sql2 := sql2 + ' DATACAD >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtMovInicial.Date));
      end
      else
      begin
        sql2 := sql2 + ' DATAALT >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtMovInicial.Date));
      end;
    end;


    if DtMovfinal.Text <> '' then
    begin
      if filtrando then
      begin
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      if rgdata.ItemIndex = 0 then
      begin
        sql2 := sql2 + ' DATACAD <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtMovfinal.Date));
      end
      else
      begin
        sql2 := sql2 + ' DATAALT <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',Dtmovfinal.Date));
      end;
    end;

    FDMGerLicitacao.QConEntidade2.open;
end;

procedure TFEntidade.BtRevContClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeCont.RecordCount > 0 then
    FDMGerLicitacao.TEntidadeCont.Delete;
end;

procedure TFEntidade.BtRevFilialClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeFilial.RecordCount > 0 then
    FDMGerLicitacao.TEntidadeFilial.Delete;
end;

procedure TFEntidade.BtTipoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFTipoEntidade, FTipoEntidade);
    FTipoEntidade.PConsulta.Visible := true;
    if FTipoEntidade.ShowModal = mrok then
    begin
      FDMGerLicitacao.TEntidadeTIPOCLI.Value := FDMGerLicitacao.TTipoEntidadeCODIGO.Value;
      FDMGerLicitacao.TEntidadeDESCTIPOCLI.Value := FDMGerLicitacao.TTipoEntidadeNOME.Value;
    end;
  finally
    FTipoEntidade.Free;
    FTipoEntidade := nil;
  end;
end;

procedure TFEntidade.BtVisuDocClick(Sender: TObject);
begin
  if FDMGerLicitacao.TEntidadeDoc.RecordCount > 0 then
  begin
    if (FileExists(FDMGerLicitacao.TEntidadeDocLOCALARQ.Value)) then
    begin
      if (FDMGerLicitacao.TEntidadeDocLOCALARQ.Value <> '') then
        ShellExecuteA(0, nil, PansiChar(FDMGerLicitacao.TEntidadeDocLOCALARQ.Value), nil, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TFEntidade.BtAddCliDocClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFEntidadeDoc, FEntidadeDoc);
    IF FDMGerLicitacao.TEntidadeDoc.RecordCount > 0 then
    begin
      FDMGerLicitacao.TEntidadeDoc.Last;
      codulclidoc := FDMGerLicitacao.TEntidadeDocITEM.Value;
    end;
    FDMGerLicitacao.TEntidadeDoc.Append;
    FEntidadeDoc.ShowModal;
  finally
    FEntidadeDoc.Free;
    FEntidadeDoc := nil;
  end;
end;

procedure TFEntidade.BtAddContClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFEntidadeCont, FEntidadeCont);
    IF FDMGerLicitacao.TEntidadeCont.RecordCount > 0 then
    begin
      FDMGerLicitacao.TEntidadeCont.Last;
      codultcont := FDMGerLicitacao.TEntidadeContITEM.Value;
    end;
    FDMGerLicitacao.TEntidadeCont.Append;
    FEntidadeCont.ShowModal;
  finally
    FEntidadeCont.Free;

  end;
end;

procedure TFEntidade.BtAddFilialClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFEntidadeFilial, FEntidadeFilial);
    IF FDMGerLicitacao.TEntidadeFilial.RecordCount > 0 then
    begin
      FDMGerLicitacao.TEntidadeFilial.Last;
      codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
    end;
    FDMGerLicitacao.TEntidadeFilial.Append;
    FEntidadeFilial.ShowModal;
  finally
    FEntidadeFilial.Free;

  end;
end;

procedure TFEntidade.DBGrid3DblClick(Sender: TObject);
begin
  IF FDMGerLicitacao.TEntidadeCont.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFEntidadeCont, FEntidadeCont);
      codultcont := FDMGerLicitacao.TEntidadeContITEM.Value;
      FDMGerLicitacao.TEntidadeCont.Edit;
      FEntidadeCont.ShowModal;
    finally
      FEntidadeCont.Free;
    end;
  end;
end;

procedure TFEntidade.DBGrid4DblClick(Sender: TObject);
begin
  IF FDMGerLicitacao.TEntidadeFilial.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFEntidadeFilial, FEntidadeFilial);
      codultfilial := FDMGerLicitacao.TEntidadeFilialITEM.Value;
      FDMGerLicitacao.TEntidadeFilial.Edit;
      FEntidadeFilial.ShowModal;
    finally
      FEntidadeFilial.Free;
    end;
  end;
end;

procedure TFEntidade.DBGrid9DblClick(Sender: TObject);
begin
  IF FDMGerLicitacao.TEntidadeDoc.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFEntidadeDoc, FEntidadeDoc);
      codulclidoc := FDMGerLicitacao.TEntidadeDocITEM.Value;
      FDMGerLicitacao.TEntidadeDoc.Edit;
      FEntidadeDoc.ShowModal;
    finally
      FEntidadeDoc.Free;
    end;
  end;
end;

procedure TFEntidade.FormShow(Sender: TObject);
begin
  fdm.TAtividade.Open;
  fdm2.TPais.Open;
  FDMGerLicitacao.QConEntidade.close;
  FDMGerLicitacao.QConEntidade.Filtered := False;

  sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, INSCEST, CEP, DATACAD';
  sql := sql + ' ,CPF, RG, ENDERECO, NUMERO, BAIRRO, CIDADE, CNPJ, UF, STATUS, FONE';
  sql := sql + ' from entidade';
  sql := sql + ' where status = ' + QuotedStr('A');

  if codpesq > 0 then
  begin
    FDMGerLicitacao.TEntidade.Close;
    FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := codpesq;
    FDMGerLicitacao.TEntidade.Open;
  end
  else
  begin
    FDMGerLicitacao.TEntidade.Close;
    FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := 99999;
    FDMGerLicitacao.TEntidade.Open;
  end;

  FDMGerLicitacao.QConEntidade.Open;
  FDMGerLicitacao.QConEntidade.IndexFieldNames := 'NOME';
  FDMGerLicitacao.QConEntidade.First;

  cxPageControl1.ActivePageIndex := 1;

  FDMGerLicitacao.TTipoEntidade.Open;
  FDMGerLicitacao.QTipoEntidadePesq.Open;
  fdm.TMunicipio.Open;

  EdNome.SetFocus;
end;

procedure TFEntidade.DBEdit12Exit(Sender: TObject);
begin
    if not (FDMGerLicitacao.TEntidadeCODMUNIC.Value >0) and (FDMGerLicitacao.TEntidadeCIDADE.Value <> '') then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := FDMGerLicitacao.TEntidadeCIDADE.Value;
      fdm.QBuscaMunic.Open;
      FDMGerLicitacao.TEntidadeCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      FDMGerLicitacao.TEntidadeCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
    end;
end;

procedure TFEntidade.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMGerLicitacao.QConEntidade.Next;
  end;

  if (key = vk_up)then
  begin
    FDMGerLicitacao.QConEntidade.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    FDMGerLicitacao.TEntidade.Close;
    FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConEntidadeCODIGO.Value;
    FDMGerLicitacao.TEntidade.Open;
    cxButton4Click(sender);
  end
  else if (PConsulta.Visible = false) and (Key = 13) then
  begin
      cxPageControl1.ActivePageIndex := 0;
  end;
end;

procedure TFEntidade.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := FDMGerLicitacao.QConEntidadeCODIGO.Value;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin
    FDMGerLicitacao.QConEntidade.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMGerLicitacao.QConEntidade.Filtered:=true;
    FDMGerLicitacao.QConEntidade.Locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    FDMGerLicitacao.QConEntidade.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FDMGerLicitacao.QConEntidade.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMGerLicitacao.QConEntidade.Filtered:=true;
    FDMGerLicitacao.QConEntidade.First;
  end;

end;

procedure TFEntidade.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    FDMGerLicitacao.TEntidade.Close;
    FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConEntidadeCODIGO.Value;
    FDMGerLicitacao.TEntidade.Open;
    if PConsulta.Visible = true then
    begin
      cxButton4Click(sender);
    end
    else
    begin
      cxPageControl1.ActivePageIndex := 0;
    end;
end;

procedure TFEntidade.cxPageControl1Change(Sender: TObject);
begin
  if (FDMGerLicitacao.TEntidade.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (FDMGerLicitacao.TEntidade.State in [dsinsert, dsedit]) then
    begin
      FDMGerLicitacao.TEntidade.Close;
      FDMGerLicitacao.TEntidade.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConEntidadeCODIGO.Value;
      FDMGerLicitacao.TEntidade.Open;
    end;
  end;
end;

procedure TFEntidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FDMGerLicitacao.TEntidade.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end
  else
  begin
    FDMGerLicitacao.QConEntidade.close;
    FDMGerLicitacao.QTipoEntidadePesq.close;
    fdm2.TPais.Close;
    FDMGerLicitacao.QConEntidade2.close;
    // FDMGerLicitacao.TEntidade.Close;
    FDMGerLicitacao.TEntidadeCont.close;
    FDMGerLicitacao.TEntidadeFilial.close;

    fdm.TMunicipio.Close;
//    fdm.TLocalizador.Close;
  end;
end;

procedure TFEntidade.CkInativosClick(Sender: TObject);
begin
  sql := '';
  FDMGerLicitacao.QConEntidade.close;

  if CkInativ.Checked then
  begin
    sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, INSCEST, CEP, DATACAD';
    sql := sql + ' ,CPF, RG, ENDERECO, NUMERO, BAIRRO, CIDADE, CNPJ, UF, STATUS, FONE';
    sql := sql + ' from entidade';
  end
  else
  begin
    sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, INSCEST, CEP, DATACAD ';
    sql := sql + ' ,CPF, RG, ENDERECO, NUMERO, BAIRRO, CIDADE, CNPJ, UF, STATUS, FONE ';
    sql := sql + ' from entidade ';
    sql := sql + ' where status = ' + QuotedStr('A');
  end;
  FDMGerLicitacao.QConEntidade.Open;
end;

end.
