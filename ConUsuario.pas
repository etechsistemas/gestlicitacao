unit ConUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, ExtCtrls, dxSkinsCore, dxSkinBlack;

type
  TFConUsuario = class(TForm)
    DBGrid1: TDBGrid;
    PConsulta: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConUsuario: TFConUsuario;

implementation

uses Principal, DMUsuario;

{$R *.dfm}

procedure TFConUsuario.cxButton4Click(Sender: TObject);
begin
    modalresult := mrok;
end;

procedure TFConUsuario.cxButton5Click(Sender: TObject);
begin
    modalresult := mrcancel;
end;

procedure TFConUsuario.DBGrid1DblClick(Sender: TObject);
begin
    modalresult := mrok;
end;

end.
