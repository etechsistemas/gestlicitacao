unit Fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Buttons,
  cxContainer, cxGroupBox, cxRadioGroup, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxNavigator, cxDBNavigator, cxButtons, DBCtrls,
  Mask, Grids, DBGrids, cxCheckBox, cxDBEdit, cxLookAndFeels, dxSkinsCore,
  dxSkinBlack, dxSkinscxPCPainter, SQLTimSt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxPCdxBarPopupMenu;

type
  TFFornecedor = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    PageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
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
    Panel4: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    CkInativ: TcxCheckBox;
    BtImprimir: TcxButton;
    cxButton16: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
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
    Label10: TLabel;
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
    BtCep: TcxButton;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    BtCodmunic: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl2Change(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure BtCepClick(Sender: TObject);
    procedure CkInativosClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxDBLookupComboBox6Exit(Sender: TObject);
    procedure BtCodmunicClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sql: String;
    codpesq: integer;
  end;

var
  FFornecedor: TFFornecedor;

implementation

uses  Principal, UBiblio, DMFornec, metodosServ, DM, DMSistema, Municipio;
{$R *.dfm}

procedure TFFornecedor.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFFornecedor.cxButton4Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFFornecedor.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFFornecedor.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if fdmfornec.TFornecCODATIV.Value > 0 then
  begin
    fdm.TAtividade.Locate('CODIGO', fdmfornec.TFornecCODATIV.Value, []);
    fdmfornec.TFornecNOMEATIV.Value := fdm.TAtividadeNOME.Value;
  end;
end;

procedure TFFornecedor.cxDBLookupComboBox6Exit(Sender: TObject);
begin
    if fdmfornec.TFornecCODMUNICUF.Value > 0 then
    begin
      fdm.QMunicPesq.Locate('CODMUNICUF',fdmfornec.TFornecCODMUNICUF.Value,[] );
      fdmfornec.TFornecCODESTADO.Value := fdm.QMunicPesqID_ESTADO.value;
      fdmfornec.TFornecCODMUNIC.Value := fdm.QMunicPesqID_MUNICIPIO.value;
      fdmfornec.TFornecUF.Value := fdm.QMunicPesqUF.value;
      fdmfornec.TFornecCIDADE.Value := fdm.QMunicPesqDESCRICAO.value;

    end;
end;

procedure TFFornecedor.cxButton16Click(Sender: TObject);
var
  fornec : String;
begin
    fornec := inputbox('E-Tech','Informe o código do cliente:','');
    if (trim(fornec) <> '') then
    begin
      fdmfornec.TFornec.Close;
      fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := strtoint(fornec);
      fdmfornec.TFornec.Open;

      if fdmfornec.TFornec.recordcount = 0 then
        ShowMessage('Nenhum fornecedor encontrado com o código: '+fornec);
    end;
end;

procedure TFFornecedor.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFFornecedor.cxButton2Click(Sender: TObject);
begin
  // RelCustGrid3(self,cxGrid1DBTableView1,'',fdmfornec.QConFornec.RecordCount);
end;

procedure TFFornecedor.BtInsereClick(Sender: TObject);
begin
  desativa;
  BtCep.Enabled := true;

  BtCodmunic.Enabled := true;
  PDados.Enabled := true;

  fdmfornec.TFornec.Append;
  fdmfornec.TFornecCODIGO.Value := 0;
  fdmfornec.TFornecSTATUS.Value := 'A';
  fdmfornec.TFornecDATACAD.Value := DateTimeToSQLTimeStamp(now);
  fdmfornec.TFornecDATAALT.Value := DateTimeToSQLTimeStamp(now);
  fdmfornec.TFornecCODUSU.Value := usulogado;
  fdmfornec.TFornecUSUALT.Value := usulogado;
  //marcaCamposChave(true);

  Panel4.Enabled := true;
  Panel6.Enabled := true;
end;

procedure TFFornecedor.BtEditaClick(Sender: TObject);
begin
  desativa;
  BtCep.Enabled := true;
  BtCodmunic.Enabled := true;

  PDados.Enabled := true;
  fdmfornec.TFornec.Edit;
  fdmfornec.TFornecDATAALT.Value := DateTimeToSQLTimeStamp(now);
  fdmfornec.TFornecUSUALT.Value := usulogado;

  //marcaCamposChave(true);
  DBComboBox1.SetFocus;

  Panel4.Enabled := true;
  Panel6.Enabled := true;
end;

procedure TFFornecedor.BtCancelaClick(Sender: TObject);
begin

  if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    fdmfornec.TFornec.Cancel;
    PDados.Enabled := false;
    ativa;

    BtCodmunic.Enabled := false;

    BtCep.Enabled := false;

    //marcaCamposChave(false);
    BtInsere.SetFocus;

    Panel4.Enabled := false;
    Panel6.Enabled := false;
  end;
end;

procedure TFFornecedor.BtCepClick(Sender: TObject);
var
  temp: TStringList;
begin
  if (fdmfornec.tfornecCEP.Value <> '') and
    (length(fdmfornec.tfornecCEP.Value) = 9) and (IsConnectedToInternet) then
  begin
    temp := TStringList.Create;
    temp.Assign(buscaCep(StringReplace(fdmfornec.tfornecCEP.Value, '-', '',
          [rfReplaceAll])));
    if temp.Strings[0] = 'CEP não encontrado!' then
    begin
      showmessage('CEP não encontrado!');
      abort;
    end;

    if temp.Strings[0] <> null then
      fdmfornec.TFornecENDERECO.Value := UpperCase(temp.Strings[0])
    else
      fdmfornec.TFornecENDERECO.Value := '';

    if temp.Strings[1] <> null then
      fdmfornec.TFornecBAIRRO.Value := UpperCase(temp.Strings[1])
    else
      fdmfornec.TFornecBAIRRO.Value := '';

    if temp.Strings[2] <> null then
      fdmfornec.TFornecCIDADE.Value := UpperCase(temp.Strings[2])
    else
      fdmfornec.TFornecCIDADE.Value := '';

    if temp.Strings[3] <> null then
      fdmfornec.TFornecUF.Value := UpperCase(temp.Strings[3])
    else
      fdmfornec.TFornecUF.Value := '';

    if fdmfornec.TFornecCIDADE.Value <> '' then
    begin
      fdm.QBuscaMunic.Close;
      fdm.QBuscaMunic.Params.ParamByName('DESCRICAO').AsString := fdmfornec.TFornecCIDADE.Value;
      fdm.QBuscaMunic.Open;
      fdmfornec.TFornecCODMUNIC.Value := fdm.QBuscaMunicID_MUNICIPIO.value;
      fdmfornec.TFornecCODMUNICUF.Value := fdm.QBuscaMunicCODMUNICUF.value;
      fdmfornec.TFornecCODESTADO.Value := fdm.QBuscaMunicID_ESTADO.value;
    end;

    DBEdit6.SetFocus;
  end;
end;

procedure TFFornecedor.BtCodmunicClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFMunicipio,FMunicipio);
      FMunicipio.PConsulta.Visible := true;
      if FMunicipio.ShowModal = mrok then
      begin
        fdmfornec.TFornecCODESTADO.Value := fdm.TMunicipioID_ESTADO.Value;
        fdmfornec.TFornecCODMUNIC.Value := fdm.TMunicipioID_MUNICIPIO.Value;
        fdmfornec.TFornecCODMUNICUF.Value := fdm.TMunicipioCODMUNICUF.value;
        fdmfornec.TFornecUF.Value := fdm.TMunicipioUF.value;
        fdmfornec.TFornecCIDADE.Value := fdm.TMunicipioDESCRICAO.value;
      end;

    finally
      FMunicipio.Free;
    end;
end;

procedure TFFornecedor.BtConfirmaClick(Sender: TObject);
begin
  {if verificaCampos(1) then
  begin
    showmessage('Um ou mais campos obrigatórios não foram preenchidos!');
    abort;
  end;}

  if messagedlg('Confirmar o fornecedor ' + fdmfornec.TFornecNOME.Value + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if (fdmfornec.TFornecCODIGO.Value = 0) then
    begin
      fdmfornec.TFornecCODIGO.Value := ultimo('fornec', 'CODIGO');
    end;

    fdmfornec.TFornec.Post;
    fdmfornec.TFornec.ApplyUpdates(0);

      if fdmfornec.QForPesq.Active then
        fdmfornec.QForPesq.Refresh;

    fdmfornec.QConFornec.Refresh;
    ativa;

    BtCep.Enabled := false;
    BtCodmunic.Enabled := false;
    marcaCamposChave(false);
    BtInsere.SetFocus;

    Panel4.Enabled := false;
    Panel6.Enabled := false;

    if FDMFornec.QForPesq.Active then
      FDMFornec.QForPesq.Refresh;
  end;
end;

procedure TFFornecedor.FormShow(Sender: TObject);
begin
  fdm.TAtividade.Open;
  fdm.QMunicPesq.Open;
  fdmfornec.QConFornec.close;
  sql := '';
  sql := sql + ' select CODIGO, NOME, NOMEFANTA, PESSOA,CPF, CIDADE, UF, STATUS, FONE, CNPJ';
  sql := sql + ' from fornec';
  sql := sql + ' where status = ' + QuotedStr('A');

  fdmfornec.QConFornec.Open;

  if codpesq > 0 then
  begin
    fdmfornec.TFornec.Close;
    fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := codpesq;
    fdmfornec.TFornec.Open;
  end
  else
  begin
    fdmfornec.TFornec.Close;
    fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := 99999;
    fdmfornec.TFornec.Open;
  end;

  cxPageControl1.ActivePageIndex := 1;
  EdNome.SetFocus;
end;

procedure TFFornecedor.PageControl2Change(Sender: TObject);
begin
  if (PageControl2.ActivePageIndex = 1) and
    (fdmfornec.TFornecPESSOA.Value = 'FISICA') then
  begin
    showmessage('Fornecedor sem dados juridicos!');
    PageControl2.ActivePageIndex := 0;
  end;

  if (PageControl2.ActivePageIndex = 0) and
    (fdmfornec.TFornecPESSOA.Value = 'JURIDICA') then
  begin
    showmessage('Fornecedor sem dados fisicos!');
    PageControl2.ActivePageIndex := 1;
  end;
end;

procedure TFFornecedor.DBComboBox1Change(Sender: TObject);
begin
  if FDMFornec.TFornecPESSOA.Value = 'FISICA'  then
    PageControl2.ActivePageIndex := 0
  else
    PageControl2.ActivePageIndex := 1;
end;

procedure TFFornecedor.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDMFornec.QConFornec.Next;
  end;

  if (key = vk_up)then
  begin
    FDMFornec.QConFornec.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    fdmfornec.TFornec.Close;
    fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := fdmfornec.QConFornecCODIGO.Value;
    fdmfornec.TFornec.Open;
    cxButton4Click(sender);
  end
  else if (PConsulta.Visible = false) and (Key = 13) then
  begin
      cxPageControl1.ActivePageIndex := 0;
  end;
end;

procedure TFFornecedor.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
  codigo := fdmfornec.QConFornecCODIGO.Value;
  fdmfornec.QConFornec.Filtered := false;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin

    if RgFiltro.ItemIndex = 0 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr(EdNome.Text + '%');
    if RgFiltro.ItemIndex = 1 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
    if RgFiltro.ItemIndex = 2 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text);

    fdmfornec.QConFornec.Filtered := true;
    fdmfornec.QConFornec.locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    if RgFiltro.ItemIndex = 0 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr(EdNome.Text + '%');
    if RgFiltro.ItemIndex = 1 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text + '%');
    if RgFiltro.ItemIndex = 2 then
      fdmfornec.QConFornec.Filter := 'NOME like ' + QuotedStr('%' + EdNome.Text);

    fdmfornec.QConFornec.Filtered := true;
    fdmfornec.QConFornec.First;
  end;

end;

procedure TFFornecedor.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    fdmfornec.TFornec.Close;
    fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := fdmfornec.QConFornecCODIGO.Value;
    fdmfornec.TFornec.Open;

  if PConsulta.Visible = true then
    ModalResult := mrok
  else
    cxPageControl1.ActivePageIndex := 0;
end;

procedure TFFornecedor.cxPageControl1Change(Sender: TObject);
begin
  if (fdmfornec.TFornec.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    showmessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (fdmfornec.TFornec.State in [dsinsert, dsedit]) then
    begin
      fdmfornec.TFornec.Close;
      fdmfornec.TFornec.Params.ParamByName('CODIGO').AsInteger := fdmfornec.QConFornecCODIGO.Value;
      fdmfornec.TFornec.Open;
    end;
  end;
end;

procedure TFFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fdmfornec.TFornec.State in [dsinsert, dsedit] then
  begin
    showmessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end
  else
  begin
    fdmfornec.QConFornec.close;
    fdm.TMunicipio.Close;
    fdm.QMunicPesq.Close;
    fdm.TAtividade.Close;
    // fdmfornec.TFornec.Close;
  end;
end;

procedure TFFornecedor.CkInativosClick(Sender: TObject);
begin
  sql := '';
  fdmfornec.QConFornec.close;

  sql := sql + ' select CODIGO, NOME, NOMEFANTA, PESSOA, CPF, CIDADE, UF, STATUS, FONE, CNPJ from fornec';
  if not (CkInativ.Checked) then
  begin
    sql := sql + ' where status = ' + QuotedStr('A');
  end;
  fdmfornec.QConFornec.Open;
end;

end.
