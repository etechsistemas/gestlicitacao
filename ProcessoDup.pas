unit ProcessoDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, StdCtrls, cxButtons, ExtCtrls, Mask, DBCtrls;

type
  TFProcessoDup = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label56: TLabel;
    DBEdit33: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProcessoDup: TFProcessoDup;

implementation

uses Principal, DMGerLicitacao;

{$R *.dfm}

procedure TFProcessoDup.BtFecharClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TFProcessoDup.cxButton1Click(Sender: TObject);
begin
    ModalResult := mrok;
end;

procedure TFProcessoDup.DBEdit2Exit(Sender: TObject);
begin
    if (FDMGerLicitacao.TProcessoLicCOMISSAO.Value > 0) and (FDMGerLicitacao.TProcessoDupVALORCONTRATOLIC.Value > 0) then
    begin
      FDMGerLicitacao.TProcessoDUPVALOR.Value := FDMGerLicitacao.TProcessoDupVALORCONTRATOLIC.Value * (FDMGerLicitacao.TProcessoLicCOMISSAO.Value/100);
    end;
end;

end.
