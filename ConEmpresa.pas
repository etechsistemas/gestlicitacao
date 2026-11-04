unit ConEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls;

type
  TFConEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    sql : String;
  end;

var
  FConEmpresa: TFConEmpresa;

implementation

uses DM, Principal;

{$R *.dfm}

procedure TFConEmpresa.cxButton4Click(Sender: TObject);
begin
    modalresult := mrok;
end;

procedure TFConEmpresa.cxButton5Click(Sender: TObject);
begin
    modalresult := mrcancel;
end;

procedure TFConEmpresa.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
      fdm.TEmpresa.locate('CODIGO',fdm.QConEmpresaCODIGO.Value,[]);
end;

procedure TFConEmpresa.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
      fdm.TEmpresa.locate('CODIGO',fdm.QConEmpresaCODIGO.Value,[]);
      cxButton4Click(sender);
end;

procedure TFConEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FDM.QConEmpresa.Close;

end;

procedure TFConEmpresa.FormShow(Sender: TObject);
begin
    sql := 'select * from empresa';
    if filtroemp <> '' then
      sql := sql + ' where '+ filtroemp;
    FDM.QConEmpresa.Open;
    fdm.TEmpresa.Open;
end;

end.
