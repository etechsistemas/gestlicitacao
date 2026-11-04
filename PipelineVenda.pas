unit PipelineVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, Menus, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  DBCtrls, cxDropDownEdit, cxCalendar, StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxButtons, Grids, DBGrids,
  Mask, ExtCtrls, cxPC, cxPCdxBarPopupMenu;

type
  TFPipelineVenda = class(TForm)
    cxPageControl1: TcxPageControl;
    Tab: TcxTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    cxPageControl2: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    Panel3: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    BtExcluir: TcxButton;
    cxButton6: TcxButton;
    PDados: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label22: TLabel;
    Label39: TLabel;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit20: TDBEdit;
    BtAddServ: TcxButton;
    BtRemServ: TcxButton;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    BtEmpresa: TcxButton;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label47: TLabel;
    EdTotPed: TEdit;
    Panel2: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label36: TLabel;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    DtInicial: TcxDateEdit;
    DtFinal: TcxDateEdit;
    cxButton17: TcxButton;
    CbEmp: TDBLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    Label27: TLabel;
    Label12: TLabel;
    EdTotPed2: TEdit;
    EdTotServ2: TEdit;
    DBGrid2: TDBGrid;
    Label14: TLabel;
    cxButton12: TcxButton;
    CbSolicitante: TDBLookupComboBox;
    Label37: TLabel;
    CbSit: TComboBox;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DtInicial2: TcxDateEdit;
    DtFinal2: TcxDateEdit;
    cxButton11: TcxButton;
    CbEmp2: TDBLookupComboBox;
    Label17: TLabel;
    cxButton13: TcxButton;
    CbSolicitante2: TDBLookupComboBox;
    Label18: TLabel;
    CbSit2: TComboBox;
    cxButton7: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxPageControl3: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    DBGrid4: TDBGrid;
    cxTabSheet7: TcxTabSheet;
    DBGrid5: TDBGrid;
    cxTabSheet8: TcxTabSheet;
    DBGrid6: TDBGrid;
    BtAddHisto: TcxButton;
    BtRemHisto: TcxButton;
    Label6: TLabel;
    Label19: TLabel;
    CbClientePotencial: TcxDBLookupComboBox;
    BtClientePotencial: TcxButton;
    CbContatoClientePotencial: TcxDBLookupComboBox;
    BtContatoClientePotencial: TcxButton;
    Label20: TLabel;
    CbVendedor: TcxDBLookupComboBox;
    BtVendedor: TcxButton;
    Label21: TLabel;
    DBEdit2: TDBEdit;
    Label23: TLabel;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    DBMemo2: TDBMemo;
    Label89: TLabel;
    DBComboBox9: TDBComboBox;
    Label25: TLabel;
    CbCliPoten2: TDBLookupComboBox;
    cxButton8: TcxButton;
    Label29: TLabel;
    CbCliPoten: TDBLookupComboBox;
    cxButton15: TcxButton;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1NOMEVEND: TcxGridDBColumn;
    cxGridDBTableView1NOMECLI: TcxGridDBColumn;
    cxGridDBTableView1NOMECLIPOTEN: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1SITUACAO: TcxGridDBColumn;
    cxGridDBTableView1STATUS: TcxGridDBColumn;
    cxGridDBTableView1DATACAD: TcxGridDBColumn;
    cxGridDBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1NOMECONT: TcxGridDBColumn;
    cxGridDBTableView1NOMECONTPOTEN: TcxGridDBColumn;
    cxGridDBTableView1DTINICIO: TcxGridDBColumn;
    cxGridDBTableView1DTFIM: TcxGridDBColumn;
    cxGridDBTableView1TOTSERV: TcxGridDBColumn;
    cxGridDBTableView1TOTPROD: TcxGridDBColumn;
    cxGridDBTableView1NOMEEMPFAT: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEVEND: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECLIPOTEN: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1DATACAD: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECONT: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECONTPOTEN: TcxGridDBColumn;
    cxGrid1DBTableView1DTINICIO: TcxGridDBColumn;
    cxGrid1DBTableView1DTFIM: TcxGridDBColumn;
    cxGrid1DBTableView1TOTSERV: TcxGridDBColumn;
    cxGrid1DBTableView1TOTPROD: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Label2: TLabel;
    CbStatus: TComboBox;
    CbStatus2: TComboBox;
    Label5: TLabel;
    Label8: TLabel;
    EdTotServ: TEdit;
    procedure BtInsereClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure somatotal;
    procedure BtRemItemClick(Sender: TObject);
    procedure BtRemServClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtAddServClick(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure BtEmpresaClick(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure CbEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbSolicitanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CbEmp2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton11Click(Sender: TObject);
    procedure CbSolicitante2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtImpPedsClick(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure BtVendedorClick(Sender: TObject);
    procedure CbVendedorExit(Sender: TObject);
    procedure BtClienteClick(Sender: TObject);
    procedure CbClienteExit(Sender: TObject);
    procedure BtContatoClienteClick(Sender: TObject);
    procedure CbContatoClienteExit(Sender: TObject);
    procedure BtClientePotencialClick(Sender: TObject);
    procedure CbClientePotencialExit(Sender: TObject);
    procedure CbContatoClientePotencialExit(Sender: TObject);
    procedure BtAddHistoClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codultprod, codultcot, codultserv, codpesq, codulthisto, forpesq, cons : integer;
    sql, sql2 : String;
    aprovando : boolean;
  end;

var
  FPipelineVenda: TFPipelineVenda;

implementation

uses UBiblio, relatorio, DMSistema, DMUsuario, Principal, DateUtils, SQLTimSt, DM,
   metodosServ, DMRh, ConEmpresa, DMCRM, Vendedores, Cliente, DMCliente, Contato, CliPoten,
  HistoPipelineVenda, ServPipelineVenda;

{$R *.dfm}

procedure TFPipelineVenda.BtAddHistoClick(Sender: TObject);
begin
    cxPageControl2.ActivePageIndex := 1;
    try
      Application.CreateForm(TFHistoPipelineVenda,FHistoPipelineVenda);
      FHistoPipelineVenda.Top := FPipelineVenda.Top + 30;
      FHistoPipelineVenda.Left := round(((FPipelineVenda.Width - FHistoPipelineVenda.Width) / 2) + FPipelineVenda.Left);
      if FDMCRM.TPipelineVendaServ.RecordCount > 0 then
      begin
        FDMCRM.TPipelineVendaServ.Last;
        codultserv := FDMCRM.TPipelineVendaServITEM.Value;
      end
      else
        codultserv := 0;
      FDMCRM.TPipelineVendaServ.Append;
      FHistoPipelineVenda.ShowModal

    finally
      FHistoPipelineVenda.Free;
    end;
end;

procedure TFPipelineVenda.somatotal;
var
  totprod, totserv, total : double;
  codprod, codserv : integer;
begin
     totprod := 0;
     totserv := 0;
     total := 0;

     codprod := FDMCRM.TPipelineVendaItCODPROD.Value;

     FDMCRM.TPipelineVendaIt.first;
     while not FDMCRM.TPipelineVendaIt.eof do
     begin
       totprod := totprod+ FDMCRM.TPipelineVendaItTOTAL.Value;
       FDMCRM.TPipelineVendaIt.next;
     end;
     FDMCRM.TPipelineVendaIt.first;

     if codprod > 0 then
      FDMCRM.TPipelineVendaIt.Locate('CODPROD',codprod,[]);

     codserv := FDMCRM.TPipelineVendaServCODSERV.Value;

     FDMCRM.TPipelineVendaServ.First;
     while not FDMCRM.TPipelineVendaServ.eof do
     begin
       totserv := FDMCRM.TPipelineVendaServTOTAL.Value;
       FDMCRM.TPipelineVendaServ.Next;
     end;
     FDMCRM.TPipelineVendaServ.First;

     if codserv > 0 then
      FDMCRM.TPipelineVendaServ.Locate('CODSERV',codserv,[]);

     FDMCRM.TPipelineVendaTOTPROD.Value := totprod;
     FDMCRM.TPipelineVendaTOTSERV.Value := totserv;
     FDMCRM.TPipelineVendaTOTAL.Value := totprod + totserv;
end;

procedure TFPipelineVenda.BtAddServClick(Sender: TObject);
begin
    cxPageControl2.ActivePageIndex := 1;
    try
      Application.CreateForm(TFServPipelineVenda,FServPipelineVenda);
      FServPipelineVenda.Top := FPipelineVenda.Top + 30;
      FServPipelineVenda.Left := round(((FPipelineVenda.Width - FServPipelineVenda.Width) / 2) + FPipelineVenda.Left);
      if FDMCRM.TPipelineVendaServ.RecordCount > 0 then
      begin
        FDMCRM.TPipelineVendaServ.Last;
        codultserv := FDMCRM.TPipelineVendaServITEM.Value;
      end
      else
        codultserv := 0;
      FDMCRM.TPipelineVendaServ.Append;
      FDMCRM.TPipelineVendaServQTDE.Value := 1;
      FServPipelineVenda.ShowModal;

    finally
      FServPipelineVenda.Free;
      somatotal;
    end;
end;

procedure TFPipelineVenda.BtCancelaClick(Sender: TObject);
var
  sql : String;
begin
    sql :='';
    if messagedlg('Tem certeza que deseja cancelar a inserção/ edição de dados?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
//      if (FDMCRM.TPipelineVenda.State = dsinsert) then
      begin
        FDMCRM.TPipelineVendaIt.CancelUpdates;
        FDMCRM.TPipelineVendaServ.CancelUpdates;
        FDMCRM.TPipelineVendaHist.CancelUpdates;
      end;

      FDMCRM.TPipelineVenda.Cancel;
      ativa;
      PDados.Enabled := true;
      Panel8.Enabled := false;

      btempresa.Enabled := False;
      btempresa.Enabled := false;
      BtAddServ.Enabled := false;
      BtRemServ.Enabled := false;
      BtRemHisto.Enabled := false;
      BtAddHisto.Enabled := false;

      BtVendedor.Enabled := false;

      BtClientePotencial.Enabled := false;

      BtContatoClientePotencial.Enabled := false;

      cxPageControl2.ActivePageIndex := 0;
    end;
end;

procedure TFPipelineVenda.BtClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliente, FCliente);
    FCliente.PConsulta.Visible := true;
    if FCliente.ShowModal = mrok then
    begin
      FDMCRM.TPipelineVendaCODCLI.Value := fdmcliente.TClienteCODIGO.Value;
      FDMCRM.TPipelineVendaNOMECLI.Value := fdmcliente.TClienteNOME.Value;

      FdmCliente.QCliContPesq.Filtered := false;
      FdmCliente.QCliContPesq.filter := 'CODCLI ='+inttostr(FdmCliente.TClienteCODIGO.Value);
      FdmCliente.QCliContPesq.Filtered := true;
    end;
  finally
    FCliente.Free;
  end;
end;

procedure TFPipelineVenda.BtClientePotencialClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliPoten, FCliPoten);
    FCliPoten.PConsulta.Visible := true;
    if FCliPoten.ShowModal = mrok then
    begin
      FDMCRM.TPipelineVendaCODCLIPOTEN.Value := FDMCRM.TCliPotenCODIGO.Value;
      FDMCRM.TPipelineVendaNOMECLIPOTEN.Value := FDMCRM.TCliPotenNOME.Value;
      FDMCRM.QCliPotenContPesq.Filtered := false;
      FDMCRM.QCliPotenContPesq.filter := 'CODCLIPOTEN ='+inttostr(FDMCRM.TPipelineVendaCODCLIPOTEN.Value);
      FDMCRM.QCliPotenContPesq.Filtered := true;
    end;
  finally
    FCliPoten.Free;
  end;
end;

procedure TFPipelineVenda.BtConfirmaClick(Sender: TObject);
var
  codigo : integer;
begin
{  if not (FDMCRM.TPipelineVendaCODSOL.Value > 0) then
  begin
     showmessage('Favor selecionar um solicitante!');
     abort;
  end;

  if (FDMCRM.TPipelineVendaIt.RecordCount = 0) and (FDMCRM.TPipelineVendaServ.RecordCount = 0) then
  begin
     showmessage('Favor adicionar um produto ou serviço!');
     abort;
  end;}

  if messagedlg('Confirmar o processo?',mtConfirmation,[mbYes,mbNo],0) = mryes then
  begin
      somatotal;
      if (FDMCRM.TPipelineVendaCODIGO.Value = 0) then
         codigo := ultimoemp('pipelinevenda','CODIGO', FDMCRM.TPipelineVendaCODEMPFAT.Value)
      else
         codigo := FDMCRM.TPipelineVendaCODIGO.Value;

    if (FDMCRM.TPipelineVendaCODIGO.Value = 0) then
    begin
      FDMCRM.TPipelineVendaIt.First;
      while not FDMCRM.TPipelineVendaIt.eof do
      begin
        FDMCRM.TPipelineVendaIt.Edit;
        FDMCRM.TPipelineVendaItCODPIPE.Value := codigo;
        FDMCRM.TPipelineVendaIt.Post;
        //FDMCRM.TPipelineVendaIt.next;
      end;

      FDMCRM.TPipelineVendaServ.first;
      while not FDMCRM.TPipelineVendaServ.eof do
      begin
        FDMCRM.TPipelineVendaServ.Edit;
        FDMCRM.TPipelineVendaServCODPIPE.Value := codigo;
        FDMCRM.TPipelineVendaServ.Post;
        //FDMCRM.TPipelineVendaServ.next;
      end;

      FDMCRM.TPipelineVendaHist.first;
      while not FDMCRM.TPipelineVendaHist.eof do
      begin
        FDMCRM.TPipelineVendaHist.Edit;
        FDMCRM.TPipelineVendaHistCODPIPE.Value := codigo;
        FDMCRM.TPipelineVendaHist.Post;
        //FDMCRM.TPipelineVendaHist.next;
      end;

      FDMCRM.TPipelineVendaCODIGO.Value := codigo;
    end;

    FDMCRM.TPipelineVenda.Post;
    FDMCRM.TPipelineVenda.ApplyUpdates(0);
    FDMCRM.TPipelineVendaIt.ApplyUpdates(0);
    FDMCRM.TPipelineVendaServ.ApplyUpdates(0);
    FDMCRM.TPipelineVendaHist.ApplyUpdates(0);

    ativa;
    PDados.Enabled := true;
    Panel8.Enabled := false;

    btempresa.Enabled := false;
    BtAddServ.Enabled := false;
    BtRemServ.Enabled := false;
    BtRemHisto.Enabled := false;
    BtAddHisto.Enabled := false;

    BtVendedor.Enabled := false;

    BtClientePotencial.Enabled := false;

    BtContatoClientePotencial.Enabled := false;

    cxPageControl2.ActivePageIndex := 0;
    aprovando := false;
  end;
end;

procedure TFPipelineVenda.BtContatoClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFContato, FContato);
    if FContato.ShowModal = mrok then
    begin
      FDMCRM.TPipelineVendaCODCONT.Value := FDMCliente.QConContatosITEM.Value;
      FDMCRM.TPipelineVendaNOMECONT.Value := FDMCliente.QConContatosNOME.Value;
    end;
  finally
    FContato.Free;
  end;
end;

procedure TFPipelineVenda.BtEditaClick(Sender: TObject);
begin
    if (FDMCRM.TPipelineVenda.RecordCount > 0) then
    begin
      FDMCRM.TPipelineVenda.Edit;
      Panel8.Enabled := true;
      desativa;
      DBEdit3.SetFocus;

      btempresa.Enabled := true;
      BtAddServ.Enabled := true;
      BtRemServ.Enabled := true;
      BtRemHisto.Enabled := true;
      BtAddHisto.Enabled := true;

      BtVendedor.Enabled := true;

      BtClientePotencial.Enabled := true;

      BtContatoClientePotencial.Enabled := true;
    end;

end;

procedure TFPipelineVenda.BtEmpresaClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFConEmpresa, FConEmpresa);
      FConEmpresa.Panel2.Visible := true;
      if FConEmpresa.ShowModal = mrok then
      begin
        FDMCRM.TPipelineVendaCODEMPFAT.Value := fdm.TEmpresaCODIGO.Value;
        FDMCRM.TPipelineVendaNOMEEMPFAT.Value := fdm.TEmpresaNOMEFANTA.Value;
      end;
    finally
      FConEmpresa.Free;
    end;
end;

procedure TFPipelineVenda.BtExcluirClick(Sender: TObject);
begin

    sql :='';

    if messagedlg('Você tem certeza que deseja excluir o processo '+inttostr(FDMCRM.TPipelineVendaCODIGO.Value)+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      sql := sql + ' delete from pipelinevendait where CODPIPE = '+inttoStr(FDMCRM.TPipelineVendaCODIGO.Value)+' and CODUSU = '+IntToStr(FDMCRM.TPipelineVendaCODUSU.Value)+' and CODEMPFAT = '+IntToStr(FDMCRM.TPipelineVendaCODEMPFAT.Value)+';';
      sql := sql + ' delete from pipelinevendaserv where CODPIPE = '+inttoStr(FDMCRM.TPipelineVendaCODIGO.Value)+' and CODUSU = '+IntToStr(FDMCRM.TPipelineVendaCODUSU.Value)+' and CODEMPFAT = '+IntToStr(FDMCRM.TPipelineVendaCODEMPFAT.Value)+';';
      sql := sql + ' delete from pipelinevendahist where CODPIPE = '+inttoStr(FDMCRM.TPipelineVendaCODIGO.Value)+' and CODUSU = '+IntToStr(FDMCRM.TPipelineVendaCODUSU.Value)+' and CODEMPFAT = '+IntToStr(FDMCRM.TPipelineVendaCODEMPFAT.Value)+';';
      //inputbox('','',sql);
      ExecSQL(sql);

      FDMCRM.TPipelineVenda.Delete;
      FDMCRM.TPipelineVenda.ApplyUpdates(0);
      FDMCRM.TPipelineVenda.Refresh;


    end;
end;

procedure TFPipelineVenda.BtImpPedsClick(Sender: TObject);
var
  sql : string;
begin
  if FDMCRM.TPipelineVenda.recordcount > 0 then
  begin
    if FDMCRM.TPipelineVendaSITUACAO.Value <> 'APROVADO' then
    begin

    sql := '';
    sql := sql + ' update solcompra set SITUACAO = '+quotedstr('APROVADO')+', USUAPROV = '+INTTOSTR(usulogado)+', NOMEUSUAPROV '+quotedstr(fdmusuario.QVerUsuarioNOME.Value)+', DATAAPROV = '+FormatDateTime('yyyy/mm/dd',date);
    sql := sql + ' where CODIGO = '+INTTOSTR(FDMCRM.TPipelineVendaCODIGO.Value)+' and CODEMPFAT = '+inttostr(FDMCRM.TPipelineVendaCODEMPFAT.Value);
    execsql(sql);
    FDMCRM.TPipelineVenda.Refresh;
    showmessage('Solicitação de compra aprovada com sucesso!');
    end
    else
    begin
      showmessage('Solicitação já aprovada!');
    end;
  end
  else
  begin
    showmessage('Favor selecionar uma solicitação de compra!');
  end;
end;

procedure TFPipelineVenda.BtInsereClick(Sender: TObject);
var
  sql : String;
begin
    FDMCRM.TPipelineVenda.Append;
    FDMCRM.TPipelineVendaCODIGO.Value := 0;
    FDMCRM.TPipelineVendaSTATUS.Value := 0;
    FDMCRM.TPipelineVendaDATACAD.Value := date;
    FDMCRM.TPipelineVendaDATAALT.Value := date;
    FDMCRM.TPipelineVendaSITUACAO.Value := 'INICIO';
    FDMCRM.TPipelineVendaCODUSU.Value := usulogado;

    FDMCRM.TPipelineVendaCODEMPFAT.Value := FDMUsuario.QVerUsuarioCODEMPFAT.Value;
    FDMCRM.TPipelineVendaNOMEEMPFAT.Value := FDMUsuario.QVerUsuarioNOMEEMPFAT.Value;
    codultprod := 0;
    codultserv := 0;
    codultcot := 0;
    Panel8.Enabled := true;
    desativa;



    BtAddServ.Enabled := true;
    BtRemServ.Enabled := true;
    BtRemHisto.Enabled := true;
    BtAddHisto.Enabled := true;

    btempresa.Enabled := true;
    BtVendedor.Enabled := true;

    BtClientePotencial.Enabled := true;

    BtContatoClientePotencial.Enabled := true;

    dbedit3.SetFocus;

end;

procedure TFPipelineVenda.BtRemItemClick(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaIt.RecordCount > 0 then
    begin
      FDMCRM.TPipelineVendaIt.Delete;
      somatotal;
    end;
end;

procedure TFPipelineVenda.BtRemServClick(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaServ.RecordCount > 0 then
    begin
      FDMCRM.TPipelineVendaServ.Delete;
      somatotal;
    end;

end;

procedure TFPipelineVenda.BtVendedorClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFVendedores, FVendedores);
    FVendedores.PConsulta.Visible := true;
    FVendedores.tipo := 'EXTERNO';
    if FVendedores.ShowModal = mrok then
    begin
      FDMCRM.TPipelineVendaCODVEND.Value := FDMrh.TVendedorCODIGO.Value;
      FDMCRM.TPipelineVendaNOMEVEND.Value := FDMrh.TVendedorNOME.Value;
    end;
  finally
    FVendedores.Free;
  end;
end;

procedure TFPipelineVenda.CbClienteExit(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaCODCLI.Value > 0 then
    begin
      FDMCliente.QCliPesq.Locate('CODIGO',FDMCRM.TPipelineVendaCODCLI.Value,[]);
      FDMCRM.TPipelineVendaNOMECLI.Value :=  FDMCliente.QCliPesqNOME.Value;
      FdmCliente.QCliContPesq.Filtered := false;
      FdmCliente.QCliContPesq.filter := 'CODCLI ='+inttostr(FdmCliente.TClienteCODIGO.Value);
      FdmCliente.QCliContPesq.Filtered := true;
    end;
end;

procedure TFPipelineVenda.CbClientePotencialExit(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaCODCLIPOTEN.Value > 0 then
    begin
     // FDMCliente.QCliPotenPesq.Locate('CODIGO',FDMCRM.TVisitaCODCLIPOTEN.Value,[]);
      FDMCRM.TPipelineVendaNOMECLIPOTEN.Value :=  FDMCRM.QCliPotenPesqNOME.Value;
      FDMCRM.QCliPotenContPesq.Filtered := false;
      FDMCRM.QCliPotenContPesq.filter := 'CODCLIPOTEN ='+inttostr(FDMCRM.TPipelineVendaCODCLIPOTEN.Value);
      FDMCRM.QCliPotenContPesq.Filtered := true;
    end;
end;

procedure TFPipelineVenda.CbContatoClienteExit(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaCODCONT.Value > 0 then
    begin
      FDMCliente.QCliContPesq.Locate('CODIGO',FDMCRM.TPipelineVendaCODCONT.Value,[]);
      FDMCRM.TPipelineVendaNOMECONT.Value :=  FDMCliente.QCliContPesqNOME.Value;
    end;
end;

procedure TFPipelineVenda.CbContatoClientePotencialExit(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaCODCONTPOTEN.Value > 0 then
    begin
      FDMCRM.QCliPotenContPesq.Locate('CODIGO',FDMCRM.TPipelineVendaCODCONTPOTEN.Value,[]);
      FDMCRM.TPipelineVendaNOMECONTPOTEN.Value :=  FDMCRM.QCliPotenContPesqNOME.Value;
    end;
end;

procedure TFPipelineVenda.CbEmp2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_BACK then
  begin
    CbEmp2.KeyValue := -1;
  end;
end;

procedure TFPipelineVenda.CbEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_BACK then
  begin
    CbEmp.KeyValue := -1;
  end;
end;

procedure TFPipelineVenda.CbSolicitante2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_BACK then
  begin
    CbSolicitante2.KeyValue := -1;
  end;
end;

procedure TFPipelineVenda.CbSolicitanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_BACK then
  begin
    CbSolicitante.KeyValue := -1;
  end;
end;

procedure TFPipelineVenda.CbVendedorExit(Sender: TObject);
begin

    if FDMCRM.TPipelineVendaCODVEND.Value > 0 then
    begin
      FDMRH.QVendPesq.Locate('CODIGO',FDMCRM.TPipelineVendaCODVEND.Value,[]);
      FDMCRM.TPipelineVendaNOMEVEND.Value :=  FDMRH.QVendPesqNOME.Value;
    end;
end;

procedure TFPipelineVenda.cxButton10Click(Sender: TObject);
var
  filtrando : boolean;
begin
    filtrando := false;
    FDMCRM.QConPipelineVenda2.Close;
    FDMCRM.QSomaPipelineVenda.Close;

    sql := '';
    sql2 := '';
    sql := sql + ' select CODIGO, CODUSU, CODEMPFAT, DATACAD, NOMEEMPFAT, NOMEVEND,';
    sql := sql + ' NOMEATEND, NOMECLI, NOMECONT, NOMECLIPOTEN, NOMECONTPOTEN,';
    sql := sql + ' TOTAL, SITUACAO, ORCAMENTO, NOMEETAPA, STATUS, DTINICIO,';
    sql := sql + ' DTFIM, TOTSERV, TOTPROD, DESCRICAO, OBSERVACAO, NOMEMEIOCONTATO';
    sql := sql + ' from pipelinevenda';

    sql2 := sql2 + ' select sum(TOTAL) TOTAL, SUM(TOTPROD) TOTPROD, SUM(TOTSERV) TOTSERV, count(*) QUANTIDADE from pipelinevenda';


    if (DtInicial2.text <>'') and (DtFinal2.text <>'') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' datacad >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtInicial2.text)));
      sql := sql + ' and datacad <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtFinal2.text)));

      sql2 := sql2 + ' datacad >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtInicial2.text)));
      sql2 := sql2 + ' and datacad <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtFinal2.text)));
    end;

    if (CbSolicitante2.KeyValue > 0) then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODVEND = '+inttostr(CbSolicitante2.KeyValue);
      sql2 := sql2 + ' CODVEND = '+inttostr(CbSolicitante2.KeyValue);
    end;


    if (CbStatus2.Text <> '') and (CbStatus2.Text <> 'TODOS') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      sql := sql + ' STATUSDESC = '+QuotedStr(CbStatus2.Text);
      sql2 := sql2 + ' STATUSDESC = '+QuotedStr(CbStatus2.Text);
    end;

    if (CbCliPoten2.KeyValue > 0) then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODCLIPOTEN = '+inttostr(CbCliPoten2.KeyValue);
      sql2 := sql2 + ' CODCLIPOTEN = '+inttostr(CbCliPoten2.KeyValue);
    end;

    if (cbEmp2.Text <> '') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODEMPFAT = '+inttostr(cbEmp2.KeyValue);
      sql2 := sql2 + ' CODEMPFAT = '+inttostr(cbEmp2.KeyValue);
    end;

    if (CbSit2.Text <> '') and (CbSit2.Text <> 'TODOS') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      sql := sql + ' SITUACAO = '+QuotedStr(CbSit2.Text);
      sql2 := sql2 + ' SITUACAO = '+QuotedStr(CbSit2.Text);
    end;


    FDMCRM.QConPipelineVenda2.open;
    FDMCRM.QSomaPipelineVenda.open;

    EdTotServ2.Text := formatfloat('0.00',FDMCRM.QSomaPipelineVendaTOTSERV.Value);
    EdTotPed2.Text := formatfloat('0.00',FDMCRM.QSomaPipelineVendaTOTAL.Value);
end;

procedure TFPipelineVenda.cxButton11Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFConEmpresa,FConEmpresa);
      if FConEmpresa.ShowModal = mrok then
      begin
        CbEmp2.KeyValue := fdm.TEmpresaCODIGO.Value;
      end;
    finally
      FConEmpresa.Free;
    end;
end;

procedure TFPipelineVenda.cxButton15Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliPoten, FCliPoten);
    FCliPoten.PConsulta.Visible := true;
    if FCliPoten.ShowModal = mrok then
    begin
      CbCliPoten.KeyValue := FDMCRM.TCliPotenCODIGO.Value;
    end;
  finally
    FCliPoten.Free;
    FCliPoten := nil;
  end;
end;

procedure TFPipelineVenda.cxButton16Click(Sender: TObject);
var
  pedido,empresa : String;
begin
    pedido := inputbox('E-Tech','Informe o código da solicitação:','');
    empresa := inputbox('E-Tech','Informe o código da empresa:','');
    if (trim(pedido) <> '') and (trim(empresa) <> '') then
    begin
      FDMCRM.TPipelineVenda.Close;
      FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := StrToIntDef(pedido,0);
      FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := StrToIntDef(empresa,0);
      FDMCRM.TPipelineVenda.Open;
    end;
end;

procedure TFPipelineVenda.cxButton17Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFConEmpresa,FConEmpresa);
      if FConEmpresa.ShowModal = mrok then
      begin
        CbEmp.KeyValue := fdm.TEmpresaCODIGO.Value;
      end;
    finally
      FConEmpresa.Free;
    end;
end;

procedure TFPipelineVenda.cxButton1Click(Sender: TObject);
var
  filtrando : boolean;
begin
    filtrando := false;
    FDMCRM.QConPipelineVenda.Close;
    FDMCRM.QSomaPipelineVenda.Close;

    sql := '';
    sql2 := '';
    sql := sql + ' select CODIGO,CODEMPFAT,DATACAD,NOMEEMPFAT,NOMEVEND,NOMEATEND,NOMECLI,NOMECONT,NOMECLIPOTEN,NOMECONTPOTEN,';
    sql := sql + ' TOTAL,SITUACAO,ORCAMENTO,NOMEETAPA,STATUS,DTINICIO,DTFIM,TOTSERV,TOTPROD,DESCRICAO,OBSERVACAO,NOMEMEIOCONTATO';
    sql := sql + ' from pipelinevenda';

    sql2 := sql2 + ' select sum(TOTAL) TOTAL, SUM(TOTPROD) TOTPROD, SUM(TOTSERV) TOTSERV, count(*) QUANTIDADE from pipelinevenda';

    if (DtInicial.text <>'') and (DtFinal.text <>'') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' datacad >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtInicial.text)));
      sql := sql + ' and datacad <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtFinal.text)));

      sql2 := sql2 + ' datacad >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtInicial.text)));
      sql2 := sql2 + ' and datacad  <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',strtodate(DtFinal.text)));
    end;

    if (CbSolicitante.KeyValue > 0) then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODVEND = '+inttostr(CbSolicitante.KeyValue);
      sql2 := sql2 + ' CODVEND = '+inttostr(CbSolicitante.KeyValue);
    end;

    if (CbCliPoten.KeyValue > 0) then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODCLIPOTEN = '+inttostr(CbCliPoten.KeyValue);
      sql2 := sql2 + ' CODCLIPOTEN = '+inttostr(CbCliPoten.KeyValue);
    end;

    if (cbEmp.Text <> '') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;

      sql := sql + ' CODEMPFAT = '+inttostr(cbEmp.KeyValue);
      sql2 := sql2 + ' CODEMPFAT = '+inttostr(cbEmp.KeyValue);
    end;

    if (CbSit.Text <> '') and (CbSit.Text <> 'TODOS') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      sql := sql + ' SITUACAO = '+QuotedStr(CbSit.Text);
      sql2 := sql2 + ' SITUACAO = '+QuotedStr(CbSit.Text);
    end;

    if (CbStatus.Text <> '') and (CbStatus.Text <> 'TODOS') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
        sql2 := sql2 + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        sql2 := sql2 + ' where ';
        filtrando := true;
      end;
      sql := sql + ' STATUSDESC = '+QuotedStr(CbStatus.Text);
      sql2 := sql2 + ' STATUSDESC = '+QuotedStr(CbStatus.Text);
    end;

    FDMCRM.QConPipelineVenda.open;
    FDMCRM.QSomaPipelineVenda.open;

    EdTotServ.Text := formatfloat('0.00',FDMCRM.QSomaPipelineVendaTOTSERV.Value);
    EdTotPed.Text := formatfloat('0.00',FDMCRM.QSomaPipelineVendaTOTAL.Value);
end;

procedure TFPipelineVenda.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFPipelineVenda.cxButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFPipelineVenda.cxButton7Click(Sender: TObject);
begin
  close;
end;

procedure TFPipelineVenda.cxButton8Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFCliPoten, FCliPoten);
    FCliPoten.PConsulta.Visible := true;
    if FCliPoten.ShowModal = mrok then
    begin
      CbCliPoten2.KeyValue := FDMCRm.TCliPotenCODIGO.Value;
    end;
  finally
    FCliPoten.Free;
  end;
end;

procedure TFPipelineVenda.cxDBLookupComboBox2Exit(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaCODEMPFAT.Value > 0 then
    begin
      fdm.QEmpresaPesq.Locate('CODIGO',FDMCRM.TPipelineVendaCODEMPFAT.Value,[]);
      FDMCRM.TPipelineVendaNOMEEMPFAT.Value := fdm.QEmpresaPesqNOMEFANTA.Value;
    end;
end;

procedure TFPipelineVenda.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cons := 1;
end;

procedure TFPipelineVenda.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    FDMCRM.TPipelineVenda.Close;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConPipelineVendaCODIGO.Value;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := FDMCRM.QConPipelineVendaCODEMPFAT.Value;
    FDMCRM.TPipelineVenda.Open;
    cons := 3;
    cxPageControl1.ActivePageIndex := 0;
end;

procedure TFPipelineVenda.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cons := 2;
end;

procedure TFPipelineVenda.cxGridDBTableView1DblClick(Sender: TObject);
begin
    FDMCRM.TPipelineVenda.Close;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConPipelineVenda2CODIGO.Value;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := FDMCRM.QConPipelineVenda2CODEMPFAT.Value;
    FDMCRM.TPipelineVenda.Open;
    cons := 3;
    cxPageControl1.ActivePageIndex := 0;
end;

procedure TFPipelineVenda.cxPageControl1Change(Sender: TObject);
begin
    if (FDMCRM.TPipelineVenda.State in [dsinsert, dsedit]) and (cxPageControl1.ActivePageIndex <> 0) then
    begin
        ShowMessage('Para esta operação, favor cancelar a Inserção/Edição do seu cadastro.');
        cxPageControl1.ActivePageIndex := 0;
    end
    else
    begin
      if (cxPageControl1.ActivePageIndex = 0) and not (FDMCRM.TPipelineVenda.State in [dsinsert, dsedit]) then
      begin
        if cons = 1 then
        begin
          FDMCRM.TPipelineVenda.Close;
          FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConPipelineVendaCODIGO.Value;
          FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := FDMCRM.QConPipelineVenda2CODEMPFAT.Value;
          FDMCRM.TPipelineVenda.Open;
        end
        else if cons = 2 then
        begin
          FDMCRM.TPipelineVenda.Close;
          FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := FDMCRM.QConPipelineVenda2CODIGO.Value;
          FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := FDMCRM.QConPipelineVenda2CODEMPFAT.Value;
          FDMCRM.TPipelineVenda.Open;
        end;
      end;
    end;
end;

procedure TFPipelineVenda.DBGrid2DblClick(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaServ.RecordCount > 0 then
    begin
      try
        Application.CreateForm(TFServPipelineVenda,FServPipelineVenda);
        FServPipelineVenda.Top := FPipelineVenda.Top + 30;
        FServPipelineVenda.Left := round(((FPipelineVenda.Width - FServPipelineVenda.Width) / 2) + FPipelineVenda.Left);

        codultserv := FDMCRM.TPipelineVendaServITEM.Value;
        FDMCRM.TPipelineVendaServ.edit;
        FServPipelineVenda.ShowModal;
      finally
        FServPipelineVenda.Free;
        somatotal;
      end;
    end;
end;

procedure TFPipelineVenda.DBGrid5DblClick(Sender: TObject);
begin
    if FDMCRM.TPipelineVendaIt.RecordCount > 0 then
    begin
      try
        Application.CreateForm(TFHistoPipelineVenda,FHistoPipelineVenda);
        FHistoPipelineVenda.Top := FPipelineVenda.Top + 30;
        FHistoPipelineVenda.Left := round(((FPipelineVenda.Width - FHistoPipelineVenda.Width) / 2) + FPipelineVenda.Left);

        codultprod := FDMCRM.TPipelineVendaItITEM.Value;
        FDMCRM.TPipelineVendaIt.edit;
        FHistoPipelineVenda.ShowModal;
      finally
        FHistoPipelineVenda.Free;
        somatotal;
      end;
    end;
end;

procedure TFPipelineVenda.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFPipelineVenda.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
    key := maiuscula(key);
end;

procedure TFPipelineVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FDMCRM.TPipelineVenda.Close;
    FDMCRM.TPipelineVendaIt.Close;
    FDMCRM.TPipelineVendaServ.Close;
    FDMCRM.TPipelineVendaHist.Close;

    FDMRH.QVendPesq.close;
    FDMRH.TVendedor.Close;

    FDMCRM.QCliPotenPesq.close;
    FDMCRM.QCliPotenContPesq.close;
    FDMCliente.QCliPesq.close;
    FDMCliente.QCliContPesq.close;

    fdmcrm.QConPipelineVenda.Close;
    fdmcrm.QConPipelineVenda2.Close;
    fdmcrm.QConPipelineVendait.Close;
    fdmcrm.QConPipelineVendaserv.Close;
    fdmcrm.QConPipelineVendaHist.Close;
end;

procedure TFPipelineVenda.FormShow(Sender: TObject);
begin
    fdm.QEmpresaPesq.Open;

    FDMRH.QVendPesq.Open;

    FDMCRM.QCliPotenPesq.Open;
    FDMCRM.QCliPotenContPesq.Open;
    FDMCliente.QCliPesq.Open;
    FDMCliente.QCliContPesq.Open;

    DtInicial.Date := FirstDayOfMonth(date);
    DtInicial2.Date := FirstDayOfMonth(date);
    DtFinal.Date := LastDayOfMonth(date);
    DtFinal2.Date := LastDayOfMonth(date);

    FDMCRM.TPipelineVenda.Close;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODIGO').AsInteger := 999999999;
    FDMCRM.TPipelineVenda.Params.ParamByName('CODEMPFAT').AsInteger := 999999999;
    FDMCRM.TPipelineVenda.Open;

    cxPageControl1.ActivePageIndex := 0;
end;

end.
