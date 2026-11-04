unit CondPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer,
  Mask, cxButtons, ExtCtrls,
  dxSkinBlack, cxStyles, dxSkinscxPCPainter, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxPC, cxPCdxBarPopupMenu;

type
  TFCondPag = class(TForm)
    Panel6: TPanel;
    Label3: TLabel;
    EdNome: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PConsulta: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdNomeKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCondPag: TFCondPag;

implementation

uses Principal, DM, DMSistema;

{$R *.dfm}

procedure TFCondPag.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down)then
  begin
    FDM.QConCondPag.Next;
  end;

  if (key = vk_up)then
  begin
    FDM.QConCondPag.Prior;
  end;

  if (PConsulta.Visible = true) and (Key = 13) then
  begin
    cxButton4Click(sender);
  end;
end;

procedure TFCondPag.EdNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var codigo : integer;
begin
    codigo := FDM.QConCondPagCODIGO.Value;

    FDM.QConCondPag.Filtered := false;
    FDM.QConCondPag.Filter := '';
    if EdNome.Text <> '' then
    begin
      FDM.QConCondPag.Filter := 'NOME like '+QuotedStr('%'+EdNome.Text+'%');
    end;
    FDM.QConCondPag.Filtered := true;
    FDM.QConCondPag.Locate('CODIGO',codigo,[]);
end;

procedure TFCondPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDM.TCondPag.State in [dsInsert,dsEdit] then
  begin
    ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
    Action := caNone;
  end;
end;

procedure TFCondPag.FormShow(Sender: TObject);
begin
    FDM.TCondPag.close;
    FDM.TCondPag.params.ParamByName('codigo').AsInteger := 999999;
    FDM.TCondPag.Open;
    FDM.QConCondPag.IndexFieldNames := 'NOME';
    fdm.QConCondPag.Open;
    FDM.QConCondPag.First;
    EdNome.SetFocus;
end;

procedure TFCondPag.cxButton4Click(Sender: TObject);
begin
  fdm.TCondPag.Close;
  fdm.TCondPag.Params.ParamByName('CODIGO').AsInteger := fdm.QConCondPagCODIGO.Value;
  fdm.TCondPag.Open;
  ModalResult := mrok;
end;

procedure TFCondPag.cxButton5Click(Sender: TObject);
begin
  ModalResult := mrno;
end;

procedure TFCondPag.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if PConsulta.Visible = true then
    cxButton4Click(sender);
end;

end.
