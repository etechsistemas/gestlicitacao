unit Vendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Grids, DBGrids, Buttons, cxGroupBox, cxRadioGroup,
  StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox, cxDBEdit,
  DBCtrls,  cxDBNavigator, cxButtons, ExtCtrls, Mask, cxPC,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinscxPCPainter, cxNavigator, SQLTimSt, cxPCdxBarPopupMenu;

type
  TFVendedores = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    PDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit37: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CPF: TcxGridDBColumn;
    cxGrid1DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1CELULAR: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EdNome: TEdit;
    RgFiltro: TcxRadioGroup;
    PConsulta: TPanel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    BtCep: TcxButton;
    PageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit14: TDBEdit;
    cxTabSheet4: TcxTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBComboBox7: TDBComboBox;
    Label59: TLabel;
    DBEdit41: TDBEdit;
    Label46: TLabel;
    DBComboBox6: TDBComboBox;
    Label58: TLabel;
    DBComboBox5: TDBComboBox;
    Label57: TLabel;
    DBEdit39: TDBEdit;
    Label44: TLabel;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    DBComboBox3: TDBComboBox;
    Label15: TLabel;
    CkInativ: TcxCheckBox;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure BtInsereClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCepClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure RgFiltroClick(Sender: TObject);
    procedure BtInativClick(Sender: TObject);
    procedure CkInativClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure consulta;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codultdep : integer;
    tipo, where : string;
  end;

var
  FVendedores: TFVendedores;

implementation

uses DMRh, Principal, UBiblio, DM, metodosServ, DMSistema,
  relatorio;

{$R *.dfm}

procedure TFVendedores.BtInativClick(Sender: TObject);
begin
    fdmrh.TVendedor.Filtered := not fdmrh.TVendedor.Filtered;
end;

procedure TFVendedores.BtInsereClick(Sender: TObject);
begin
    desativa;
    PDados.Enabled := true;
    fdmrh.TVendedor.Append;
    fdmrh.TVendedorCODIGO.Value := 0;
    fdmrh.TVendedorSTATUS.Value := 'A';
    fdmrh.TVendedorDATACAD.Value := DateTimeToSQLTimeStamp(now);
    fdmrh.TVendedorDATAALT.Value := DateTimeToSQLTimeStamp(now);
    fdmrh.TVendedorCODUSU.Value := usulogado;
    fdmrh.TVendedorCODUSUALT.Value := usulogado;
    dbcombobox1.SetFocus;
    BtCep.Enabled := true;
    marcaCamposChave(true);
end;

procedure TFVendedores.CkInativClick(Sender: TObject);
begin
    consulta;
end;

procedure TFVendedores.BtEditaClick(Sender: TObject);
begin
    if fdmrh.TVendedor.RecordCount > 0 then
    begin
      desativa;
      PDados.Enabled := true;
      fdmrh.TVendedor.Edit;
      fdmrh.TVendedorDATAALT.Value := DateTimeToSQLTimeStamp(now);
      fdmrh.TVendedorCODUSUALT.Value := usulogado;
      DBEdit4.SetFocus;
      BtCep.Enabled := true;
      marcaCamposChave(true);
    end
    else
    begin
      showmessage('Nenhum registro selecionado!');
    end;
end;

procedure TFVendedores.BtCancelaClick(Sender: TObject);
begin
    if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      fdmrh.TVendedor.Cancel;
      PDados.Enabled := false;
      ativa;
      BtInsere.SetFocus;
      BtCep.Enabled := false;
      marcaCamposChave(false);
    end;
end;

procedure TFVendedores.BtCepClick(Sender: TObject);
var
  temp : TStringList;
begin
    if (FDMRh.TVendedorCEP.Value <> '') and (length(FDMRh.TVendedorCEP.Value)=9) and (IsConnectedToInternet) then
    begin
      temp := TStringList.Create;
      temp.Assign(buscaCep(StringReplace(FDMRh.TVendedorCEP.Value,'-','',[rfReplaceAll])));
      if temp.Strings[0] = 'CEP não encontrado!' then
      begin
        showmessage('CEP não encontrado!');
        abort;
      end;
      FDMRh.TVendedorENDERECO.Value := temp.Strings[0];
      FDMRh.TVendedorBAIRRO.Value := temp.Strings[1];
      FDMRh.TVendedorCIDADE.Value := temp.Strings[2];
      FDMRh.TVendedorUF.Value := temp.Strings[3];
      dbedit6.SetFocus;
    end;
end;

procedure TFVendedores.BtConfirmaClick(Sender: TObject);
var
  codigo : integer;
begin
    if fdmrh.TVendedorNOME.Value = '' then
    begin
      ShowMessage('O nome é obrigatório!');
      DBEdit2.SetFocus;
      abort;
    end;


    if messagedlg('Confirmar o vendedor '+fdmrh.TVendedorNOME.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if (fdmrh.TVendedorCODIGO.Value = 0) then
      begin
        codigo := ultimo('vendedor','CODIGO');
      end
      else
      begin
        codigo := fdmrh.TVendedorCODIGO.Value;
      end;

      if (fdmrh.TVendedorCODIGO.Value = 0) then
      begin
         fdmrh.TVendedorCODIGO.Value := codigo;
      end;
      fdmrh.TVendedor.Post;
      fdmrh.TVendedor.ApplyUpdates(0);
      FDMRh.QConVendedor.Refresh;
      ativa;
      BtInsere.SetFocus;
      BtCep.Enabled := false;
      marcaCamposChave(false);

      if fdmrh.QVendPesq.Active then
        FDMRh.QVendPesq.Refresh;

      if fdmrh.QAtendPesq.Active then
        FDMRh.QAtendPesq.Refresh;
    end;
end;


procedure TFVendedores.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFVendedores.cxButton4Click(Sender: TObject);
begin
  fdmrh.TVendedor.close;
  fdmrh.TVendedor.params.ParamByName('CODIGO').AsInteger := FDMRH.QConVendedorCODIGO.Value;
  fdmrh.TVendedor.open;
  ModalResult := mrok;
end;

procedure TFVendedores.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrno;
end;

procedure TFVendedores.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TFVendedores.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var nome : string;
begin
  if (key = vk_down)then
  begin
    fdmrh.QConVendedor.Next;
  end;

  if (key = vk_up)then
  begin
    fdmrh.QConVendedor.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    cxButton4Click(sender);
  end;
end;

procedure TFVendedores.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var filtro: String;
    codigo : integer;
begin
  codigo := fdmrh.QConVendedorCODIGO.Value;

  if (EdNome.Text <> '') and (key <> vk_back) then
  begin
    consulta;
    fdmrh.QConVendedor.Locate('CODIGO',codigo,[]);
  end
  else if (key = vk_back) then
  begin
    consulta;
    fdmrh.QConVendedor.First;
  end;
end;

procedure TFVendedores.cxButton2Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGrid1DBTableView1,'',fdmrh.QConVendedor.RecordCount,1);
end;

procedure TFVendedores.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    if PConsulta.Visible = true then
      cxButton4Click(sender)
    else
    begin
      cxPageControl1.ActivePageIndex := 0;
    end;
end;

procedure TFVendedores.cxPageControl1Change(Sender: TObject);
begin
  if (fdmrh.TVendedor.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    cxPageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if (cxPageControl1.ActivePageIndex = 0) and not (fdmrh.TVendedor.State in [dsinsert, dsedit]) then
    begin
      fdmrh.TVendedor.close;
      fdmrh.TVendedor.params.ParamByName('CODIGO').AsInteger := FDMRH.QConVendedorCODIGO.Value;
      fdmrh.TVendedor.open;
    end;
  end;
end;

procedure TFVendedores.FormShow(Sender: TObject);
begin
    fdmrh.TVendedor.Close;
    fdmrh.TVendedor.Params.ParamByName('CODIGO').AsInteger := 99999;
    fdmrh.TVendedor.Open;

    where := '';
    if tipo = 'INTERNO' then
    begin
      where := ' AND TIPO = '+QuotedStr('INTERNO');
    end
    else if tipo = 'EXTERNO' then
    begin
      where := ' AND TIPO = '+QuotedStr('EXTERNO');
    end;

    fdmrh.QConVendedor.Close;
    fdmrh.QConVendedor.Filtered := false;
    fdmrh.QConVendedor.Filter := 'STATUS = '+QuotedStr('A')+where;
    fdmrh.QConVendedor.IndexFieldNames := 'NOME';
    fdmrh.QConVendedor.Filtered := true;
    fdmrh.QConVendedor.Open;
    fdmrh.QConVendedor.First;


    cxPageControl1.ActivePageIndex := 1;
    EdNome.SetFocus;
end;

procedure TFVendedores.PageControl2Change(Sender: TObject);
begin
    if (PageControl2.ActivePageIndex = 1) and (fdmrh.TVendedorPESSOA.Value = 'FISICA') then
    begin
      showmessage('Vendedor sem dados juridicos!');
      PageControl2.ActivePageIndex := 0;
    end;

    if (PageControl2.ActivePageIndex = 0) and (fdmrh.TVendedorPESSOA.Value = 'JURIDICA') then
    begin
      showmessage('Vendedor sem dados fisicos!');
      PageControl2.ActivePageIndex := 1;
    end;
end;

procedure TFVendedores.RgFiltroClick(Sender: TObject);
begin
    consulta;
end;

procedure TFVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FDMrh.TVendedor.State in [dsInsert, dsEdit] then
  begin
    ShowMessage(
      'Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end
  else
    fdmrh.QConVendedor.Close;
end;

procedure TFVendedores.consulta;
var filtro : string;
begin
    filtro := '';
    fdmrh.QConVendedor.Filtered:=false;
    if RgFiltro.ItemIndex = 0 then
      filtro := filtro + 'nome like' +QuotedStr(EdNome.Text+'%');
    if RgFiltro.ItemIndex = 1 then
      filtro := filtro + 'nome like' +QuotedStr('%'+EdNome.Text+'%');
    if RgFiltro.ItemIndex = 2 then
      filtro := filtro + 'nome like' +QuotedStr('%'+EdNome.Text);
    if not CkInativ.Checked then
    begin
      if filtro <> '' then
      begin
        filtro := filtro + ' and ';
      end;
      filtro := filtro + 'status = ' + QuotedStr('A') + where;
    end;
    if filtro <> '' then
    begin
      fdmrh.QConVendedor.Filter := filtro;
      fdmrh.QConVendedor.Filtered:=true;
    end;

end;

end.
