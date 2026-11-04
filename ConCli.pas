unit ConCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  StdCtrls, DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, dxSkinscxPCPainter, Menus,
  cxGroupBox, Grids, DBGrids, cxButtons, cxPC, cxPCdxBarPopupMenu;

type
  TFConCli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    PageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label41: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    EdCFP: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBComboBox7: TDBComboBox;
    cxTabSheet4: TcxTabSheet;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    EdCnpj: TDBEdit;
    DBEdit23: TDBEdit;
    cxTabSheet8: TcxTabSheet;
    Panel5: TPanel;
    DBGrid4: TDBGrid;
    cxTabSheet5: TcxTabSheet;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    cxTabSheet6: TcxTabSheet;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    cxTabSheet7: TcxTabSheet;
    Panel11: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    cxTabSheet9: TcxTabSheet;
    Panel12: TPanel;
    DBGrid5: TDBGrid;
    cxTabSheet1: TcxTabSheet;
    DBGrid3: TDBGrid;
    cxButton3: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codcli : integer;
  end;

var
  FConCli: TFConCli;

implementation

uses Principal, DMCliente, Cliente;

{$R *.dfm}

procedure TFConCli.cxButton1Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFCLiente, FCliente);
      FCliente.codpesq := codcli;
      FCliente.ShowModal;
    finally
      FCliente.Free
    end;
end;

procedure TFConCli.cxButton3Click(Sender: TObject);
begin
    close;
end;

procedure TFConCli.FormShow(Sender: TObject);
begin
    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.params.ParamByName('CODIGO').AsInteger := codcli;
    fdmcliente.TCliente.open;
    PageControl2.ActivePageIndex := 2;
end;

end.
