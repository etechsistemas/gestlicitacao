unit ItemProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, DB,
  DBCtrls, Mask, cxGraphics, cxLookAndFeels, Grids, DBGrids, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFItemProcesso = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    LbCodigo: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure calcula;
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vlrunit,descperc : real;
  end;

var
  FItemProcesso: TFItemProcesso;

implementation

uses Principal, DM, UBiblio, DMGerLicitacao, Processo;

{$R *.dfm}

procedure TFItemProcesso.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TProcessoLicIt.Cancel;

    close;
end;

procedure TFItemProcesso.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
     editando := false;


     if not (FDMGerLicitacao.TProcessoLicItQTDE.Value > 0) then
     begin
         showmessage('A quantidade é obrigatória!');
         DBEdit2.SetFocus;
         abort;
     end;

     if not (FDMGerLicitacao.TProcessoLicItVLRUNIT.Value > 0) then
     begin
         showmessage('O valor unitário é obrigatório!');
         DBEdit9.SetFocus;
         abort;
     end;

     if (FDMGerLicitacao.TProcessoLicItQTDE.Value > 0) and (FDMGerLicitacao.TProcessoLicItVLRUNIT.Value > 0) then
     begin
//       if messagedlg('Confirmar o item de compra '+FDMGerLicitacao.TProcessoLicItNOMEPROD.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
//       begin


         if (FDMGerLicitacao.TProcessoLicIt.State in [dsinsert]) then
           FProcesso.codultprod := FProcesso.codultprod + 1
         else
           editando := true;

         FDMGerLicitacao.TProcessoLicItPROCESSO.Value := FDMGerLicitacao.TProcessoLicCODIGO.Value;
         FDMGerLicitacao.TProcessoLicItCODEMPFAT.Value := FDMGerLicitacao.TProcessoLicCODEMPFAT.Value;
         FDMGerLicitacao.TProcessoLicItCODUSU.Value := FDMGerLicitacao.TProcessoLicCODUSU.Value;

         FDMGerLicitacao.TProcessoLicItITEM.Value := FProcesso.codultprod;

         FDMGerLicitacao.TProcessoLicIt.Post;
         if editando then
         begin
            FDMGerLicitacao.TProcessoLicIt.Last;
            FProcesso.codultprod := FDMGerLicitacao.TProcessoLicItITEM.Value;
         end;

         FDMGerLicitacao.TProcessoLicIt.Append;

         dbedit1.SetFocus;
     end;

end;

procedure TFItemProcesso.DBEdit2Exit(Sender: TObject);
begin
  calcula;
end;

procedure TFItemProcesso.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := Maiuscula(key);
end;

procedure TFItemProcesso.FormShow(Sender: TObject);
begin


  FDM.TEmpresa.Open;
 
    DBEdit1.SetFocus;

end;

procedure TFItemProcesso.calcula;
begin
    if (FDMGerLicitacao.TProcessoLicItQTDE.Value > 0) and (FDMGerLicitacao.TProcessoLicItVLRUNIT.Value > 0) then
    begin
        FDMGerLicitacao.TProcessoLicItTOTAL.Value := Arred5(FDMGerLicitacao.TProcessoLicItVLRUNIT.Value * FDMGerLicitacao.TProcessoLicItQTDE.Value,2);
    end;
end;

procedure TFItemProcesso.DBEdit3Exit(Sender: TObject);
begin

    calcula;
end;

procedure TFItemProcesso.DBEdit9Enter(Sender: TObject);
begin
    vlrunit := FDMGerLicitacao.TProcessoLicItVLRUNIT.Value;
end;

procedure TFItemProcesso.DBEdit9Exit(Sender: TObject);
begin

    calcula;
end;



end.
