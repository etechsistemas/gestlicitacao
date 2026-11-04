unit ProcLicDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinsCore, dxSkinBlack, shellapi;

type
  TFProcLicDoc = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    cxButton1: TcxButton;
    BtFechar: TcxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    Label59: TLabel;
    DBEdit2: TDBEdit;
    procedure BtFecharClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FProcLicDoc: TFProcLicDoc;

implementation

uses  DB, DMGerLicitacao, Processo, DM, UBiblio, metodosServ,
  Principal;

{$R *.dfm}

//parte do texto depois de 'procura' (vazio se nao achar)
function depoisde(const texto, procura : string) : string;
var
  p : integer;
begin
  p := Pos(procura, texto);
  if p = 0 then
    result := ''
  else
    result := Copy(texto, p + Length(procura), MaxInt);
end;

procedure TFProcLicDoc.BtFecharClick(Sender: TObject);
begin
    FDMGerLicitacao.TProcessoLicArq.Cancel;
    close;
end;

procedure TFProcLicDoc.cxButton1Click(Sender: TObject);
var
  editando : boolean;
begin
    editando := false;
    if FDMGerLicitacao.TProcessoLicArqCAMINHO.value = '' then
    begin
      showmessage('O documento é obrigatório!');
      dbedit1.SetFocus;
      abort;
    end;

    if messagedlg('Confirmar o documento '+FDMGerLicitacao.TProcessoLicArqDESCRICAO.value+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      if FDMGerLicitacao.TProcessoLicArq.State = dsinsert then
      begin
          Fprocesso.ultarq := Fprocesso.ultarq + 1;
      end
      else
      begin
        editando := true;
      end;
      FDMGerLicitacao.TProcessoLicArqITEM.Value := Fprocesso.ultarq;
      FDMGerLicitacao.TProcessoLicArqPROCESSO.Value := FDMGerLicitacao.TProcessoLicCODIGO.value;
      FDMGerLicitacao.TProcessoLicArqCODEMPFAT.Value := FDMGerLicitacao.TProcessoLicCODEMPFAT.value;
      FDMGerLicitacao.TProcessoLicArqCODCLI.Value := FDMGerLicitacao.TProcessoLicCODCLI.value;
      FDMGerLicitacao.TProcessoLicArqCODUSU.Value := FDMGerLicitacao.TProcessoLicCODUSU.value;

      FDMGerLicitacao.TProcessoLicArq.post;
      if editando then
      begin
        FDMGerLicitacao.TProcessoLicArq.last;
        Fprocesso.ultarq := FDMGerLicitacao.TProcessoLicArqITEM.Value;
      end;
      FDMGerLicitacao.TProcessoLicArq.Append;
      DBEdit2.SetFocus;
    end
    else
    begin
      if FDMGerLicitacao.TProcessoLicArq.State = dsedit then
        editando := true;
      FDMGerLicitacao.TProcessoLicArq.cancel;
      if editando then
      begin
        FDMGerLicitacao.TProcessoLicArq.last;
        Fprocesso.ultarq := FDMGerLicitacao.TProcessoLicArqITEM.Value;
      end;
      FDMGerLicitacao.TProcessoLicArq.Append;
      DBEdit2.SetFocus;
    end;
end;

procedure TFProcLicDoc.cxButton2Click(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicArqCAMINHO.Value <> '' then
      ShellExecuteA(0,nil,PansiChar(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value) ,nil, nil, SW_SHOWNORMAL);
end;

procedure TFProcLicDoc.cxButton3Click(Sender: TObject);
begin
    if OpenDialog1.Execute then
    begin
      {if (ipservidor = IpAddress) then
      begin
        FDMGerLicitacao.TProcessoLicArqCAMINHO.Value := '\\'+getipservidor()+'\'+FDMGerLicitacao.TConfigLicPASTABASEEDITAIS.Value+depoisde(OpenDialog1.FileName,FDMGerLicitacao.TConfigLicPASTABASEEDITAIS.Value);
      end
      else
      begin}
        FDMGerLicitacao.TProcessoLicArqCAMINHO.Value := OpenDialog1.FileName;
//      end;
    end;
end;

end.
