unit ConBuscaContato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFConBuscaContato = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1sel: TcxGridDBColumn;
    PConsulta: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    CkConfirm: TCheckBox;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    codcli : integer;
    tipo : String;
  end;

var
  FConBuscaContato: TFConBuscaContato;

implementation

uses Principal, DM;

{$R *.dfm}

procedure TFConBuscaContato.cxButton4Click(Sender: TObject);
begin
    fdm.QBuscaContatos.Filtered := false;
    fdm.QBuscaContatos.filter := 'SEL = '+QuotedStr('X');
    fdm.QBuscaContatos.Filtered := true;

    if not (fdm.QBuscaContatos.RecordCount > 0) then
    begin
      showmessage('Nenhum registro selecionado!');
      fdm.QBuscaContatos.Filtered := false;
      fdm.QBuscaContatos.filter := '';
      abort;
    end;

    ModalResult := mrok;
end;

procedure TFConBuscaContato.cxButton5Click(Sender: TObject);
begin
    ModalResult := mrcancel;
end;

procedure TFConBuscaContato.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    fdm.QBuscaContatos.Edit;
    fdm.QBuscaContatossel.Value := 'X';
    fdm.QBuscaContatos.Post;
    cxButton4Click(sender);
end;

procedure TFConBuscaContato.FormDestroy(Sender: TObject);
begin
    fdm.QBuscaContatos.Close;
    fdm.QBuscaContatos.Filtered := false;
    fdm.QBuscaContatos.filter := '';
end;

procedure TFConBuscaContato.FormShow(Sender: TObject);
begin
    fdm.QBuscaContatos.Close;
    fdm.QBuscaContatos.Params.ParamByName('codigo').AsInteger := codcli;
    fdm.QBuscaContatos.Params.ParamByName('tipo').AsString := tipo;
    fdm.QBuscaContatos.Open;
end;

end.
