unit ServPipelineVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  DBCtrls, Mask, cxGraphics, cxLookAndFeels, DB, cxControls, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxDBEdit;

type
  TFServPipelineVenda = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    BtConCli: TcxButton;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtConCliClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure calcula;
    procedure DBEdit3Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FServPipelineVenda: TFServPipelineVenda;
  codfor : integer;

implementation

uses Principal, DM, UBiblio, Servico, DMCRM, PipelineVenda;

{$R *.dfm}

procedure TFServPipelineVenda.BtFecharClick(Sender: TObject);
begin
    FDMCRM.TPipelineVendaServ.Cancel;
    close;
end;

procedure TFServPipelineVenda.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
     editando := false;
     if not (FDMCRM.TPipelineVendaServCODSERV.Value > 0) then
     begin
         showmessage('O serviço é obrigatório!');
         cxDBLookupComboBox1.SetFocus;
         abort;
     end;

     if not (FDMCRM.TPipelineVendaServVLRUNIT.Value > 0) then
     begin
         showmessage('O valor unitário é obrigatório!');
         DBEdit3.SetFocus;
         abort;
     end;

     if (FDMCRM.TPipelineVendaServQTDE.Value > 0) and (FDMCRM.TPipelineVendaServVLRUNIT.Value > 0) then
     begin
       if messagedlg('Confirmar o item '+FDMCRM.TPipelineVendaServNOMESERV.Value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
       begin
         if FDMCRM.TPipelineVendaServ.state = dsinsert then
           FPipelineVenda.codultserv := FPipelineVenda.codultserv + 1
         else
           editando := true;

         FDMCRM.TPipelineVendaServITEM.Value := FPipelineVenda.codultserv;
         {FDMCRM.TPipelineVendaServCODUSU.Value := FDMCRM.TPipelineVendaCODUSU.Value;
         FDMCRM.TPipelineVendaServCODSOL.Value := FDMCRM.TPipelineVendaCODIGO.Value;
         FDMCRM.TPipelineVendaServCODEMPFAT.Value := FDMCRM.TPipelineVendaCODEMPFAT.Value;}
         FDMCRM.TPipelineVendaServ.Post;
         if editando then
         begin
           FDMCRM.TPipelineVendaServ.Last;
           FPipelineVenda.codultserv := FDMCRM.TPipelineVendaServITEM.Value;
         end;
         FDMCRM.TPipelineVendaServ.Append;
         FDMCRM.TPipelineVendaServQTDE.Value := 1;
         cxDBLookupComboBox1.SetFocus;
       end
       else
       begin
         if FDMCRM.TPipelineVendaServ.State = dsedit then
            editando := true;
         FDMCRM.TPipelineVendaServ.Cancel;
         if editando then
         begin
           FDMCRM.TPipelineVendaServ.Last;
           FPipelineVenda.codultserv := FDMCRM.TPipelineVendaServITEM.Value;
         end;
         FDMCRM.TPipelineVendaServ.Append;
         FDMCRM.TPipelineVendaServQTDE.Value := 1;
         cxDBLookupComboBox1.SetFocus;
       end;
     end;
end;

procedure TFServPipelineVenda.cxDBCheckBox2Click(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaServCOMISSAO.value = 'S' then
      DBEdit1.ReadOnly := true
    else
      DBEdit1.ReadOnly := false;
end;

procedure TFServPipelineVenda.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if (FDMCRM.TPipelineVendaServCODSERV.Value > 0) and (FDM.QServPesq.Locate('CODIGO',FDMCRM.TPipelineVendaServCODSERV.Value,[])) then
  begin
    FDMCRM.TPipelineVendaServCODSERV.Value := FDM.QServPesqCODIGO.Value;
    FDMCRM.TPipelineVendaServNOMESERV.Value := FDM.QServPesqNOME.Value;
    FDMCRM.TPipelineVendaServVLRUNIT.Value := FDM.QServPesqVALORMEDIO.Value;
  end;
end;

procedure TFServPipelineVenda.BtConCliClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFServico, FServico);
      FServico.PConsulta.Visible := true;
      if FServico.ShowModal = mrok then
      begin
        FDMCRM.TPipelineVendaServCODSERV.Value := FDM.TServicoCODIGO.Value;
        FDMCRM.TPipelineVendaServNOMESERV.Value := FDM.TServicoNOME.Value;
        FDMCRM.TPipelineVendaServVLRUNIT.Value := FDM.TServicoVALORMEDIO.Value;
      end;

    finally
       FServico.Free;
       FServico := nil;
    end;
end;

procedure TFServPipelineVenda.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := Maiuscula(key);
end;

procedure TFServPipelineVenda.FormShow(Sender: TObject);
begin
  FDM.QServPesq.Open;
  if FDMCRM.TPipelineVendaServ.State = dsinsert then
  begin
    cxDBLookupComboBox1.SetFocus
  end;
end;

procedure TFServPipelineVenda.calcula;
var
  total : real;
begin
    total := 0;
    if (FDMCRM.TPipelineVendaServQTDE.Value > 0) and (FDMCRM.TPipelineVendaServVLRUNIT.Value > 0) then
    begin
        FDMCRM.TPipelineVendaServTOTAL.Value := (FDMCRM.TPipelineVendaServVLRUNIT.Value * FDMCRM.TPipelineVendaServQTDE.Value);
    end;


end;

procedure TFServPipelineVenda.DBEdit3Exit(Sender: TObject);
begin
    calcula;
end;

end.
