unit Processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Menus,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxTextEdit, shellapi,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, DBCtrls, Mask, cxButtons, Grids, DBGrids, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar;

type
  TFProcesso = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Panel5: TPanel;
    Panel10: TPanel;
    BtGerar: TcxButton;
    GridDuplicatas: TDBGrid;
    PDados: TPanel;
    Label3: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label48: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label46: TLabel;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    BtConCli: TcxButton;
    DBEdit20: TDBEdit;
    EdCodigoCliente: TcxDBLookupComboBox;
    EdVendedor: TcxDBLookupComboBox;
    BtnContCli: TcxButton;
    BtnModalidade: TcxButton;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    DBEdit8: TDBEdit;
    DBEdit21: TDBEdit;
    Panel3: TPanel;
    BtInsere: TcxButton;
    cxButton3: TcxButton;
    BtConfirma: TcxButton;
    BtCancela: TcxButton;
    BtEdita: TcxButton;
    BtExcluir: TcxButton;
    BtnEmail: TcxButton;
    BtnCliente: TcxButton;
    Label4: TLabel;
    BtnEntidade: TcxButton;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    BtnFonte: TcxButton;
    Label9: TLabel;
    BtnContato: TcxButton;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxTabSheet5: TcxTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    DBGrid1: TDBGrid;
    Label35: TLabel;
    Panel2: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label36: TLabel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    EdCodCli: TEdit;
    cxButton8: TcxButton;
    EdNomeCli: TEdit;
    cxButton9: TcxButton;
    DtInicial: TcxDateEdit;
    DtFinal: TcxDateEdit;
    CbSituacao: TComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label43: TLabel;
    BtnEmpFat: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox8: TDBComboBox;
    Panel4: TPanel;
    BtnAddHistorico: TcxButton;
    BtnRemHistorico: TcxButton;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEENTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECLI: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1DATAABERTURA: TcxGridDBColumn;
    cxGrid1DBTableView1HORAABERTURA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOREDITAL: TcxGridDBColumn;
    cxGrid1DBTableView1RESULTADOGERAL: TcxGridDBColumn;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMAX: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEMODALIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMETIPOFONTE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORPROPOSTA: TcxGridDBColumn;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    Panel6: TPanel;
    Label65: TLabel;
    DBComboBox4: TDBComboBox;
    Label56: TLabel;
    DBEdit33: TDBEdit;
    DBGrid2: TDBGrid;
    BtnAddResultado: TcxButton;
    BtnRemResultado: TcxButton;
    cxButton21: TcxButton;
    Label57: TLabel;
    DBEdit34: TDBEdit;
    Label58: TLabel;
    DBMemo4: TDBMemo;
    Label59: TLabel;
    Label60: TLabel;
    CbLocalizador: TcxDBLookupComboBox;
    EdCondPag: TcxDBLookupComboBox;
    Panel7: TPanel;
    BtnAddItem: TcxButton;
    BtnRemItem: TcxButton;
    DBGrid4: TDBGrid;
    Label61: TLabel;
    DBEdit35: TDBEdit;
    Label62: TLabel;
    DBEdit36: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Panel8: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label41: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    BtEndereco: TcxButton;
    DBEdit23: TDBEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    DBEdit24: TDBEdit;
    DBMemo3: TDBMemo;
    DBComboBox6: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBEdit30: TDBEdit;
    DBComboBox9: TDBComboBox;
    DBEdit31: TDBEdit;
    DBComboBox10: TDBComboBox;
    DBEdit32: TDBEdit;
    DBComboBox11: TDBComboBox;
    Panel9: TPanel;
    Label38: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    DBMemo2: TDBMemo;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Panel12: TPanel;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBCheckBox35: TcxDBCheckBox;
    cxDBCheckBox36: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox46: TcxDBCheckBox;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Panel1: TPanel;
    BtAddProcLicDoc: TcxButton;
    BtRevProcLicDoc: TcxButton;
    BtVisuProcLicDoc: TcxButton;
    DBGrid3: TDBGrid;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure BtInsereClick(Sender: TObject);
    procedure BtVisuProcLicDocClick(Sender: TObject);
    procedure BtRevProcLicDocClick(Sender: TObject);
    procedure BtAddProcLicDocClick(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtConCliClick(Sender: TObject);
    procedure BtnEntidadeClick(Sender: TObject);
    procedure BtnModalidadeClick(Sender: TObject);
    procedure BtnFonteClick(Sender: TObject);
    procedure BtnEmpFatClick(Sender: TObject);
    procedure BtnContCliClick(Sender: TObject);
    procedure BtEnderecoClick(Sender: TObject);
    procedure BtnContatoClick(Sender: TObject);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdVendedorExit(Sender: TObject);
    procedure cxDBLookupComboBox4Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBLookupComboBox5Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure cxDBLookupComboBox7Exit(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtEditaClick(Sender: TObject);
    procedure BtCancelaClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEmailClick(Sender: TObject);
    procedure EdCodigoClienteExit(Sender: TObject);
    procedure DBMemo4KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton9Click(Sender: TObject);
    procedure BtnAddResultadoClick(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure BtnRemResultadoClick(Sender: TObject);
    procedure BtnRemItemClick(Sender: TObject);
    procedure BtnAddItemClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure BtnRemHistoricoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ultarq, ultcont, codultprod, codemppesq, codpesq : integer;
    sql, sql2 : STring;
  end;

var
  FProcesso: TFProcesso;

implementation

uses DMGerLicitacao, UBiblio, metodosServ, Principal, ProcLicDoc, ConCli,
  Cliente, DMCliente, Entidade, Modalidade, FonteLic, ConEmpresa, Contato,
  Filial, FilialEntidade, ContatoEntidade, DM, DMUsuario, Email, ProcessoDup,
  ItemProcesso, ConProcesso;

{$R *.dfm}

procedure TFProcesso.BtAddProcLicDocClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFProcLicDoc,FProcLicDoc);
      FProcLicDoc.Top := FProcesso.Top + 30;
      FProcLicDoc.Left := round(((FProcesso.Width - FProcLicDoc.Width) / 2) + FProcesso.Left);
      if FDMGerLicitacao.TProcessoLicArq.RecordCount > 0 then
      begin
        FDMGerLicitacao.TProcessoLicArq.Last;
        ultarq := FDMGerLicitacao.TProcessoLicArqITEM.Value;
      end;
      FDMGerLicitacao.TProcessoLicArq.Append;
      FProcLicDoc.ShowModal;
    finally
      FProcLicDoc.Free;

    end;
end;

procedure TFProcesso.BtCancelaClick(Sender: TObject);
begin
    if messagedlg('Você tem certeza que deseja cancelar?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
      FDMGerLicitacao.TProcessoLicArq.CancelUpdates;
      FDMGerLicitacao.TProcessoLicCont.CancelUpdates;
      FDMGerLicitacao.TProcessoLicIt.CancelUpdates;
      FDMGerLicitacao.TProcessoDup.CancelUpdates;

      FDMGerLicitacao.TProcessoLic.Cancel;
      FDMGerLicitacao.TProcessoLic.Refresh;

      ativa;

      marcaCamposChave(false);

      BtnAddResultado.Enabled := false;
      BtnAddItem.Enabled := false;
      BtnRemResultado.Enabled := false;
      BtnRemItem.Enabled := false;
      PDados.Enabled := false;
      DBEdit3.enabled := false;
      BtAddProcLicDoc.Enabled := false;
      BtRevProcLicDoc.Enabled := false;
      BtVisuProcLicDoc.Enabled := false;
      btncliente.Enabled := false;
      BtConCli.Enabled := false;
      BtGerar.Enabled := false;
      panel5.Enabled := false;
      panel6.Enabled := false;
      BtConCli.Enabled := false;
      BtEndereco.Enabled := false;
      BtnContCli.Enabled := false;
      BtnModalidade.Enabled := false;
      BtnEntidade.Enabled := false;
      BtnFonte.Enabled := false;
      BtnContato.Enabled := false;
      BtnEmpFat.Enabled := false;
      BtnRemHistorico.Enabled := false;
      BtnAddHistorico.Enabled := false;
      panel8.Enabled := false;
      panel9.Enabled := false;
      panel12.Enabled := false;
    end;
end;

procedure TFProcesso.BtConCliClick(Sender: TObject);
begin
     try
         Application.CreateForm(TFCliente,FCliente);
         FCliente.PConsulta.Visible := true;

         if FCliente.ShowModal = mrok then
         begin
            FDMGerLicitacao.TProcessoLicCODCLI.Value := fdmcliente.TClienteCODIGO.Value;
            FDMGerLicitacao.TProcessoLicNOMECLI.Value := fdmcliente.TClienteNOME.Value;

            FdmCliente.QCliContPesq.Filtered := false;
            FdmCliente.QCliContPesq.filter := 'CODCLI ='+inttostr(FdmCliente.TClienteCODIGO.Value);
            FdmCliente.QCliContPesq.Filtered := true;

            FdmCliente.QClifilialPesq.Filtered := false;
            FdmCliente.QClifilialPesq.filter := 'CODCLI ='+inttostr(FdmCliente.TClienteCODIGO.Value);
            FdmCliente.QClifilialPesq.Filtered := true;
         end
         else
         begin
            if not(FDMGerLicitacao.TProcessoLicCODCLI.Value > 0) then
            begin
                ShowMessage('Necessário selecionar um Cliente para finalizar o processo.');
            end;
         end;
         cxDBLookupComboBox2.SetFocus;
     finally
         FCliente.free;
         FCliente := nil;
     end;
end;

procedure TFProcesso.BtConfirmaClick(Sender: TObject);
var  codigo, i, pedido, empresa : integer;
     totdup, total : real;

begin
    pedido := 0;
    empresa := 0;

    if not (FDMGerLicitacao.TProcessoLicCODCLI.Value > 0) then
    begin
      showmessage('O cliente é obrigatório!');
      EdCodigoCliente.SetFocus;
      abort;
    end;

    if not (FDMGerLicitacao.TProcessoLicCODENTIDADE.Value > 0) then
    begin
      showmessage('A entidade é obrigatória!');
      cxDBLookupComboBox3.SetFocus;
      abort;
    end;

    if not (FDMGerLicitacao.TProcessoLicCODEMPFAT.Value > 0) then
    begin
      showmessage('A empresa é obrigatória!');
      cxDBLookupComboBox1.SetFocus;
      abort;
    end;
      if messagedlg('Confirmar o processo?',mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        if (FDMGerLicitacao.TProcessoLicCODIGO.Value = 0) then
        begin
          if (FDMGerLicitacao.TProcessoLicCODIGO.Value = 0) then
            codigo := ultimoemp('processolic','CODIGO',FDMGerLicitacao.TProcessoLicCODEMPFAT.Value)
          else
            codigo := FDMGerLicitacao.TProcessoLicCODIGO.Value;

          FDMGerLicitacao.TProcessoLicArq.First;
          while not FDMGerLicitacao.TProcessoLicArq.eof do
          begin
            FDMGerLicitacao.TProcessoLicArq.Edit;
            FDMGerLicitacao.TProcessoLicArqPROCESSO.Value := codigo;
            FDMGerLicitacao.TProcessoLicArq.Post;
            FDMGerLicitacao.TProcessoLicArq.next;
          end;

          FDMGerLicitacao.TProcessoLicCont.First;
          while not FDMGerLicitacao.TProcessoLicCont.eof do
          begin
            FDMGerLicitacao.TProcessoLicCont.Edit;
            FDMGerLicitacao.TProcessoLicContPROCESSO.Value := codigo;
            FDMGerLicitacao.TProcessoLicCont.Post;
            FDMGerLicitacao.TProcessoLicCont.next;
          end;

          FDMGerLicitacao.TProcessoLicIt.First;
          while not FDMGerLicitacao.TProcessoLicIt.eof do
          begin
            FDMGerLicitacao.TProcessoLicIt.Edit;
            FDMGerLicitacao.TProcessoLicItPROCESSO.Value := codigo;
            FDMGerLicitacao.TProcessoLicIt.Post;
            FDMGerLicitacao.TProcessoLicIt.next;
          end;

          FDMGerLicitacao.TProcessoDup.First;
          while not FDMGerLicitacao.TProcessoDup.eof do
          begin
            FDMGerLicitacao.TProcessoDup.Edit;
            FDMGerLicitacao.TProcessoDupNUMDOC.Value := codigo;
            FDMGerLicitacao.TProcessoDupNUMDUP.Value := inttostr(codigo)+'-'+inttostr(FDMGerLicitacao.TProcessoDupPARCELA.Value);
            FDMGerLicitacao.TProcessoDupNUMDOCPED.Value := codigo;
            FDMGerLicitacao.TProcessoDupNUMDUPPED.Value := inttostr(codigo)+'-'+inttostr(FDMGerLicitacao.TProcessoDupPARCELA.Value);
            FDMGerLicitacao.TProcessoDup.Post;
            FDMGerLicitacao.TProcessoDup.next;
          end;

          i := 1;
          FDMGerLicitacao.TProcessoLicCODIGO.Value := codigo;
        end;

        FDMGerLicitacao.TProcessoLic.Post;
        FDMGerLicitacao.TProcessoLic.ApplyUpdates(0);
        FDMGerLicitacao.TProcessoLicCont.ApplyUpdates(0);
        FDMGerLicitacao.TProcessoLicIt.ApplyUpdates(0);
        FDMGerLicitacao.TProcessoDup.ApplyUpdates(0);
        FDMGerLicitacao.TProcessoLicArq.ApplyUpdates(0);

        pedido := FDMGerLicitacao.TProcessoLicCODIGO.Value;
        empresa := FDMGerLicitacao.TProcessoLicCODEMPFAT.Value;

        ativa;

        marcaCamposChave(false);

        cxPageControl2.ActivePageIndex := 0;

        BtnAddResultado.Enabled := false;
        BtnAddItem.Enabled := false;
        BtnRemResultado.Enabled := false;
        BtnRemItem.Enabled := false;
        PDados.Enabled := false;
        DBEdit3.enabled := false;
        BtAddProcLicDoc.Enabled := false;
        BtRevProcLicDoc.Enabled := false;
        BtVisuProcLicDoc.Enabled := false;
        btncliente.Enabled := false;
        BtConCli.Enabled := false;
        BtGerar.Enabled := false;
        panel5.Enabled := false;
        panel6.Enabled := false;
        BtConCli.Enabled := false;
        BtEndereco.Enabled := false;
        BtnContCli.Enabled := false;
        BtnModalidade.Enabled := false;
        BtnEntidade.Enabled := false;
        BtnFonte.Enabled := false;
        BtnContato.Enabled := false;
        BtnEmpFat.Enabled := false;
        BtnRemHistorico.Enabled := false;
        BtnAddHistorico.Enabled := false;
        panel8.Enabled := false;
        panel9.Enabled := false;
        panel12.Enabled := false;

        BtInsere.SetFocus;
      end;
end;

procedure TFProcesso.BtEditaClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCODIGO.Value > 0 then
    begin
      FDMGerLicitacao.TProcessoLic.edit;

      FDMGerLicitacao.TProcessoLicArq.Refresh;
      PDados.Enabled := true;
      desativa;
      marcaCamposChave(true);
      DBEdit3.enabled := true;
      BtAddProcLicDoc.Enabled := true;
      BtRevProcLicDoc.Enabled := true;
      BtVisuProcLicDoc.Enabled := true;
      btncliente.Enabled := true;
      BtConCli.Enabled := true;
      BtGerar.Enabled := true;
      panel5.Enabled := true;
      panel6.Enabled := true;
      BtConCli.Enabled := true;
      BtEndereco.Enabled := true;
      BtnContCli.Enabled := true;
      BtnModalidade.Enabled := true;
      BtnEntidade.Enabled := true;
      BtnFonte.Enabled := true;
      BtnContato.Enabled := true;
      BtnEmpFat.Enabled := true;
      BtnAddResultado.Enabled := true;
      BtnAddItem.Enabled := true;
      BtnRemResultado.Enabled := true;
      BtnRemItem.Enabled := true;
      BtnRemHistorico.Enabled := true;
      BtnAddHistorico.Enabled := true;
      panel8.Enabled := true;
      panel9.Enabled := true;
      panel12.Enabled := true;

      DBEdit3.SetFocus;
    end;
end;

procedure TFProcesso.BtEnderecoClick(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODCLI.Value > 0 then
  begin
    try
      Application.CreateForm(TFFilialEntidade, FFilialEntidade);

      FDMGerLicitacao.QConFilial.Close;
      FDMGerLicitacao.QConFilial.Params.ParamByName('CODCLI').AsInteger := FDMGerLicitacao.TProcessoLicCODCLI.Value;
      FDMGerLicitacao.QConFilial.Open;

      if FFilialEntidade.ShowModal = mrok then
      begin
        fdmcliente.QCliFilialPesq.Refresh;
        FDMGerLicitacao.TProcessoLicCODENDENTREGA.Value := FDMGerLicitacao.QConFilialITEM.Value;
      end;
      if not(BtGerar.Focused) and not (BtConfirma.Focused) and not (BtCancela.Focused) then
        dbedit23.SetFocus;
    finally
      FFilialEntidade.Free;
      FFilialEntidade := nil;
    end;
  end
  else
  begin
    showmessage('É necessário selecionar uma entidade!');
    cxDBLookupComboBox3.SetFocus;
  end;
end;

procedure TFProcesso.BtExcluirClick(Sender: TObject);
var
  sql : STring;
begin
    if FDMGerLicitacao.TProcessoLicCODIGO.Value > 0 then
    begin
      if messagedlg('Você tem certeza que deseja excluir o processo número '+inttostr(FDMGerLicitacao.TProcessoLiccodigo.Value)+'?',mtConfirmation,[mbYes,mbNo],0) = mryes then
      begin
        sql := '';
        sql := sql + ' delete from processolicarq where PROCESSO = '+inttostr(FDMGerLicitacao.TProcessoLiccodigo.Value) + ' and CODEMPFAT = '+inttostr(FDMGerLicitacao.TProcessoLicCODEMPFAT.Value)+';';
        sql := sql + ' delete from processoliccont where PROCESSO = '+inttostr(FDMGerLicitacao.TProcessoLiccodigo.Value) + ' and CODEMPFAT = '+inttostr(FDMGerLicitacao.TProcessoLicCODEMPFAT.Value)+';';
        sql := sql + ' delete from processolicit where PROCESSO = '+inttostr(FDMGerLicitacao.TProcessoLiccodigo.Value) + ' and CODEMPFAT = '+inttostr(FDMGerLicitacao.TProcessoLicCODEMPFAT.Value)+';';
        sql := sql + ' delete from duplicvenda where NUMDOC = '+inttostr(FDMGerLicitacao.TProcessoLiccodigo.Value) + ' and CODEMPFAT = '+inttostr(FDMGerLicitacao.TProcessoLicCODEMPFAT.Value)+' and TIPODUP = '+QuotedStr('G')+';';
        execsql(sql);
        FDMGerLicitacao.TProcessoLic.Delete;
        FDMGerLicitacao.TProcessoLic.ApplyUpdates(0);

        showmessage('Exclusão realizada com sucesso!');
      end;
    end;
end;

procedure TFProcesso.BtInsereClick(Sender: TObject);
var
  sql : String;
begin
    sql := '';
    sql := sql + 'delete from processoliccont where PROCESSO = 0 and CODUSU = '+inttostr(usulogado)+';';
    sql := sql + 'delete from processolicarq where PROCESSO = 0 and CODUSU = '+inttostr(usulogado)+';';
//    sql := sql + 'delete from duplicvenda where NUMDOC = '+QuotedStr('0')+' and CODUSU = '+inttostr(usulogado)+' and CODCLI = 0'+';';
    ExecSQL(sql);

    FDMGerLicitacao.TProcessoLic.Append;
    FDMGerLicitacao.TProcessoLicCODIGO.Value := 0;
    FDMGerLicitacao.TProcessoLicDATA.Value := Date;
    //FDMGerLicitacao.TProcessoLicDATAALT.Value := Date;
    FDMGerLicitacao.TProcessoLicSITUACAO.Value := 'EMITIDO';
    FDMGerLicitacao.TProcessoLicSITENVIO.Value := 'PENDENTE';
    FDMGerLicitacao.TProcessoLicCODUSU.Value := usulogado;
    FDMGerLicitacao.TProcessoLicINDICACAO.Value := 'NAO';
    FDMGerLicitacao.TProcessoLicREPUBLICADO.Value := 'NAO';
    FDMGerLicitacao.TProcessoLicRECEBDEPOIS.Value := 'NAO';
    FDMGerLicitacao.TProcessoLicPAGO.Value := 'NAO';
    FDMGerLicitacao.TProcessoLicSITUACAO.Value := 'LANCADO';
    FDMGerLicitacao.TProcessoLicPRIORIDADE.Value := 'NORMAL';

    FDMGerLicitacao.TProcessoLicHCADORGAOPUBLICO.Value := 'N';
    FDMGerLicitacao.TProcessoLicHIDENTIDADESOCIO.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCNPJ.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCICAD.Value := 'N';
    FDMGerLicitacao.TProcessoLicHSICAF.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCONTSOCIAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCERTFEDERAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCERTESTADUAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCERTMUNICIPAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHINSS.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCADORGAOPUBLICO.Value := 'N';
    FDMGerLicitacao.TProcessoLicHFGTS.Value := 'N';
    FDMGerLicitacao.TProcessoLicHBALANCOPATRIMONIAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHFALENCIA.Value := 'N';
    FDMGerLicitacao.TProcessoLicHINDICESOL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCERTJUNTACOMERC.Value := 'N';
    FDMGerLicitacao.TProcessoLicHATESTADOCAPACIDADE.Value := 'N';
    FDMGerLicitacao.TProcessoLicHLICENCASANITARIA.Value := 'N';
    FDMGerLicitacao.TProcessoLicHINCEST.Value := 'N';
    FDMGerLicitacao.TProcessoLicHINSCMUNIC.Value := 'N';
    FDMGerLicitacao.TProcessoLicHALVARA.Value := 'N';
    FDMGerLicitacao.TProcessoLicHAUTFUNCNORMAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHAUTFUNCESPECIAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicHCRF.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECINEXISTENCIA.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECMENOR.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECMICRO.Value := 'N';
    FDMGerLicitacao.TProcessoLicHATESCAPACIDADE.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECITEM1.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECITEM2.Value := 'N';
    FDMGerLicitacao.TProcessoLicHDECITEM3.Value := 'N';

    FDMGerLicitacao.TProcessoLicMPRECOMAXPITEM.Value := 'N';
    FDMGerLicitacao.TProcessoLicMVLRPOREXT.Value := 'N';
    FDMGerLicitacao.TProcessoLicMCODPROD.Value := 'N';
    FDMGerLicitacao.TProcessoLicMIMPCLIENTE.Value := 'N';
    FDMGerLicitacao.TProcessoLicMREAJUSTE.Value := 'N';
    FDMGerLicitacao.TProcessoLicMENVLAUDOS.Value := 'N';
    FDMGerLicitacao.TProcessoLicMVENDAPROIBIDA.Value := 'N';
    FDMGerLicitacao.TProcessoLicMINSS.Value := 'N';
    FDMGerLicitacao.TProcessoLicMFGTS.Value := 'N';
    FDMGerLicitacao.TProcessoLicMPNPF.Value := 'N';

    FDMGerLicitacao.TProcessoLicPROCURSIGNATARIO.Value := 'N';
    FDMGerLicitacao.TProcessoLicPROCURREPRESENTANTE.Value := 'N';
    FDMGerLicitacao.TProcessoLicPROCURRESPONSA.Value := 'N';
    FDMGerLicitacao.TProcessoLicCONTRATOSOCIAL.Value := 'N';
    FDMGerLicitacao.TProcessoLicDECLARACAOPREREQ.Value := 'N';
    FDMGerLicitacao.TProcessoLicDECLARACAOITEM.Value := 'N';

    FDMGerLicitacao.TProcessoLicCODEMPFAT.Value := FDMUsuario.QVerUsuarioCODEMPFAT.Value;
    FDMGerLicitacao.TProcessoLicNOMEEMPFAT.Value := FDMUsuario.QVerUsuarioNOMEEMPFAT.Value;
    fdm.QEmpresaPesq.Locate('CODIGO',FDMUsuario.QVerUsuarioCODEMPFAT.Value,[]);

    FDMGerLicitacao.TProcessoLicArq.Refresh;
    PDados.Enabled := true;
    desativa;
    marcaCamposChave(true);
    DBEdit3.enabled := true;
    BtAddProcLicDoc.Enabled := true;
    BtRevProcLicDoc.Enabled := true;
    BtVisuProcLicDoc.Enabled := true;
    btncliente.Enabled := true;
    BtConCli.Enabled := true;
    BtGerar.Enabled := true;
    panel5.Enabled := true;
    panel6.Enabled := true;
    BtConCli.Enabled := true;
    BtEndereco.Enabled := true;
    BtnContCli.Enabled := true;
    BtnModalidade.Enabled := true;
    BtnEntidade.Enabled := true;
    BtnFonte.Enabled := true;
    BtnContato.Enabled := true;
    BtnEmpFat.Enabled := true;
    BtnAddResultado.Enabled := true;
    BtnAddItem.Enabled := true;
    BtnRemResultado.Enabled := true;
    BtnRemItem.Enabled := true;
    BtnRemHistorico.Enabled := true;
    BtnAddHistorico.Enabled := true;

    panel8.Enabled := true;
    panel9.Enabled := true;
    panel12.Enabled := true;

    ultarq := 0;
    ultcont := 0;

    DBEdit3.SetFocus;
end;

procedure TFProcesso.BtnAddItemClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFItemProcesso,FItemProcesso);
      FItemProcesso.Top := FProcesso.Top + 30;
      FItemProcesso.Left := round(((FProcesso.Width - FItemProcesso.Width) / 2) + FProcesso.Left);
      if FDMGerLicitacao.TProcessoLicIt.RecordCount > 0 then
      begin
        FDMGerLicitacao.TProcessoLicIt.Last;
        codultprod := FDMGerLicitacao.TProcessoLicItITEM.Value;
      end;
      FDMGerLicitacao.TProcessoLicIt.Append;
      FItemProcesso.ShowModal;
    finally
      FItemProcesso.Free;

    end;
end;

procedure TFProcesso.BtnAddResultadoClick(Sender: TObject);
var
  sql : string;
  totdup :real;
  ultdup : integer;
begin
    sql := '';

    if FDMGerLicitacao.TProcessoDup.RecordCount > 0 then
    begin
      FDMGerLicitacao.TProcessoDup.Last;
      ultdup := FDMGerLicitacao.TProcessoDupPARCELA.Value + 1;
    end
    else
    begin
      ultdup := 1;
    end;

    if FDMGerLicitacao.TProcessoLicVLRCOMISSAO.Value > 0 then
    begin
      if FDMGerLicitacao.TProcessoLicCONDPAG.Value > 0 then
      begin
        fdm.TCondPag.close;
        fdm.TCondPag.params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.TProcessoLicCONDPAG.Value;
        fdm.TCondPag.open;
        fdm.TParcelas.First;
        totdup := 0;

        if not (fdm.TParcelas.RecordCount > 0)then
        begin
          showmessage('Condição de pagamento sem parcelas cadastradas!');
          abort;
        end;

        try
            application.CreateForm(TFProcessoDup,FProcessoDup);

            FDMGerLicitacao.TProcessoDup.Append;
            FDMGerLicitacao.TProcessoDupPARCELA.Value := ultdup;
            FDMGerLicitacao.TProcessoDupNUMDUP.Value := FDMGerLicitacao.TProcessoLicCODIGO.AsString + '-'+inttostr(ultdup);
            FDMGerLicitacao.TProcessoDupNUMDOC.Value := FDMGerLicitacao.TProcessoLicCODIGO.value;

            FDMGerLicitacao.TProcessoDupDATA.Value := FDMGerLicitacao.TProcessoLicDATA.Value;
            FDMGerLicitacao.TProcessoDupDATAALT.Value := FDMGerLicitacao.TProcessoLicDATAALT.Value;

            FDMGerLicitacao.TProcessoDupCODCLI.Value :=  FDMGerLicitacao.TProcessoLicCODCLI.Value;
            FDMGerLicitacao.TProcessoDupCODEMPFAT.Value :=  FDMGerLicitacao.TProcessoLicCODEMPFAT.Value;
            FDMGerLicitacao.TProcessoDupNOMEEMPFAT.Value :=  FDMGerLicitacao.TProcessoLicNOMEEMPFAT.Value;
            FDMGerLicitacao.TProcessoDupTIPODUP.Value :=  'G';
            FDMGerLicitacao.TProcessoDupRENEGOCIADA.Value :=  'N';
            FDMGerLicitacao.TProcessoDupAPROVBAIXA.Value := 'N';
            FDMGerLicitacao.TProcessoDupCODUSU.Value := FDMGerLicitacao.TProcessoLicCODUSU.Value;
            FDMGerLicitacao.TProcessoDupCODUSUALT.Value := FDMGerLicitacao.TProcessoLicCODUSUALT.Value;
            FDMGerLicitacao.TProcessoDupNOMECLI.Value := FDMGerLicitacao.TProcessoLicNOMECLI.Value;
            FDMGerLicitacao.TProcessoDupCODLOCAL.Value := FDMGerLicitacao.TProcessoLicCODLOCAL.Value;
            FDMGerLicitacao.TProcessoDupNOMELOCAL.Value := FDMGerLicitacao.TProcessoLicNOMELOCAL.Value;
            FDMGerLicitacao.TProcessoDupNOMECOND.Value := FDMGerLicitacao.TProcessoLicNOMECONDPAG.Value;
            FDMGerLicitacao.TProcessoDupCONDPAG.Value := FDMGerLicitacao.TProcessoLicCONDPAG.Value;

            FDMGerLicitacao.TProcessoDupMULTA.Value := fdm.TParcelasMULTA.Value;
            FDMGerLicitacao.TProcessoDupPERCJURO.Value := fdm.TParcelasJUROS.Value;
            FDMGerLicitacao.TProcessoDupPERCDESC.Value := fdm.TParcelasDESCONTO.Value;

            FDMGerLicitacao.TProcessoDupTOTVENDA.Value := FDMGerLicitacao.TProcessoLicVLRCOMISSAO.Value;
            FDMGerLicitacao.TProcessoDupTOTPARCELA.Value := fdm.TParcelas.RecordCount;

            FDMGerLicitacao.TProcessoDupNUMDUPPED.Value := FDMGerLicitacao.TProcessoLicCODIGO.AsString + '-'+inttostr(ultdup);
            FDMGerLicitacao.TProcessoDupNUMDOCPED.Value := FDMGerLicitacao.TProcessoLicCODIGO.value;
            FDMGerLicitacao.TProcessoDupTIPODUPPED.Value := FDMGerLicitacao.TProcessoDupTIPODUP.Value;
            FDMGerLicitacao.TProcessoDupOBSERVACAO.Value := FDMGerLicitacao.TProcessoLicNOMEENTIDADE.Value;
            FDMGerLicitacao.TProcessoDupSITUACAO.Value := 'A';
            FDMGerLicitacao.TProcessoDupTIPO.value := 'A';

            if FProcessoDup.ShowModal = mrok then
            begin
              FDMGerLicitacao.TProcessoDup.Post;
            end
            else
            begin
              FDMGerLicitacao.TProcessoDup.Cancel;
            end;
        finally
          FProcessoDup.Free;
          FProcessoDup := nil;
        end;
      end
      else
      begin
        showmessage('Favor informar uma condição de pagamento');
        EdCondPag.SetFocus;
      end;
    end
    else
    begin
        showmessage('Processo sem valor!');
    end;
end;

procedure TFProcesso.BtnClienteClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFConCli, FConCli);
      FConCli.codcli := FDMGerLicitacao.TProcessoLicCODCLI.Value;
      FConCli.showmodal;
    finally
      FConCli.free;
      FConCli := nil;
    end;
end;

procedure TFProcesso.BtnContatoClick(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODENTIDADE.Value > 0 then
  begin
    try
      Application.CreateForm(TFContatoEntidade, FContatoEntidade);

      FDMGerLicitacao.QConContatos.Close;
      FDMGerLicitacao.QConContatos.Params.ParamByName('CODCLI').AsInteger := FDMGerLicitacao.TProcessoLicCODENTIDADE.Value;
      FDMGerLicitacao.QConContatos.Open;

      if FContatoEntidade.ShowModal = mrok then
      begin
        FdmCliente.QCliContPesq.Refresh;
        FDMGerLicitacao.TProcessoLicCODCONTATOENT.Value := FDMGerLicitacao.QConContatosITEM.Value;
        FDMGerLicitacao.TProcessoLicNOMECONTATOENT.Value := FDMGerLicitacao.QConContatosNOME.Value;
      end;
      dbcombobox8.SetFocus;
    finally
      FContatoEntidade.Free;
      FContatoEntidade := nil;
    end;
  end
  else
  begin
    showmessage('Necessário ter uma entidade selecionada!');
    cxDBLookupComboBox3.SetFocus;
  end;
end;

procedure TFProcesso.BtnContCliClick(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODCLI.Value > 0 then
  begin
    try
      Application.CreateForm(TFContato, FContato);

      FdmCliente.QConContatos.Close;
      FdmCliente.QConContatos.Params.ParamByName('CODCLI').AsInteger := FDMGerLicitacao.TProcessoLicCODCLI.Value;
      FdmCliente.QConContatos.Open;

      if FContato.ShowModal = mrok then
      begin
        FdmCliente.QCliContPesq.Refresh;
        FDMGerLicitacao.TProcessoLicCODCONTATO.Value := FdmCliente.QConContatosITEM.Value;
        FDMGerLicitacao.TProcessoLicNOMECONTATO.Value := FdmCliente.QConContatosNOME.Value;
      end;
      EdVendedor.SetFocus;
    finally
      FContato.Free;
      FContato := nil;
    end;
  end
  else
  begin
    showmessage('Necessário ter um cliente selecionado!');
    EdCodigoCliente.SetFocus;
  end;
end;

procedure TFProcesso.BtRevProcLicDocClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicArq.RecordCount > 0 then
      FDMGerLicitacao.TProcessoLicArq.Delete;
end;

procedure TFProcesso.BtVisuProcLicDocClick(Sender: TObject);
begin
  if (FDMGerLicitacao.TProcessoLicArqCAMINHO.Value <> '') then
    ShellExecuteA(0, nil, PansiChar(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value), nil, nil, SW_SHOWNORMAL);
end;

procedure TFProcesso.BtnModalidadeClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFModalidade,FModalidade);
      FModalidade.PConsulta.Visible := true;
      if FModalidade.ShowModal = mrok then
      begin
        FDMGerLicitacao.TProcessoLicCODMODALIDADE.Value := FDMGerLicitacao.TModalidadeCODIGO.Value;
        FDMGerLicitacao.TProcessoLicNOMEMODALIDADE.Value := FDMGerLicitacao.TModalidadeNOME.Value;
      end;
    finally
      FModalidade.Free;
      FModalidade := nil;
    end;
end;

procedure TFProcesso.BtnRemHistoricoClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCont.RecordCount > 0 then
      FDMGerLicitacao.TProcessoLicCont.Delete;
end;

procedure TFProcesso.BtnRemItemClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicIt.RecordCount > 0 then
      FDMGerLicitacao.TProcessoLicIt.Delete;
end;

procedure TFProcesso.BtnRemResultadoClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoDup.RecordCount > 0 then
      FDMGerLicitacao.TProcessoDup.Delete;
end;

procedure TFProcesso.BtnEmailClick(Sender: TObject);
var
  caminho : String;
begin
    caminho := '';
    if not (FDMGerLicitacao.TProcessoLic.RecordCount > 0) then
    begin
      showmessage('É necessário selecionar um processo!');
      abort;
    end;
    fdm.TEmpresa.Open;
    fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.TProcessoLicCODEMPFAT.Value,[]);

    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.TProcessoLicCODCLI.Value;
    fdmcliente.TCliente.Open;

    try
      Application.CreateForm(TFEmail,FEmail);

      FEMail.destino := fdmcliente.TClienteEMAIL.Value;
      FEMail.processo := true;
      FDMGerLicitacao.TProcessoLicArq.First;
      while not FDMGerLicitacao.TProcessoLicArq.Eof do
      begin
        if (FileExists(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)) then
        begin
          if (FileExists(ExtractFilePath(Application.Exename)+'editais\'+copy(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,LastDelimiter('\', Application.ExeName),length(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)))) then
          begin
            caminho := ExtractFilePath(Application.Exename)+'editais\'+copy(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,LastDelimiter('\', Application.ExeName),length(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value));
          end
          else
          begin
            //getfile(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,ExtractFilePath(Application.Exename)+'editais\'+copy(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,LastDelimiter('\', Application.ExeName),length(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)));
            //getfile(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,'editais');
            //copiaarquivo(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,ExtractFilePath(Application.Exename)+'editais\'+copy(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,LastDelimiter('\', Application.ExeName),length(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)),'editais');
            //showmessage(ExtractFilePath(Application.Exename)+'editais\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value));
            CopyFile(PChar(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value), PChar(ExtractFilePath(Application.Exename)+'editais\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)), False);
            //caminho := ExtractFilePath(Application.Exename)+'editais\'+copy(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value,LastDelimiter('\', Application.ExeName),length(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value));
            caminho := ExtractFilePath(Application.Exename)+'editais\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value);
          end;

          if (ipservidor <> IpAddress) then
          begin
            getfile((ExtractFilePath(Application.Exename)+'editais\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)),'email');
          end
          else
          begin
            if not (fileexists((ExtractFilePath(Application.Exename)+'email\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)))) then
              CopyFile(PChar(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value), PChar(ExtractFilePath(Application.Exename)+'email\'+Extractfilename(FDMGerLicitacao.TProcessoLicArqCAMINHO.Value)), False);
          end;

          if FEMail.arquivo <> '' then
          begin
            FEMail.arquivo := FEMail.arquivo + '; ' +caminho;
          end
          else
          begin
            FEMail.arquivo := caminho;
          end;
        end;
        FDMGerLicitacao.TProcessoLicArq.Next;
      end;
      FDMGerLicitacao.TProcessoLicArq.First;

      FEmail.ShowModal;
    finally
      FEmail.Free;
      FEmail := nil;
      FDMGerLicitacao.TProcessoLic.Edit;
      FDMGerLicitacao.TProcessoLicSITENVIO.Value := 'ENVIADO';
      FDMGerLicitacao.TProcessoLicdtenvio.value := date;
      FDMGerLicitacao.TProcessoLic.Post;
      FDMGerLicitacao.TProcessoLic.ApplyUpdates(0);
    end;
end;

procedure TFProcesso.BtnEmpFatClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFConEmpresa,FConEmpresa);
    if FConEmpresa.showmodal = mrok then
    begin
        FDMGerLicitacao.TProcessoLicCODEMPFAT.Value := fdm.TEmpresaCODIGO.Value;
        FDMGerLicitacao.TProcessoLicNOMEEMPFAT.Value := fdm.TEmpresaNOMEFANTA.Value;
    end;
  finally
    FConEmpresa.free;

  end;
end;

procedure TFProcesso.BtnEntidadeClick(Sender: TObject);
begin
     try
         Application.CreateForm(TFEntidade,FEntidade);
         FEntidade.PConsulta.Visible := true;

         if FEntidade.ShowModal = mrok then
         begin
            FDMGerLicitacao.TProcessoLicCODENTIDADE.Value := FDMGerLicitacao.TEntidadeCODIGO.Value;
            FDMGerLicitacao.TProcessoLicNOMEENTIDADE.Value := FDMGerLicitacao.TEntidadeNOME.Value;

            FDMGerLicitacao.QEntidadeContPesq.Filtered := false;
            FDMGerLicitacao.QEntidadeContPesq.filter := 'CODCLI ='+inttostr(FDMGerLicitacao.TEntidadeCODIGO.Value);
            FDMGerLicitacao.QEntidadeContPesq.Filtered := true;

            FDMGerLicitacao.QEntidadefilialPesq.Filtered := false;
            FDMGerLicitacao.QEntidadefilialPesq.filter := 'CODCLI ='+inttostr(FDMGerLicitacao.TEntidadeCODIGO.Value);
            FDMGerLicitacao.QEntidadefilialPesq.Filtered := true;
         end
         else
         begin
            if not(FDMGerLicitacao.TProcessoLicCODENTIDADE.Value > 0) then
            begin
                ShowMessage('Necessário selecionar uma Entidade para finalizar o processo.');
            end;
         end;
         cxDBLookupComboBox5.SetFocus;
     finally
         FEntidade.free;
         FEntidade := nil;
     end;
end;

procedure TFProcesso.BtnFonteClick(Sender: TObject);
begin
    try
      Application.CreateForm(TFFonteLic,FFonteLic);
      FFonteLic.PConsulta.Visible := true;
      if FFonteLic.ShowModal = mrok then
      begin
        FDMGerLicitacao.TProcessoLicCODTIPOFONTE.Value := FDMGerLicitacao.TFonteLicCODIGO.Value;
        FDMGerLicitacao.TProcessoLicNOMETIPOFONTE.Value := FDMGerLicitacao.TFonteLicNOME.Value;
      end;
    finally
      FFonteLic.Free;
      FFonteLic := nil;
    end;
end;

procedure TFProcesso.cxButton3Click(Sender: TObject);
begin
    close;
end;

procedure TFProcesso.cxButton5Click(Sender: TObject);
begin
    close;
end;

procedure TFProcesso.cxButton8Click(Sender: TObject);
var
  filtrando : boolean;
begin
    sql := '';
    filtrando := false;

    FDMGerLicitacao.QconProcessoLic.Close;

    sql := sql + ' select * from processolic';

    if EdCodCli.Text <> '' then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        filtrando := true;
      end;
      sql := sql + ' CODCLI = '+EdCodCli.Text;
    end;

    if DtInicial.Text <> '' then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        filtrando := true;
      end;
      sql := sql + ' DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
    end;

    if DtFinal.Text <> '' then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        filtrando := true;
      end;
      sql := sql + ' DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
    end;

    if (CbSituacao.Text <> '') and (CbSituacao.Text <> 'TODOS') then
    begin
      if filtrando then
      begin
        sql := sql + ' and ';
      end
      else
      begin
        sql := sql + ' where ';
        filtrando := true;
      end;
      sql := sql + ' RESULTADOGERAL = '+QuotedStr(CbSituacao.Text);
    end;

    FDMGerLicitacao.QconProcessoLic.Open;
end;

procedure TFProcesso.cxButton9Click(Sender: TObject);
begin
    try
      application.CreateForm(TFCliente,FCliente);
      FCliente.PConsulta.Visible := true;
      if FCliente.ShowModal = mrok then
      begin
        EdCodCli.Text := inttostr(fdmcliente.TClienteCODIGO.Value);
        EdNomeCli.Text := fdmcliente.TClienteNOME.Value;
      end;
    finally
      FCliente.Free;
      FCliente := nil;
    end;
end;

procedure TFProcesso.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODEMPFAT.Value > 0 then
  begin
    Fdm.Qempresapesq.locate('CODIGO',FDMGerLicitacao.TProcessoLicCODEMPFAT.Value,[]);
    FDMGerLicitacao.TProcessoLicNOMEEMPFAT.Value := Fdm.QempresapesqNOMEFANTA.Value;
  end;
end;

procedure TFProcesso.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODCONTATO.Value > 0 then
  begin
    FdmCliente.QCliContPesq.locate('ITEM',FDMGerLicitacao.TProcessoLicCODCONTATO.Value,[]);
    FDMGerLicitacao.TProcessoLicNOMECONTATO.Value := FdmCliente.QCliContPesqNOME.Value;
  end;
end;

procedure TFProcesso.cxDBLookupComboBox3Exit(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCODENTIDADE.value > 0 then
    begin
      FDMGerLicitacao.QEntidadePesq.Locate('CODIGO',FDMGerLicitacao.TProcessoLicCODENTIDADE.value,[]);
      FDMGerLicitacao.TProcessoLicNOMEENTIDADE.Value := FDMGerLicitacao.QEntidadePesqNOME.Value;
    end;
end;

procedure TFProcesso.cxDBLookupComboBox4Exit(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCODTIPOFONTE.value > 0 then
    begin
      FDMGerLicitacao.QFonteLicPesq.Locate('CODIGO',FDMGerLicitacao.TProcessoLicCODTIPOFONTE.value,[]);
      FDMGerLicitacao.TProcessoLicNOMETIPOFONTE.Value := FDMGerLicitacao.QFonteLicPesqNOME.Value;
    end;
end;

procedure TFProcesso.cxDBLookupComboBox5Exit(Sender: TObject);
begin
  if FDMGerLicitacao.TProcessoLicCODCONTATOENT.Value > 0 then
  begin
    FDMGerLicitacao.QEntidadeContPesq.locate('ITEM',FDMGerLicitacao.TProcessoLicCODCONTATOENT.Value,[]);
    FDMGerLicitacao.TProcessoLicNOMECONTATOENT.Value := FDMGerLicitacao.QEntidadePesqNOME.Value;
  end;
end;

procedure TFProcesso.cxDBLookupComboBox7Exit(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCODENDENTREGA.value > 0 then
    begin
      FDMGerLicitacao.QEntidadeFilialPesq.Locate('CODIGO',FDMGerLicitacao.TProcessoLiccodmodalidade.value,[]);
      FDMGerLicitacao.TProcessoLicNOMEMODALIDADE.Value := FDMGerLicitacao.QEntidadeFilialPesqNOME.Value;
    end;
end;

procedure TFProcesso.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    FDMGerLicitacao.TProcessoLic.Close;
    FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConProcessoLicCODIGO.Value;
    FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODEMPFAT').AsInteger := FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value;
    FDMGerLicitacao.TProcessoLic.Open;
end;

procedure TFProcesso.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    cxPageControl1.ActivePageIndex := 0;
end;

procedure TFProcesso.DBEdit34Exit(Sender: TObject);
begin
    if (FDMGerLicitacao.TProcessoLicCOMISSAO.Value > 0) and (FDMGerLicitacao.TProcessoLicVALORRESULTADO.Value > 0) then
    begin
      FDMGerLicitacao.TProcessoLicVLRCOMISSAO.Value := FDMGerLicitacao.TProcessoLicVALORRESULTADO.Value * (FDMGerLicitacao.TProcessoLicCOMISSAO.Value/100);
    end;
end;

procedure TFProcesso.DBGrid2DblClick(Sender: TObject);
begin
    if (FDMGerLicitacao.TProcessoDup.RecordCount > 0) and (FDMGerLicitacao.TProcessoLic.State in [dsInsert,dsEdit])  then
      FDMGerLicitacao.TProcessoDup.Edit;
end;

procedure TFProcesso.DBGrid2Exit(Sender: TObject);
begin
    if (FDMGerLicitacao.TProcessoDup.State in [dsinsert,dsedit]) then
    begin
      FDMGerLicitacao.TProcessoDup.post;
    end;
end;

procedure TFProcesso.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (FDMGerLicitacao.TProcessoDup.RecordCount = FDMGerLicitacao.TProcessoDup.RecNo) and ((key = VK_DOWN) or (key = VK_TAB))then
  begin
    key := 0;
  end;
end;

procedure TFProcesso.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    BEGIN
      key:=#0;
      key:=#9;
    END;
end;

procedure TFProcesso.DBGrid3DblClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicArq.RecordCount > 0 then
    begin
      try
        Application.CreateForm(TFProcLicDoc,FProcLicDoc);
        FProcLicDoc.Top := FProcesso.Top + 30;
        FProcLicDoc.Left := round(((FProcesso.Width - FProcLicDoc.Width) / 2) + FProcesso.Left);
        ultarq := FDMGerLicitacao.TProcessoLicArqITEM.Value;

        FDMGerLicitacao.TProcessoLicArq.Edit;
        FProcLicDoc.ShowModal;
      finally
        FProcLicDoc.Free;

      end;
    end;
end;

procedure TFProcesso.DBGrid4DblClick(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicIt.RecordCount > 0 then
    begin
      try
        Application.CreateForm(TFItemProcesso,FItemProcesso);
        FItemProcesso.Top := FProcesso.Top + 30;
        FItemProcesso.Left := round(((FProcesso.Width - FItemProcesso.Width) / 2) + FProcesso.Left);
        codultprod := FDMGerLicitacao.TProcessoLicItITEM.Value;

        FDMGerLicitacao.TProcessoLicIt.Edit;
        FItemProcesso.ShowModal;
      finally
        FItemProcesso.Free;

      end;
    end;
end;

procedure TFProcesso.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
    key := UBiblio.maiuscula(key);
end;

procedure TFProcesso.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
   key := UBiblio.maiuscula(key);
end;

procedure TFProcesso.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
    key := UBiblio.maiuscula(key);
end;

procedure TFProcesso.DBMemo4KeyPress(Sender: TObject; var Key: Char);
begin
    key := UBiblio.maiuscula(key);
end;

procedure TFProcesso.EdCodCliExit(Sender: TObject);
begin
    if (EdCodCli.Text <> '') and (fdmcliente.QCliPesq.Locate('CODIGO',edcodcli.text,[])) then
      EdNomeCli.Text := fdmcliente.QCliPesqNOME.Value
    else
      EdNomeCli.Text := '';
end;

procedure TFProcesso.EdCodigoClienteExit(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLicCODCLI.value > 0 then
    begin
      FDMCliente.QCliPesq.Locate('CODIGO',FDMGerLicitacao.TProcessoLicCODCLI.value,[]);
      FDMGerLicitacao.TProcessoLicNOMECLI.Value := FDMCliente.QCliPesqNOME.Value;
    end;
end;

procedure TFProcesso.EdVendedorExit(Sender: TObject);
begin
    if FDMGerLicitacao.TProcessoLiccodmodalidade.value > 0 then
    begin
      FDMGerLicitacao.QModalidadePesq.Locate('CODIGO',FDMGerLicitacao.TProcessoLiccodmodalidade.value,[]);
      FDMGerLicitacao.TProcessoLicNOMEMODALIDADE.Value := FDMGerLicitacao.QModalidadePesqNOME.Value;
    end;

end;

procedure TFProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if not ChecaForm(FConprocesso) then
    begin
      fdm.TEmpresa.close;
      fdm.QEmpresaPesq.close;
      FDMGerLicitacao.QEntidadePesq.close;
      FDMGerLicitacao.TEntidade.close;
      fdmcliente.QCliPesq.close;
      fdmcliente.TCliente.close;
      FDMGerLicitacao.QConProcessoLic.Close;
      FDMGerLicitacao.QConProcessoLic2.Close;
    end;

    FDMGerLicitacao.TProcessoLic.Close;
    FDMGerLicitacao.TProcessoLicArq.Close;
    FDMGerLicitacao.TProcessoLicCont.Close;
    FDMGerLicitacao.TProcessoDup.Close;
    FDMGerLicitacao.TProcessoLicIt.Close;
    FDMGerLicitacao.QConFilial.Close;
    FDMGerLicitacao.QConContatos.Close;
    FDMGerLicitacao.QModalidadePesq.close;
    FDMGerLicitacao.TModalidade.close;
    FDMGerLicitacao.QFonteLicPesq.close;
    FDMGerLicitacao.TFonteLic.close;
    fdm.QConCondPag.close;
    fdm.TCondPag.close;
    fdm.TParcelas.close;
end;

procedure TFProcesso.FormCreate(Sender: TObject);
begin
    codemppesq := 0;
    codpesq := 0;
end;

procedure TFProcesso.FormShow(Sender: TObject);
begin
    cxPageControl1.ActivePageIndex := 0;
    cxPageControl2.ActivePageIndex := 0;

    DtInicial.Date := FirstDayOfMonth(date);
    dtfinal.Date := LastDayOfMonth(date);

    fdm.TEmpresa.Open;
    fdm.QEmpresaPesq.Open;
    fdm.QConCondPag.open;

    FDMGerLicitacao.TConfigLic.Close;
    FDMGerLicitacao.TConfigLic.Open;

    FDMGerLicitacao.QModalidadePesq.Open;
    FDMGerLicitacao.QFonteLicPesq.Open;
    FDMGerLicitacao.QEntidadePesq.Open;
    fdmcliente.QCliPesq.Open;

    if (codpesq > 0) then
    begin
      FDMGerLicitacao.TProcessoLic.Close;
      FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODIGO').AsInteger := codpesq;
      FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODEMPFAT').AsInteger := codemppesq;
      FDMGerLicitacao.TProcessoLic.Open;
    end
    else
    begin
      FDMGerLicitacao.TProcessoLic.Close;
      FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODIGO').AsInteger := 999999999;
      FDMGerLicitacao.TProcessoLic.Params.ParamByName('CODEMPFAT').AsInteger := 999999999;
      FDMGerLicitacao.TProcessoLic.Open;
    end;
end;

end.
