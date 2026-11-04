unit Localizador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,  cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer, cxCheckBox,
  cxDBEdit, Mask, DBCtrls, cxNavigator, cxDBNavigator, cxButtons, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, cxStyles,
  dxSkinscxPCPainter, cxCustomData, SQLTimSt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFLocalizador = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    PDados: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    PConsulta: TPanel;
    Panel6: TPanel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    BtOk: TBitBtn;
    BtCancel: TBitBtn;
    EdNome: TEdit;
    Label3: TLabel;
    CkInativ: TcxCheckBox;
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtInsereClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CkInativClick(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLocalizador: TFLocalizador;

implementation

uses DM, Principal, UBiblio, metodosServ;

{$R *.dfm}

procedure TFLocalizador.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDM.TLocalizador.Next;
  end;

  if (key = vk_up)then
  begin
    FDM.TLocalizador.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    cxGrid1DBTableView1DblClick(sender);
  end;
end;

procedure TFLocalizador.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
    codigo := FDM.TLocalizadorCODIGO.Value;

    FDM.TLocalizador.Filtered := false;
    FDM.TLocalizador.Filter := '';
    if EdNome.Text <> '' then
    begin
        FDM.TLocalizador.Filter := 'NOME like '+QuotedStr('%'+EdNome.Text+'%');
    end;
    if not CkInativ.Checked then
    begin
      if FDM.TLocalizador.Filter <> '' then
        FDM.TLocalizador.Filter := FDM.TLocalizador.Filter +' and ';
      FDM.TLocalizador.Filter := FDM.TLocalizador.Filter + ' STATUS = '+QuotedStr('A');
    end;
    if (EdNome.Text <> '') or not(CkInativ.Checked) then
      FDM.TLocalizador.Filtered := true;

    FDM.TLocalizador.Locate('CODIGO',codigo,[]);
end;

procedure TFLocalizador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Fdm.TLocalizador.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;

end;

procedure TFLocalizador.FormShow(Sender: TObject);
begin
    fdm.TLocalizador.Open;
    fdm.TCondPag.Open;
    FDM.TLocalizador.Filtered := false;
    FDM.TLocalizador.Filter := 'STATUS = '+QuotedStr('A');
    FDM.TLocalizador.Filtered := true;
    FDM.TLocalizador.IndexFieldNames := 'NOME';

    EdNome.SetFocus;
end;

procedure TFLocalizador.BtInsereClick(Sender: TObject);
begin
    FDM.TLocalizador.Append;
    FDM.TLocalizadorCODIGO.Value := 0;
    FDM.TLocalizadorCODUSU.Value := usulogado;
    FDM.TLocalizadorSTATUS.Value := 'A';
    FDM.TLocalizadorPROMISSORIA.Value := 'N';
    FDM.TLocalizadorCUPOMFISCAL.Value := 'N';
    FDM.TLocalizadorDATA.Value := DateTimeToSQLTimeStamp(now);
    PDados.Enabled := true;
    desativa;
    DBEdit2.SetFocus;
end;

procedure TFLocalizador.CkInativClick(Sender: TObject);
begin
    if CkInativ.Checked then
    begin
        FDM.TLocalizador.Filtered := false;
    end
    else
    begin
       FDM.TLocalizador.Filtered := false;
       FDM.TLocalizador.Filter := 'STATUS = '+QuotedStr('A');
       FDM.TLocalizador.Filtered := true;
    end;
end;

procedure TFLocalizador.cxButton3Click(Sender: TObject);
begin
    close;
end;

procedure TFLocalizador.BtEditaClick(Sender: TObject);
begin
    FDM.TLocalizador.Edit;
    PDados.Enabled := true;
    desativa;
    DBEdit2.SetFocus;
end;

procedure TFLocalizador.BtCancelaClick(Sender: TObject);
begin
    if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      FDM.TLocalizador.Cancel;
      PDados.Enabled := false;
      ativa;
    end;
end;

procedure TFLocalizador.BtConfirmaClick(Sender: TObject);
var
  codigo : integer;
begin
    if fdm.TLocalizadorNOME.Value = '' then
    begin
      showmessage('O nome é obrigatório!');
      DBEdit2.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o localizador '+fdm.TLocalizadorNOME.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if (FDM.TLocalizadorCODIGO.Value = 0) then
        codigo := ultimo('localizador','CODIGO')
      else
        codigo := FDM.TLocalizadorCODIGO.Value;

      if (FDM.TLocalizadorCODIGO.Value = 0) then
        FDM.TLocalizadorCODIGO.Value := codigo;
      FDM.TLocalizador.Post;
      FDM.TLocalizador.ApplyUpdates(0);
      ativa;
      PDados.Enabled := False;
      BtInsere.SetFocus;
    end;
end;

procedure TFLocalizador.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if PConsulta.Visible = true then
      ModalResult := mrok;
end;

procedure TFLocalizador.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := Maiuscula(key);
end;

procedure TFLocalizador.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if PConsulta.Visible = true then
      ModalResult := mrok;
end;

end.
