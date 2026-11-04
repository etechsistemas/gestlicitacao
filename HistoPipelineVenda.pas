unit HistoPipelineVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  DBCtrls, Mask, cxGraphics, cxLookAndFeels, DB, cxControls, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFHistoPipelineVenda = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label24: TLabel;
    DBMemo2: TDBMemo;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistoPipelineVenda: TFHistoPipelineVenda;
  codfor : integer;

implementation

uses Principal, DM, UBiblio, Servico, DMCRM, PipelineVenda;

{$R *.dfm}

procedure TFHistoPipelineVenda.BtFecharClick(Sender: TObject);
begin
    FDMCRM.TPipelineVendaHist.Cancel;
    close;
end;

procedure TFHistoPipelineVenda.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
     editando := false;

       if messagedlg('Confirmar o item?',mtConfirmation,[mbYes,mbNo],0) = mryes then
       begin
         if FDMCRM.TPipelineVendaHist.state = dsinsert then
           FPipelineVenda.codulthisto := FPipelineVenda.codulthisto + 1
         else
           editando := true;

         FDMCRM.TPipelineVendaHistITEM.Value := FPipelineVenda.codulthisto;
         {FDMCRM.TPipelineVendaHistCODUSU.Value := FDMCRM.TPipelineVendaCODUSU.Value;
         FDMCRM.TPipelineVendaHistCODSOL.Value := FDMCRM.TPipelineVendaCODIGO.Value;
         FDMCRM.TPipelineVendaHistCODEMPFAT.Value := FDMCRM.TPipelineVendaCODEMPFAT.Value;}
         FDMCRM.TPipelineVendaHist.Post;
         if editando then
         begin
           FDMCRM.TPipelineVendaHist.Last;
           FPipelineVenda.codulthisto := FDMCRM.TPipelineVendaHistITEM.Value;
         end;
         FDMCRM.TPipelineVendaHist.Append;
         dbedit2.SetFocus;
       end
       else
       begin
         if FDMCRM.TPipelineVendaHist.State = dsedit then
            editando := true;
         FDMCRM.TPipelineVendaHist.Cancel;
         if editando then
         begin
           FDMCRM.TPipelineVendaHist.Last;
           FPipelineVenda.codulthisto := FDMCRM.TPipelineVendaHistITEM.Value;
         end;
         FDMCRM.TPipelineVendaHist.Append;
         dbedit2.SetFocus;
       end;

end;

procedure TFHistoPipelineVenda.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := Maiuscula(key);
end;

procedure TFHistoPipelineVenda.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFHistoPipelineVenda.FormShow(Sender: TObject);
begin
   dbedit2.SetFocus

end;

end.
