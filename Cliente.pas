unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinBlack, cxPC, cxControls, ExtCtrls, shellapi, acbrcep,
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Buttons,
  cxContainer, cxGroupBox, cxRadioGroup, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxNavigator, cxDBNavigator, cxButtons, DBCtrls,
  Mask, Grids, DBGrids, cxCheckBox, cxDBEdit, cxLookAndFeels, dxSkinsCore,
  dxSkinscxPCPainter, SQLTimSt, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxCalendar, cxPCdxBarPopupMenu;

type
  TFCliente = class(TForm)
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
    Label35: TLabel;
    BtConCodCondPag: TcxButton;
    CbListaPreco: TDBLookupComboBox;
    Label36: TLabel;
    cxButton10: TcxButton;
    CbAtendente: TDBLookupComboBox;
    Label37: TLabel;
    cxButton11: TcxButton;
    CbVendedor: TDBLookupComboBox;
    Label48: TLabel;
    cxButton12: TcxButton;
    CbLocalizador: TDBLookupComboBox;
    Label49: TLabel;
    cxButton13: TcxButton;
    CbTipoCli: TDBLookupComboBox;
    Label50: TLabel;
    cxButton14: TcxButton;
    CbRamoAtiv: TDBLookupComboBox;
    Label51: TLabel;
    Label52: TLabel;
    DtMovInicial: TcxDateEdit;
    DtMovFinal: TcxDateEdit;
    RgData: TcxRadioGroup;
    cxGridDBTableView1PESSOA: TcxGridDBColumn;
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
    cxGridDBTableView1DTNASC: TcxGridDBColumn;
    cxGridDBTableView1NOMEATIV: TcxGridDBColumn;
    cxGridDBTableView1NOMEVEND: TcxGridDBColumn;
    cxGridDBTableView1NOMEVEND2: TcxGridDBColumn;
    cxGridDBTableView1NOMEATEND: TcxGridDBColumn;
    cxGridDBTableView1NOMEATEND2: TcxGridDBColumn;
    cxGridDBTableView1NOMELOCAL: TcxGridDBColumn;
    cxGridDBTableView1DESCTIPOCLI: TcxGridDBColumn;
    cxGridDBTableView1NOMESETOR: TcxGridDBColumn;
    cxGridDBTableView1NOMELISTA: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxButton15: TcxButton;
    PageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label44: TLabel;
    EdCFP: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit39: TDBEdit;
    cxTabSheet4: TcxTabSheet;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    EdCnpj: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit26: TDBEdit;
    DBComboBox3: TDBComboBox;
    cxTabSheet7: TcxTabSheet;
    Panel11: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit21: TDBEdit;
    cxTabSheet8: TcxTabSheet;
    Panel5: TPanel;
    Panel8: TPanel;
    BtAddFilial: TcxButton;
    BtRevFilial: TcxButton;
    DBGrid4: TDBGrid;
    cxTabSheet6: TcxTabSheet;
    Panel4: TPanel;
    Panel10: TPanel;
    BtAddRefBanc: TcxButton;
    BtRevRefBanc: TcxButton;
    DBGrid2: TDBGrid;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    Panel9: TPanel;
    BtAddRefCom: TcxButton;
    BtRevRefCom: TcxButton;
    DBGrid1: TDBGrid;
    cxTabSheet13: TcxTabSheet;
    Panel17: TPanel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    BtVend: TcxButton;
    DBEdit16: TDBEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    BtAtend: TcxButton;
    DBEdit17: TDBEdit;
    cxTabSheet15: TcxTabSheet;
    Panel19: TPanel;
    BtAddCliDoc: TcxButton;
    BtRemCliDoc: TcxButton;
    BtVisuDoc: TcxButton;
    DBGrid9: TDBGrid;
    cxTabSheet10: TcxTabSheet;
    DBGrid3: TDBGrid;
    Panel14: TPanel;
    BtAddCont: TcxButton;
    BtRevCont: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    Label16: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label33: TLabel;
    Label64: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
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
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    BtAtiv: TcxButton;
    BtCep: TcxButton;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    BtTipo: TcxButton;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    BtCodmunic: TcxButton;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    BtPreco: TcxButton;
    DBEdit27: TDBEdit;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    btpais: TcxButton;
    DBMemo1: TDBMemo;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtRevRefComClick(Sender: TObject);
    procedure BtAddRefComClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativosClick(Sender: TObject);
    procedure BtAddContClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BtRevContClick(Sender: TObject);
    procedure BtAddRefBancClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BtRevRefBancClick(Sender: TObject);
    procedure BtAddFilialClick(Sender: TObject);
    procedure BtRevFilialClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure BtVendClick(Sender: TObject);
    procedure BtAtendClick(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure BtInativClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure BtTipoClick(Sender: TObject);
    procedure cxDBLookupComboBox5Exit(Sender: TObject);
    procedure BtCodmunicClick(Sender: TObject);
    procedure cxDBLookupComboBox6Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure BtAddRefPesClick(Sender: TObject);
    procedure BtRemRefPesClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButon8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure btpaisClick(Sender: TObject);
    procedure cxDBLookupComboBox8Exit(Sender: TObject);
    procedure BtVisuDocClick(Sender: TObject);
    procedure BtAddCliDocClick(Sender: TObject);
    procedure BtRemCliDocClick(Sender: TObject);
    procedure DBGrid9DblClick(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    codultreceita, codultdep, codulclidoc, codultcont, codultrefcom, codultrefbanc, codultrefpes, codultfilial, codpesq: integer;
    sql, sql2: String;
  end;

var
  FCliente: TFCliente;

implementation

uses DMCliente, Principal, UBiblio, DMSistema, CliCont, CliRefBanc,
  CliRefCom, CliFilial, DM, metodosServ, Vendedores, DMRh,  relatorio,
  Customizar, Localizador, TipoCliente, Municipio, CliRefPes,
  RelConCliente, RelCli, DM2, CliDoc, Pais;
{$R *.dfm}

procedure TFCliente.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFCliente.cxButton4Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFCliente.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure TFCliente.cxButton6Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGrid1DBTableView1,'',FDMCliente.QConCliente.RecordCount,1);
end;

procedure TFCliente.cxButton7Click(Sender: TObject);
begin
    close;
end;

procedure TFCliente.cxButon8Click(Sender: TObject);
var
  ordenar : String;
  i : integer;
begin
  try
    Application.CreateForm(TFRelCli,FRelCli);
    ordenar := '';

    if cxGridDBTableView1.Filtering.MRUItems.Count > 0 then
    begin
      FdmCliente.QConCliente2.Filtered := false;
      FdmCliente.QConCliente2.Filter := cxGridDBTableView1.Filtering.MRUItems.Items[0].Filter.FilterText;
      FdmCliente.QConCliente2.Filtered := true;
    end;

    for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      if cxGridDBTableView1.Columns[i].SortIndex = 0 then
      begin
        ordenar := ordenar + cxGridDBTableView1.Columns[i].DataBinding.FieldName+';';
      end;
    end;
    FdmCliente.QConCliente2.IndexFieldNames := ordenar;

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
    FdmCliente.QConCliente2.DisableControls;
    FRelCli.QuickRep1.Preview;
  finally
    FRelCli.Free;
    FRelCli := nil;
    FdmCliente.QConCliente2.EnableControls;
    FdmCliente.QConCliente2.Filtered := false;
    FdmCliente.QConCliente2.Filter := '';
    FdmCliente.QConCliente2.IndexFieldNames := '';
  end;
end;

procedure TFCliente.cxButton9Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGridDBTableView1,'',FDMCliente.QConCliente2.RecordCount,1);
end;

procedure TFCliente.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if fdmcliente.TClienteCODATIV.Value > 0 then
  begin
    fdm.TAtividade.Locate('CODIGO', fdmcliente.TClienteCODATIV.Value, []);
    fdmcliente.TClienteNOMEATIV.Value := fdm.TAtividadeNOME.Value;
  end;
end;

procedure TFCliente.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  if fdmcliente.TClienteCODVEND2.Value > 0 then
  begin
    fdmrh.TVendedor.Locate('CODIGO', fdmcliente.TClienteCODVEND2.Value, []);
    fdmcliente.TClienteNOMEVEND2.Value := fdmrh.TVendedorNOME.Value;

  end;

end;

procedure TFCliente.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  if fdmcliente.TClienteCODATEND2.Value > 0 then
  begin
    fdmrh.TVendedor.Locate('CODIGO', fdmcliente.TClienteCODATEND2.Value, []);
    fdmcliente.TClienteNOMEATEND2.Value := fdmrh.TVendedorNOME.Value;

  end;

end;

procedure TFCliente.cxDBLookupComboBox5Exit(Sender: TObject);
begin
  if FdmCliente.TClienteTIPOCLI.Value > 0 then
  begin
    FdmCliente.TTipoCliente.Locate('CODIGO', fdmcliente.TClienteTIPOCLI.Value, []);
    FdmCliente.TClienteDESCTIPOCLI.Value := FdmCliente.TTipoClienteNOME.Value;

  end;
end;

procedure TFCliente.cxDBLookupComboBox6Exit(Sender: TObject);
begin
    if fdmcliente.TClienteCODMUNICUF.Value > 0 then
    begin
      fdm.TMunicipio.Locate('CODMUNICUF',fdmcliente.TClienteCODMUNICUF.Value,[] );
      fdmcliente.TClienteCODESTADO.Value := fdm.TMunicipioID_ESTADO.value;
      fdmcliente.TClienteCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.value;
      fdmcliente.TClienteUF.Value := fdm.TMunicipioUF.Value;
      fdmcliente.TClienteCIDADE.Value := fdm.TMunicipioDESCRICAO.Value;

      FDMRh.qbuscavend.close;
      FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNIC.Value;
      FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'INTERNO';
      FDMRh.qbuscavend.open;

      fdmcliente.TClienteCODVEND.Value := FDMRh.QBuscaVendCODVEND.Value;
      fdmcliente.TClienteNOMEVEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;

      FDMRh.qbuscavend.close;
      FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNIC.Value;
      FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'EXTERNO';
      FDMRh.qbuscavend.open;

      fdmcliente.TClienteCODATEND.Value := FDMRh.QBuscaVendCODVEND.Value;
      fdmcliente.TClienteNOMEATEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;
    end;
end;

procedure TFCliente.cxDBLookupComboBox8Exit(Sender: TObject);
begin
    if (fdmcliente.TClienteCODPAIS.Value > 0) then
    begin
      fdm2.TPais.Locate('CODIGO',fdmcliente.TClienteCODPAIS.Value,[]);
      fdmcliente.TClienteNOMEPAIS.Value := fdm2.TPaisNOME.Value;
    end;
end;

procedure TFCliente.cxButton10Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFVendedores, FVendedores);
    FVendedores.PConsulta.Visible := true;
    FVendedores.tipo := 'INTERNO';
    if FVendedores.ShowModal = mrok then
    begin
      cbatendente.KeyValue := fdmrh.TVendedorCODIGO.Value;
    end;
  finally
    FVendedores.Free;
    FVendedores := nil;
  end;
end;

procedure TFCliente.cxButton11Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFVendedores, FVendedores);
    FVendedores.PConsulta.Visible := true;
    FVendedores.tipo := 'EXTERNO';
    if FVendedores.ShowModal = mrok then
    begin
      cbvendedor.KeyValue := fdmrh.TVendedorCODIGO.Value;
    end;
  finally
    FVendedores.Free;
  end;
end;

procedure TFCliente.cxButton15Click(Sender: TObject);
var
  sqlgera : string;
  codigo : integer;
begin
  sqlgera := '';

  if messagedlg('Tem certeza que deseja gerar o fornecedor ' + fdmcliente.TClienteNOME.Value + '?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    codigo := ultimo('fornec', 'codigo');

    sqlgera := sqlgera + ' INSERT INTO fornec(CODIGO,CODUSU,NOME,CNPJ,INSCEST,CPF,RG,ENDERECO,PAIS,NUMERO,BAIRRO,CIDADE,UF,STATUS ';
    sqlgera := sqlgera + ' ,EMAIL,FONE,SITE,NOMEFANTA,OBSERVACAO,PESSOA,CEP,DATACAD,DATAALT,USUALT,COMPLEMENTO,CODATIV,NOMEATIV ';
    sqlgera := sqlgera + ' ,DATAULTNOTA,CODESTADO,CODMUNIC,FONE2,CONTATO,FONE3,CODMUNICUF) ';

    sqlgera := sqlgera + ' SELECT ';
    sqlgera := sqlgera + inttostr(codigo)+','+inttostr(usulogado)+',NOME,CNPJ,INSCEST,CPF,RG,ENDERECO,PAIS,NUMERO,BAIRRO,CIDADE,UF,STATUS ';
    sqlgera := sqlgera + ' ,EMAIL,FONE,SITE,NOMEFANTA,OBSERVACAO,PESSOA,CEP,DATACAD,DATAALT,USUALT,COMPLEMENTO,CODATIV,NOMEATIV ';
    sqlgera := sqlgera + ' ,DATAULTNOTA,CODESTADO,CODMUNIC,FONE2,CONTATO,FONE3,CODMUNICUF ';
    sqlgera := sqlgera + ' FROM cliente ';
    sqlgera := sqlgera + ' where cliente.codigo = '+inttostr(fdmcliente.TClienteCODIGO.Value);

    execsql(sqlgera);

    showmessage('Fornecedor gerado com sucesso!');
  end;
end;

procedure TFCliente.cxButton16Click(Sender: TObject);
var
  cliente : String;
begin
    cliente := inputbox('E-Tech','Informe o código do cliente:','');
    if (trim(cliente) <> '') then
    begin
      FdmCliente.TCliente.Close;
      FdmCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := strtoint(cliente);
      FdmCliente.TCliente.Open;

      if fdmcliente.tcliente.recordcount = 0 then
        ShowMessage('Nenhum cliente encontrado com o código: '+cliente);
    end;
end;

procedure TFCliente.cxButton17Click(Sender: TObject);
begin
    close;
end;

procedure TFCliente.BtRemCliDocClick(Sender: TObject);
begin
  if fdmcliente.TCliDoc.RecordCount > 0 then
    fdmcliente.TCliDoc.Delete;
end;

procedure TFCliente.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFCliente.cxButton2Click(Sender: TObject);
var ordenar : string;
    i : integer;
begin
  try
    Application.CreateForm(TFRelConCliente,FRelConCliente);
    ordenar := '';

    if cxGrid1DBTableView1.Filtering.MRUItems.Count > 0 then
    begin
      FdmCliente.QConCliente.Filtered := false;
      FdmCliente.QConCliente.Filter := cxGrid1DBTableView1.Filtering.MRUItems.Items[0].Filter.FilterText;
      FdmCliente.QConCliente.Filtered := true;
    end;

    for i := 0 to cxGrid1DBTableView1.ColumnCount - 1 do
    begin
      if cxGrid1DBTableView1.Columns[i].SortIndex = 0 then
      begin
        ordenar := ordenar + cxGrid1DBTableView1.Columns[i].DataBinding.FieldName+';';
      end;
    end;
    FdmCliente.QConCliente.IndexFieldNames := ordenar;

    if not fdm.Tempresa.active then
      fdm.Tempresa.Open;
    if fdm.TempresaLOGO.Value <> '' then
    begin
      if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
      begin
        FRelConCliente.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
        FRelConCliente.QRImage1 := ProportionalHeight(FRelConCliente.QRImage1,68);
      end
      else
      begin
        showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
      end;
    end;
    FdmCliente.QConCliente.DisableControls;
    FRelConCliente.QuickRep1.Preview;
  finally
    FRelConCliente.Free;
    FRelConCliente := nil;
    FdmCliente.QConCliente.EnableControls;
    FdmCliente.QConCliente.Filtered := false;
    FdmCliente.QConCliente.Filter := '';
    FdmCliente.QConCliente.IndexFieldNames := '';
  end;
end;

procedure TFCliente.BtInativClick(Sender: TObject);
begin
  if FdmCliente.TCliente.Filtered then
    FdmCliente.TCliente.Filtered := False
  else
    FdmCliente.TCliente.Filtered := true;
end;

procedure TFCliente.BtInsereClick(Sender: TObject);
begin
  desativa;
  PDados.Enabled := true;

  fdmcliente.TCliente.Append;
  fdmcliente.TClienteCODIGO.Value := 0;
  fdmcliente.TClienteCODPAIS.Value := 1058;
  fdmcliente.TClienteNOMEPAIS.Value := 'BRASIL';
  fdmcliente.TCliCont.Refresh;
  fdmcliente.TClienteSTATUS.Value := 'A';
  fdmcliente.TClienteOUTRARENDA.Value := 'N';
  fdmcliente.TClienteDATACAD.Value := DateTimeToSQLTimeStamp(now);
  fdmcliente.TClienteDATAALT.Value := DateTimeToSQLTimeStamp(now);
  fdmcliente.TClienteCODUSU.Value := usulogado;
  fdmcliente.TClienteUSUALT.Value := usulogado;

  codultdep := 0;
  codultcont := 0;
  codultrefcom := 0;
  codultrefbanc := 0;
  codultfilial := 0;

  marcaCamposChave(true);

  BtCodmunic.Enabled := true;


  BtAddCliDoc.Enabled := true;
  BtRemCliDoc.Enabled := true;
  BtVisuDoc.Enabled := true;



  BtAddRefCom.Enabled := true;

  BtAddRefBanc.Enabled := true;
  BtAddCont.Enabled := true;
  BtAddFilial.Enabled := true;
  Btpais.Enabled := true;

  BtRevRefCom.Enabled := true;
  BtRevRefBanc.Enabled := true;
  BtRevCont.Enabled := true;
  BtRevFilial.Enabled := true;
  BtAtend.Enabled := true;
  BtVend.Enabled := true;
  BtAtiv.Enabled := true;
  BtPreco.Enabled := true;
  BtCep.Enabled := true;
  BtTipo.Enabled := true;

  Panel3.Enabled := True;
  Panel4.Enabled := True;
  Panel5.Enabled := True;
  Panel6.Enabled := True;
  Panel7.Enabled := True;
  Panel10.Enabled := True;
  Panel11.Enabled := True;

  Panel17.Enabled := True;
  DBComboBox1.SetFocus;
end;

procedure TFCliente.btpaisClick(Sender: TObject);
begin
    try
      application.CreateForm(TFPais,FPais);
      FPais.PConsulta.Visible := true;
      if FPais.ShowModal = mrok then
      begin
        fdmcliente.TClienteCODPAIS.Value := fdm2.TPaisNUMERO.Value;
        fdmcliente.TClienteNOMEPAIS.Value := fdm2.TPaisNOME.Value;
      end;
    finally
      FPais.Free;
      FPais := nil;
    end;
end;

procedure TFCliente.BtEditaClick(Sender: TObject);
begin
  desativa;

  BtAddRefCom.Enabled := true;
  Btpais.Enabled := true;
  BtAddRefBanc.Enabled := true;
  BtAddCont.Enabled := true;
  BtAddFilial.Enabled := true;

  BtRevRefCom.Enabled := true;
  BtRevRefBanc.Enabled := true;
  BtRevCont.Enabled := true;
  BtRevFilial.Enabled := true;
  BtAtend.Enabled := true;
  BtVend.Enabled := true;
  BtAtiv.Enabled := true;
  BtPreco.Enabled := true;
  BtCep.Enabled := true;
  BtCodmunic.Enabled := true;
  BtTipo.Enabled := true;

  BtAddCliDoc.Enabled := true;
  BtRemCliDoc.Enabled := true;
  BtVisuDoc.Enabled := true;

  PDados.Enabled := true;
  fdmcliente.TCliente.Edit;
  fdmcliente.TClienteDATAALT.Value := DateTimeToSQLTimeStamp(now);
  fdmcliente.TClienteUSUALT.Value := usulogado;
  marcaCamposChave(true);

  Panel3.Enabled := True;
  Panel4.Enabled := True;
  Panel5.Enabled := True;
  Panel6.Enabled := True;
  Panel7.Enabled := True;
  Panel11.Enabled := True;
  Panel11.Enabled := True;

  Panel17.Enabled := True;
  DBComboBox1.SetFocus;
end;

procedure TFCliente.BtCancelaClick(Sender: TObject);
begin
  if messagedlg('Tem certeza que deseja cancelar a inserção/edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (fdmcliente.TCliente.State in [dsinsert]) then
    begin
      fdmcliente.TCliCont.CancelUpdates;
      fdmcliente.TCliRefBanc.CancelUpdates;
      fdmcliente.TCliRefCom.CancelUpdates;
      fdmcliente.TCliRefPes.CancelUpdates;
      fdmcliente.TCliFilial.CancelUpdates;
    end;

    fdmcliente.TCliente.Cancel;
    PDados.Enabled := false;
    ativa;
    BtInsere.SetFocus;

    BtCodmunic.Enabled := false;
    BtAddRefCom.Enabled := false;
    BtAddRefBanc.Enabled := false;
    BtAddCont.Enabled := false;
    Btpais.Enabled := false;
    BtAddFilial.Enabled := false;
    BtRevRefCom.Enabled := false;
    BtRevRefBanc.Enabled := false;
    BtRevCont.Enabled := false;
    BtRevFilial.Enabled := false;
    BtAtend.Enabled := false;
    BtVend.Enabled := false;
    BtAtiv.Enabled := false;
    BtPreco.Enabled := false;
    BtCep.Enabled := false;
    BtTipo.Enabled := false;
    BtAddCliDoc.Enabled := false;
    BtRemCliDoc.Enabled := false;
    BtVisuDoc.Enabled := false;

    marcaCamposChave(false);

    Panel3.Enabled := False;
    Panel4.Enabled := False;
    Panel5.Enabled := False;
    Panel6.Enabled := False;
    Panel7.Enabled := False;
    Panel10.Enabled := False;
    Panel11.Enabled := False;
    Panel17.Enabled := False;
  end;
end;

procedure TFCliente.BtCepClick(Sender: TObject);
var
  temp: TStringList;
begin
  if (fdmcliente.TClienteCEP.Value <> '') and (length(fdmcliente.TClienteCEP.Value) = 9) and (IsConnectedToInternet) then
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
      FPrincipal.ACBrCEP1.BuscarPorCEP(StringReplace(fdmcliente.TClienteCEP.Value, '-', '',[rfReplaceAll]));

      if (FPrincipal.ACBrCEP1.Enderecos.Count < 1) then
      begin
        showmessage('Nenhum Endereço encontrado!');
      end
      else
      begin
        if FPrincipal.ACBrCEP1.Enderecos[0].Logradouro <> null then
          fdmcliente.TClienteENDERECO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Logradouro)
        else
          fdmcliente.TClienteENDERECO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Bairro <> null then
          fdmcliente.TClienteBAIRRO.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Bairro)
        else
          fdmcliente.TClienteBAIRRO.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].Municipio <> null then
          fdmcliente.TClienteCIDADE.Value := SemAcento(UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].Municipio))
        else
          fdmcliente.TClienteCIDADE.Value := '';

        if FPrincipal.ACBrCEP1.Enderecos[0].UF <> null then
          fdmcliente.TClienteUF.Value := UpperCase(FPrincipal.ACBrCEP1.Enderecos[0].UF)
        else
          fdmcliente.TClienteUF.Value := '';
      end;

    end
    else
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(fdmcliente.TClienteCEP.Value, '-', '',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;

      if temp.Strings[0] <> null then
        fdmcliente.TClienteENDERECO.Value := UpperCase(temp.Strings[0])
      else
        fdmcliente.TClienteENDERECO.Value := '';

      if temp.Strings[1] <> null then
        fdmcliente.TClienteBAIRRO.Value := UpperCase(temp.Strings[1])
      else
        fdmcliente.TClienteBAIRRO.Value := '';

      if temp.Strings[2] <> null then
        fdmcliente.TClienteCIDADE.Value := SemAcento(UpperCase(temp.Strings[2]))
      else
        fdmcliente.TClienteCIDADE.Value := '';

      if temp.Strings[3] <> null then
        fdmcliente.TClienteUF.Value := UpperCase(temp.Strings[3])
      else
        fdmcliente.TClienteUF.Value := '';
    end;



    if fdmcliente.TClienteCIDADE.Value <> '' then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := fdmcliente.TClienteCIDADE.Value;
      fdm.QBuscaMunic.Open;
      fdmcliente.TClienteCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      fdmcliente.TClienteCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
      fdmcliente.TClienteCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;

      if fdmcliente.TClienteCODMUNIC.Value > 0 then
      begin
        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNICUF.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'INTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.TClienteCODVEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.TClienteNOMEVEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;

        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNICUF.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'EXTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.TClienteCODATEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.TClienteNOMEATEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;
      end;
    end;

    DBEdit6.SetFocus;
  end;
end;

procedure TFCliente.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        fdmcliente.TClienteCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        fdmcliente.TClienteCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.Value;
        fdmcliente.TClienteCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.Value;
        fdmcliente.TClienteUF.Value := fdm.TMunicipioUF.Value;
        fdmcliente.TClienteCIDADE.Value := fdm.TMunicipioDESCRICAO.Value;

        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNIC.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'INTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.TClienteCODVEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.TClienteNOMEVEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;

        FDMRh.qbuscavend.close;
        FDMRh.qbuscavend.params.parambyname('CODMUNICUF').asinteger := fdmcliente.TClienteCODMUNIC.Value;
        FDMRh.qbuscavend.params.parambyname('TIPO').asstring := 'EXTERNO';
        FDMRh.qbuscavend.open;

        fdmcliente.TClienteCODATEND.Value := FDMRh.QBuscaVendCODVEND.Value;
        fdmcliente.TClienteNOMEATEND.Value := FDMRh.QBuscaVendNOMEVEND.Value;
      end;

    finally
      FMunicipio.Free;
    end;
end;

procedure TFCliente.BtConfirmaClick(Sender: TObject);
var
  codigo: integer;
begin
  if not (fdm.TConfigCAMPOSOBRIGCLIFOR.Value = 'S') then
  begin
    if not fdmcliente.TClienteTIPOCLI.Value > 0 then
    begin
      showmessage('O campo Tipo do Cliente é obrigatório!');
      cxDBLookupComboBox5.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteNOME.Value = '' then
    begin
      showmessage('O campo Nome / Razão Social é obrigatório!');
      DBEdit2.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteCEP.Value = '' then
    begin
      showmessage('O campo CEP é obrigatório!');
      DBEdit15.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteFONE.Value = '' then
    begin
      showmessage('O campo telefone é obrigatório!');
      DBEdit29.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteNUMERO.Value = '' then
    begin
      showmessage('O campo número é obrigatório!');
      DBEdit6.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteCIDADE.Value = '' then
    begin
      showmessage('O campo cidade é obrigatório!');
      DBEdit12.SetFocus;
      abort;
    end;

    if not (fdmcliente.TClienteCODPAIS.Value > 0) then
    begin
      showmessage('O campo país é obrigatório!');
      cxDBLookupComboBox8.SetFocus;
      abort;
    end;

    if not (fdmcliente.TClienteCODMUNIC.Value > 0) and (fdmcliente.TClienteCODPAIS.Value = 1058)then
    begin
      showmessage('O campo código do município é obrigatório!');
      cxDBLookupComboBox6.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteUF.Value = '' then
    begin
      showmessage('O campo UF é obrigatório!');
      DBComboBox2.SetFocus;
      abort;
    end;

    if fdmcliente.TClienteENDERECO.Value = '' then
    begin
      showmessage('O campo endereço é obrigatório!');
      DBEdit3.SetFocus;
      abort;
    end;

    if not fdmcliente.TClienteTIPOCLI.Value > 0 then
    begin
      showmessage('O campo tipo do cliente é obrigatório!');
      cxDBLookupComboBox5.SetFocus;
      abort;
    end;

    if (fdmcliente.TClientePESSOA.Value <> 'FISICA') and
      (fdmcliente.TClientePESSOA.Value <> 'JURIDICA') then
    begin
      showmessage('O campo pessoa é obrigatório!');
      DBComboBox1.SetFocus;
      abort;

    end;

    if fdmcliente.TClientePESSOA.Value = 'FISICA' then
    begin
      if fdmcliente.TClienteCPF.Value = '' then
      begin
        showmessage('O campo CPF é obrigatório!');
        PageControl2.ActivePageIndex := 0;
        EdCFP.SetFocus;
        abort;
      end;
    end;

    if fdmcliente.TClientePESSOA.Value = 'JURIDICA' then
    begin
      if fdmcliente.TClienteCNPJ.Value = '' then
      begin
        showmessage('O campo CNPJ é obrigatório!');
        PageControl2.ActivePageIndex := 1;
        EdCnpj.SetFocus;
        abort;
      end;
    end;
  end;

  if messagedlg('Confirmar o cliente ' + fdmcliente.TClienteNOME.Value + '?',mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (fdmcliente.TClienteCODIGO.Value = 0) then
    begin
      codigo := ultimo('cliente', 'codigo');
    end
    else
      codigo := fdmcliente.TClienteCODIGO.Value;

    if (fdmcliente.TClienteCODIGO.Value = 0) then
    begin
      fdmcliente.TCliFilial.First;
      while not fdmcliente.TCliFilial.Eof do
      begin
        fdmcliente.TCliFilial.Edit;
        fdmcliente.TCliFilialCODCLI.Value := codigo;
        fdmcliente.TCliFilial.Post;
        //fdmcliente.TCliFilial.Next;
      end;

      fdmcliente.TCliRefBanc.First;
      while not fdmcliente.TCliRefBanc.Eof do
      begin
        fdmcliente.TCliRefBanc.Edit;
        fdmcliente.TCliRefBancCODCLI.Value := codigo;
        fdmcliente.TCliRefBanc.Post;
        //fdmcliente.TCliRefBanc.Next;
      end;

      fdmcliente.TCliRefPes.First;
      while not fdmcliente.TCliRefPes.Eof do
      begin
        fdmcliente.TCliRefPes.Edit;
        fdmcliente.TCliRefPesCODCLI.Value := codigo;
        fdmcliente.TCliRefPes.Post;
        //fdmcliente.TCliRefCom.Next;
      end;

      fdmcliente.TCliRefCom.First;
      while not fdmcliente.TCliRefCom.Eof do
      begin
        fdmcliente.TCliRefCom.Edit;
        fdmcliente.TCliRefComCODCLI.Value := codigo;
        fdmcliente.TCliRefCom.Post;
        //fdmcliente.TCliRefCom.Next;
      end;

      fdmcliente.TCliCont.First;
      while not fdmcliente.TCliCont.Eof do
      begin
        fdmcliente.TCliCont.Edit;
        fdmcliente.TCliContCODCLI.Value := codigo;
        fdmcliente.TCliCont.Post;
        //fdmcliente.TCliCont.Next;
      end;

      fdmcliente.TCliDoc.First;
      while not fdmcliente.TCliDoc.Eof do
      begin
        fdmcliente.TCliDOc.Edit;
        fdmcliente.TCliDocCODCLI.Value := codigo;
        fdmcliente.TCliDoc.Post;
        //fdmcliente.TCliCont.Next;
      end;


      fdmcliente.TClienteCODIGO.Value := codigo;
    end;

    fdmcliente.TCliente.Post;
    fdmcliente.TCliente.ApplyUpdates(-1);

    fdmcliente.TCliCont.ApplyUpdates(-1);
    fdmcliente.TCliRefBanc.ApplyUpdates(-1);
    fdmcliente.TCliRefCom.ApplyUpdates(-1);
    fdmcliente.TCliRefPes.ApplyUpdates(-1);
    fdmcliente.TCliFilial.ApplyUpdates(-1);
    fdmcliente.TCliDoc.ApplyUpdates(-1);


    ativa;
    BtInsere.SetFocus;

    BtAddRefCom.Enabled := false;
    BtAddRefBanc.Enabled := false;
    BtAddCont.Enabled := false;
    BtAddFilial.Enabled := false;
    Btpais.Enabled := false;

    BtRevRefCom.Enabled := false;
    BtRevRefBanc.Enabled := false;
    BtRevCont.Enabled := false;
    BtRevFilial.Enabled := false;


    BtAddCliDoc.Enabled := false;
    BtRemCliDoc.Enabled := false;
    BtVisuDoc.Enabled := false;

    BtAtend.Enabled := false;
    BtVend.Enabled := false;
    BtAtiv.Enabled := false;
    BtPreco.Enabled := false;
    BtCep.Enabled := false;
    marcaCamposChave(false);
    BtCodmunic.Enabled := false;
    BtTipo.Enabled := false;

    Panel3.Enabled := False;
    Panel4.Enabled := False;
    Panel5.Enabled := False;
    Panel6.Enabled := False;
    Panel7.Enabled := False;
    Panel10.Enabled := False;
    Panel11.Enabled := False;
    Panel17.Enabled := False;

    fdmcliente.QConCliente.Refresh;

    if FdmCliente.QCliPesq.Active then
      FdmCliente.QCliPesq.Refresh;
    if FdmCliente.QCliPesq2.Active then
      FdmCliente.QCliPesq2.Refresh;
  end;
end;

procedure TFCliente.BtConsultarClick(Sender: TObject);
var
  filtrando : boolean;
begin
    filtrando := false;
    fdmcliente.QConCliente2.Close;
    sql2 := '';
    sql2 := sql2 + 'select * from cliente';
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

    if cblistapreco.KeyValue > 0 then
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
      sql2 := sql2 + ' CODLISTA = '+inttostr(cblistapreco.KeyValue);
    end;

    if CbAtendente.KeyValue > 0 then
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
      sql2 := sql2 + ' CODATEND2 = '+inttostr(CbAtendente.KeyValue);
    end;

    if CbVendedor.KeyValue > 0 then
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
      sql2 := sql2 + ' CODVEND2 = '+inttostr(cbVendedor.KeyValue);
    end;

    if CbLocalizador.KeyValue > 0 then
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
      sql2 := sql2 + ' CODLOCAL = '+inttostr(CbLocalizador.KeyValue);
    end;

    if CbRamoAtiv.KeyValue > 0 then
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
      sql2 := sql2 + ' CODATIV = '+inttostr(CbRamoAtiv.KeyValue);
    end;

    if CbTipoCli.KeyValue > 0 then
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
      sql2 := sql2 + ' TIPOCLI = '+inttostr(CbTipoCli.KeyValue);
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

    fdmcliente.QConCliente2.open;
end;

procedure TFCliente.BtRemRefPesClick(Sender: TObject);
begin
  if fdmcliente.TCliRefpes.RecordCount > 0 then
    fdmcliente.TCliRefPes.Delete;
end;

procedure TFCliente.BtRevContClick(Sender: TObject);
begin
  if fdmcliente.TCliCont.RecordCount > 0 then
    fdmcliente.TCliCont.Delete;
end;

procedure TFCliente.BtRevFilialClick(Sender: TObject);
begin
  if fdmcliente.TCliFilial.RecordCount > 0 then
    fdmcliente.TCliFilial.Delete;
end;

procedure TFCliente.BtRevRefBancClick(Sender: TObject);
begin
  if fdmcliente.TCliRefBanc.RecordCount > 0 then
    fdmcliente.TCliRefBanc.Delete;
end;

procedure TFCliente.BtRevRefComClick(Sender: TObject);
begin
  if fdmcliente.TCliRefCom.RecordCount > 0 then
    fdmcliente.TCliRefCom.Delete;
end;

procedure TFCliente.BtTipoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFTipoCliente, FTipoCliente);
    FTipoCliente.PConsulta.Visible := true;
    if FTipoCliente.ShowModal = mrok then
    begin
      fdmcliente.TClienteTIPOCLI.Value := FdmCliente.TTipoClienteCODIGO.Value;
      fdmcliente.TClienteDESCTIPOCLI.Value := FdmCliente.TTipoClienteNOME.Value;

    end;
  finally
    FTipoCliente.Free;
  end;
end;

procedure TFCliente.BtVendClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFVendedores, FVendedores);
    FVendedores.PConsulta.Visible := true;
    FVendedores.tipo := 'EXTERNO';
    if FVendedores.ShowModal = mrok then
    begin
      fdmcliente.TClienteCODVEND2.Value := fdmrh.TVendedorCODIGO.Value;
      fdmcliente.TClienteNOMEVEND2.Value := fdmrh.TVendedorNOME.Value;

    end;
  finally
    FVendedores.Free;
  end;
end;

procedure TFCliente.BtVisuDocClick(Sender: TObject);
begin
  if (FDMcliente.TCliDocLOCALARQ.Value <> '') then
    ShellExecuteA(0, nil, PansiChar(FDMcliente.TCliDocLOCALARQ.Value), nil, nil,
      SW_SHOWNORMAL);
end;

procedure TFCliente.BtAddCliDocClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliDoc, FCliDoc);
    IF fdmcliente.TCliDoc.RecordCount > 0 then
    begin
      fdmcliente.TCliDoc.Last;
      codulclidoc := fdmcliente.TCliDocITEM.Value;
    end;
    fdmcliente.TCliDoc.Append;
    FCliDoc.ShowModal;

  finally
    FCliDoc.Free;

  end;
end;

procedure TFCliente.BtAddContClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliCont, FCliCont);
    IF fdmcliente.TCliCont.RecordCount > 0 then
    begin
      fdmcliente.TCliCont.Last;
      codultcont := fdmcliente.TCliContITEM.Value;
    end;
    fdmcliente.TCliCont.Append;
    FCliCont.ShowModal;

  finally
    FCliCont.Free;

  end;
end;

procedure TFCliente.BtAddFilialClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliFilial, FCliFilial);
    IF fdmcliente.TCliFilial.RecordCount > 0 then
    begin
      fdmcliente.TCliFilial.Last;
      codultfilial := fdmcliente.TCliFilialITEM.Value;
    end;
    fdmcliente.TCliFilial.Append;
    FCliFilial.ShowModal;

  finally
    FCliFilial.Free;

  end;
end;

procedure TFCliente.BtAddRefBancClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliRefBanc, FCliRefBanc);
    IF fdmcliente.TCliRefBanc.RecordCount > 0 then
    begin
      fdmcliente.TCliRefBanc.Last;
      codultrefbanc := fdmcliente.TCliRefBancITEM.Value;
    end;
    fdmcliente.TCliRefBanc.Append;
    FCliRefBanc.ShowModal;

  finally
    FCliRefBanc.Free;

  end;
end;

procedure TFCliente.BtAddRefComClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliRefCom, FCliRefCom);
    IF fdmcliente.TCliRefCom.RecordCount > 0 then
    begin
      fdmcliente.TCliRefCom.Last;
      codultdep := fdmcliente.TCliRefComITEM.Value;
    end;
    fdmcliente.TCliRefCom.Append;
    FCliRefCom.ShowModal;

  finally
    FCliRefCom.Free;

  end;
end;

procedure TFCliente.BtAddRefPesClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliRefPes, FCliRefpes);
    IF fdmcliente.TCliRefPes.RecordCount > 0 then
    begin
      fdmcliente.TCliRefPes.Last;
      codultrefpes := fdmcliente.TCliRefPesITEM.Value;
    end;
    fdmcliente.TCliRefPes.Append;
    FCliRefPes.ShowModal;

  finally
    FCliRefPes.Free;

  end;
end;

procedure TFCliente.BtAtendClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFVendedores, FVendedores);
    FVendedores.PConsulta.Visible := true;
    FVendedores.tipo := 'INTERNO';
    if FVendedores.ShowModal = mrok then
    begin
      fdmcliente.TClienteCODATEND2.Value := fdmrh.TVendedorCODIGO.Value;
      fdmcliente.TClienteNOMEATEND2.Value := fdmrh.TVendedorNOME.Value;

    end;
  finally
    FVendedores.Free;
  end;
end;

procedure TFCliente.DBGrid1DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliRefCom.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliRefCom, FCliRefCom);
      codultrefcom := fdmcliente.TCliRefComITEM.Value;
      fdmcliente.TCliRefCom.Edit;
      FCliRefCom.ShowModal;
    finally
      FCliRefCom.Free;
    end;
  end;
end;

procedure TFCliente.DBGrid2DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliRefBanc.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliRefBanc, FCliRefBanc);
      codultrefbanc := fdmcliente.TCliRefBancITEM.Value;
      fdmcliente.TCliRefBanc.Edit;
      FCliRefBanc.ShowModal;
    finally
      FCliRefBanc.Free;
    end;
  end;
end;

procedure TFCliente.DBGrid3DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliCont.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliCont, FCliCont);
      codultcont := fdmcliente.TCliContITEM.Value;
      fdmcliente.TCliCont.Edit;
      FCliCont.ShowModal;
    finally
      FCliCont.Free;
    end;
  end;
end;

procedure TFCliente.DBGrid4DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliFilial.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliFilial, FCliFilial);
      codultfilial := fdmcliente.TCliFilialITEM.Value;
      fdmcliente.TCliFilial.Edit;
      FCliFilial.ShowModal;
    finally
      FCliFilial.Free;
    end;
  end;
end;

procedure TFCliente.DBGrid6DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliRefPes.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliRefPes, FCliRefPes);
      codultrefpes := fdmcliente.TCliRefPesITEM.Value;
      fdmcliente.TCliRefPes.Edit;
      FCliRefPes.ShowModal;
    finally
      FCliRefPes.Free;
    end;
  end;
end;

procedure TFCliente.DBGrid9DblClick(Sender: TObject);
begin
  IF fdmcliente.TCliDoc.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFCliDoc, FCliDoc);
      codulclidoc := fdmcliente.TCliDocITEM.Value;
      fdmcliente.TCliDoc.Edit;
      FCliDoc.ShowModal;
    finally
      FCliDoc.Free;
    end;
  end;
end;

procedure TFCliente.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFCliente.FormShow(Sender: TObject);
begin
  fdm.TAtividade.Open;
  fdm2.TPais.Open;
  fdmcliente.QConCliente.close;
  fdmcliente.QConCliente.Filtered := False;
  sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, CPF, CIDADE, CNPJ, UF, STATUS, FONE, FONE2, CLASSIFICACAO';
  sql := sql + ' from cliente where status = ' + QuotedStr('A');

  if codpesq > 0 then
  begin
    FdmCliente.TCliente.Close;
    FdmCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := codpesq;
    FdmCliente.TCliente.Open;
  end
  else
  begin
    FdmCliente.TCliente.Close;
    FdmCliente.TCliente.Params.ParamByName('CODIGO').AsInteger := 99999;
    FdmCliente.TCliente.Open;
  end;

  FdmCliente.QConCliente.Open;
  FDMCliente.QConCliente.IndexFieldNames := 'NOME';
  FDMCliente.QConCliente.First;

  cxPageControl1.ActivePageIndex := 1;
  FDMRh.TVendedor.Open;
  FDM.TLocalizador.Open;
  FdmCliente.TTipoCliente.Open;
  fdm.TMunicipio.Open;
  FDMRh.QVendPesq.Open;

  EdNome.SetFocus;
end;

procedure TFCliente.PageControl2Change(Sender: TObject);
begin
  if (fdmcliente.TCliente.State in [dsinsert, dsedit]) then
  begin
    if (PageControl2.ActivePageIndex = 1) and (DBComboBox1.ItemIndex = 0) then
    begin
      showmessage('Cliente sem dados juridicos!');
      PageControl2.ActivePageIndex := 0;
    end;

    if (PageControl2.ActivePageIndex = 0) and (DBComboBox1.ItemIndex = 1) then
    begin
      showmessage('Cliente sem dados fisicos!');
      PageControl2.ActivePageIndex := 1;
    end;
  end;
end;

procedure TFCliente.DBComboBox1Change(Sender: TObject);
begin
  if { fdm.TClienteTIPO.Value = 'F' } DBComboBox1.ItemIndex = 1 then
    PageControl2.ActivePageIndex := 1
  else
    PageControl2.ActivePageIndex := 0;
end;

procedure TFCliente.DBEdit12Exit(Sender: TObject);
begin
    if not (fdmcliente.TClienteCODMUNIC.Value >0) and (fdmcliente.TClienteCIDADE.Value <> '') then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := fdmcliente.TClienteCIDADE.Value;
      fdm.QBuscaMunic.Open;
      fdmcliente.TClienteCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      fdmcliente.TClienteCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;
      fdmcliente.TClienteCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
    end;
end;

procedure TFCliente.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMCliente.QConCliente.Next;
  end;

  if (key = vk_up)then
  begin
    FDMCliente.QConCliente.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmcliente.QConClienteCODIGO.Value;
    fdmcliente.TCliente.Open;
    cxButton4Click(sender);
  end
  else if (PConsulta.Visible = false) and (Key = 13) then
  begin
      cxPageControl1.ActivePageIndex := 0;
  end;

end;

procedure TFCliente.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := FDMCliente.QConClienteCODIGO.Value;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin
    FDMCliente.QConCliente.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCliente.QConCliente.Filtered:=true;
    FDMCliente.QConCliente.Locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    FDMCliente.QConCliente.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      FdmCliente.QConCliente.Filter:='nome like' +QuotedStr('%'+EdNome.Text);
    FDMCliente.QConCliente.Filtered:=true;
    FDMCliente.QConCliente.First;
  end;

end;

procedure TFCliente.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmcliente.QConClienteCODIGO.Value;
    fdmcliente.TCliente.Open;

end;

procedure TFCliente.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    {fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmcliente.QConClienteCODIGO.Value;
    fdmcliente.TCliente.Open;}
    if PConsulta.Visible = true then
    begin
      cxButton4Click(sender);
    end
    else
    begin
      cxPageControl1.ActivePageIndex := 0;
    end;
end;

procedure TFCliente.cxPageControl1Change(Sender: TObject);
begin
  if (fdmcliente.TCliente.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (fdmcliente.TCliente.State in [dsinsert, dsedit]) then
    begin
      fdmcliente.TCliente.Close;
      fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := fdmcliente.QConClienteCODIGO.Value;
      fdmcliente.TCliente.Open;
    end;
  end;
end;

procedure TFCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FdmCliente.TCliente.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end
  else
  begin
    FdmCliente.QConCliente.close;
    fdm2.TPais.Close;
    FdmCliente.QConCliente2.close;
    // fdmcliente.TCliente.Close;
    FdmCliente.TCliCont.close;
    FdmCliente.TCliRefBanc.close;
    FdmCliente.TCliRefCom.close;
    FdmCliente.TCliFilial.close;

    FDM.TAtividade.close;
    if not checaform(FVendedores) then
      FDMRh.TVendedor.close;
    fdm.TMunicipio.Close;
//    fdm.TLocalizador.Close;
  end;
end;

procedure TFCliente.CkInativosClick(Sender: TObject);
begin
  fdmcliente.QConCliente.close;

  sql := ' select CODIGO, NOME, NOMEFANTA, PESSOA, CPF, CIDADE, CNPJ, UF, STATUS, FONE, FONE2, CLASSIFICACAO';
  sql := sql + ' from cliente';

  if not (CkInativ.Checked) then
  begin
    sql := sql + ' where status = ' + QuotedStr('A');
  end;
  fdmcliente.QConCliente.Open;

end;

end.
