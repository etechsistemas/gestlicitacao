unit ConProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Menus,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtons, ExtCtrls, cxPC,QRPDFFilt, QRCtrls, QRPrntr,
  cxGroupBox, cxRadioGroup, DBCtrls, cxCheckBox;



type
  TFConProcesso = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    EdCodCli: TEdit;
    cxButton8: TcxButton;
    EdNomeCli: TEdit;
    cxButton9: TcxButton;
    DtInicial: TcxDateEdit;
    DtFinal: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn;
    cxGrid1DBTableView1NOMECLI: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEENTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1DATAABERTURA: TcxGridDBColumn;
    cxGrid1DBTableView1HORAABERTURA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOREDITAL: TcxGridDBColumn;
    cxGrid1DBTableView1RESULTADOGERAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMAX: TcxGridDBColumn;
    cxGrid1DBTableView1NOMEMODALIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMETIPOFONTE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORPROPOSTA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EdCodCli2: TEdit;
    cxButton3: TcxButton;
    EdNomeCli2: TEdit;
    cxButton4: TcxButton;
    DtInicial2: TcxDateEdit;
    DtFinal2: TcxDateEdit;
    CbSituacao2: TComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    EdTotComis2: TEdit;
    EdTotalRes2: TEdit;
    EdTotalEditais2: TEdit;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    BtnEmail: TcxButton;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxButton7: TcxButton;
    cxButton10: TcxButton;
    EdCodCli3: TEdit;
    cxButton11: TcxButton;
    EdNomeCli3: TEdit;
    cxButton12: TcxButton;
    DtInicial3: TcxDateEdit;
    DtFinal3: TcxDateEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel6: TPanel;
    Panel4: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdTotComis: TEdit;
    EdTotalRes: TEdit;
    EdTotalEditais: TEdit;
    cxButton13: TcxButton;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdTotComissao: TEdit;
    EdTotPago: TEdit;
    EdSaldo: TEdit;
    RgData1: TcxRadioGroup;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2NOMEENTIDADE: TcxGridDBColumn;
    cxGridDBTableView2NOMECLI: TcxGridDBColumn;
    cxGridDBTableView2DATAABERTURA: TcxGridDBColumn;
    cxGridDBTableView2NUMERO: TcxGridDBColumn;
    cxGridDBTableView2VALORMAX: TcxGridDBColumn;
    cxGridDBTableView2NOMEMODALIDADE: TcxGridDBColumn;
    cxGridDBTableView2VALORPROPOSTA: TcxGridDBColumn;
    cxGridDBTableView2NOMEEMPFAT: TcxGridDBColumn;
    cxGridDBTableView2VALORRESULTADO: TcxGridDBColumn;
    cxGridDBTableView2COMISSAO: TcxGridDBColumn;
    cxGridDBTableView2VLRCOMISSAO: TcxGridDBColumn;
    cxGridDBTableView2VENCIMENTO: TcxGridDBColumn;
    cxGridDBTableView2SITDUP: TcxGridDBColumn;
    cxGridDBTableView2VLRPGTO: TcxGridDBColumn;
    cxGridDBTableView2VALOR: TcxGridDBColumn;
    CkAgrup: TcxCheckBox;
    ckQuitadas: TcxCheckBox;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    RgData3: TcxRadioGroup;
    cxButton14: TcxButton;
    Label12: TLabel;
    EdNumero3: TEdit;
    Label17: TLabel;
    EdNumero: TEdit;
    Label18: TLabel;
    EdNumero2: TEdit;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    Label19: TLabel;
    EdContratos: TEdit;
    Label20: TLabel;
    EdSaldoContratos: TEdit;
    EdTotalPagoContrato: TEdit;
    Label22: TLabel;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    Panel7: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    EdCodCli4: TEdit;
    cxButton23: TcxButton;
    EdNomeCli4: TEdit;
    cxButton24: TcxButton;
    DtInicial4: TcxDateEdit;
    DtFinal4: TcxDateEdit;
    cxButton26: TcxButton;
    cxButton27: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    RgData4: TcxRadioGroup;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    cxGridDBTableView2Column5: TcxGridDBColumn;
    Label36: TLabel;
    CbSituacao: TComboBox;
    cxGridDBTableView2Column6: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure BtnEmailClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodCli3Exit(Sender: TObject);
    procedure EdCodCli2Exit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxGridDBTableView2Column6PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sql, sql2 : String;
    numero : integer;
    totcomissao, totpago, saldo, totcontrato, totalpago, saldocontrato : double;
  end;

var
  FConProcesso: TFConProcesso;

implementation

uses Cliente, DMCliente, DMGerLicitacao, RelProcesso, DM, Email, RelProcesso2,
  relatorio, RelProcessoFinanc, metodosServ, Principal, Processo, UBiblio,
  RelProcessoVigencia;

{$R *.dfm}

procedure TFConProcesso.BtnEmailClick(Sender: TObject);
var
  qf : TQRPDFDocumentFilter;
begin
    FDMGerLicitacao.TConfigLic.Open;
    if EdCodCli.Text = '' then
    begin
      showmessage('É necessário selecionar um cliente.');
      EdCodCli.SetFocus;
      abort;
    end;

    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConProcessoLicCODCLI.Value;
    fdmcliente.TCliente.Open;


  try
      Application.CreateForm(TFEMail,FEMail);
      FEMail.processo := true;

      if FDMGerLicitacao.TConfigLicEMAILCC.Value <> '' then
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value+';'+FDMGerLicitacao.TConfigLicEMAILCC.Value;
      end
      else
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value;
      end;





      try
        Application.CreateForm(TFRelProcesso,FRelProcesso);
        fdm.TEmpresa.Open;
        fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value,[]);
        //FRelProcesso.QrLbNomeEmpFat.caption := fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaENDERECO.Value + ' ' + fdm.TEmpresaNUMERO.Value + ' ' + fdm.TEmpresaCOMPLEMENTO.Value + ' ' + fdm.TEmpresaBAIRRO.Value + ' ' + fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaUF.Value + ' ' + fdm.TEmpresaFONE1.Value + ' ' +fdm.TEmpresaSITE.Value;
        FRelProcesso.QrLbTotal.Caption := EdTotalEditais.Text;
        FRelProcesso.QrLbNumero.Caption := EdNumero.Text;
        if fdm.TempresaLOGO.Value <> '' then
        begin
          if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
          begin
            FRelProcesso.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
            FRelProcesso.QRImage1 := ProportionalHeight(FRelProcesso.QRImage1,68);
          end
          else
          begin
            showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
          end;
        end;
        FRelProcesso.QrLbNomecli.caption := EdNomeCli.text;
        FRelProcesso.QuickRep1.Prepare;
        qf := TQRPDFDocumentFilter.Create(Extractfilepath(Application.ExeName)+'pdf/relatorio.pdf') ;
        qf.CompressionOn := False;
        FRelProcesso.QuickRep1.ExportToFilter( qf );
        qf.Free;
      finally
        FRelProcesso.Free;
      end;

      FEMail.assunto := FDMGerLicitacao.TConfigLicMSGASSUNTORELATORIO.value;
      FEMail.texto := FDMGerLicitacao.TConfigLicMSGRELATORIO.value;

      if (FileExists(ExtractFilePath(Application.ExeName)+'pdf\relatorio.pdf')) then
        FEMail.arquivo := FEMail.arquivo + '; ' + Extractfilepath(Application.ExeName)+'pdf\relatorio.pdf';



        FEMail.BtOk.Click;
    finally
      FEMail.Free;
      showmessage('O relatório foi enviado automaticamente para o seguinte endereço: '+fdmcliente.TClienteEMAIL.Value)
    end;






end;

procedure TFConProcesso.cxButton10Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFRelProcessoFinanc,FRelProcessoFinanc);
        fdm.TEmpresa.Open;
        fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicfinancCODEMPFAT.Value,[]);
        if fdm.TempresaLOGO.Value <> '' then
        begin
          if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
          begin
            FRelProcessoFinanc.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
            FRelProcessoFinanc.QRImage1 := ProportionalHeight(FRelProcessoFinanc.QRImage1,68);
          end
          else
          begin
            showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
          end;
        end;
      FRelProcessoFinanc.QrLbComissao.caption := EdTotComissao.Text;
      FRelProcessoFinanc.QrLbPago.caption := EdTotPago.Text;
      FRelProcessoFinanc.QrLbSaldo.caption := EdSaldo.Text;
      FRelProcessoFinanc.QrLbNomecli.caption := EdNomeCli3.text;
      FRelProcessoFinanc.QrLbNumero.caption := EdNumero3.text;

      FRelProcessoFinanc.QuickRep1.Preview;
    finally
      FRelProcessoFinanc.Free;
    end;
end;

procedure TFConProcesso.cxButton11Click(Sender: TObject);
var
  filtrando : boolean;
begin
    sql := '';
    sql2 := '';
    filtrando := false;

    FDMGerLicitacao.QConProcessoLicFinanc.Close;
    FDMGerLicitacao.QSomaProcessoFinanc.Close;

    if ckagrup.Checked then
    begin
      cxGridDBTableView2Column1.Visible := true;
      cxGridDBTableView2VENCIMENTO.Visible := false;

      sql := sql + ' select processolic.*, dupl.VENCIMENTO, dupl.SITUACAO SITDUP, dupl.VLRPGTO, dupl.VALOR, dupl.VALORCONTRATOLIC';
      sql := sql + ' from processolic left join';
      sql := sql + ' (select  max(duplicvenda.SITUACAO) SITUACAO , sum(duplicvenda.VLRPGTO) VLRPGTO, sum(duplicvenda.VALORCONTRATOLIC) VALORCONTRATOLIC,';
      sql := sql + ' sum(duplicvenda.VALOR) VALOR, max(duplicvenda.VENCIMENTO) VENCIMENTO,';
      sql := sql + ' duplicvenda.NUMDOC, duplicvenda.CODEMPFAT, duplicvenda.TIPODUP';
      sql := sql + ' from duplicvenda group by duplicvenda.NUMDOC, duplicvenda.CODEMPFAT, duplicvenda.TIPODUP) dupl';
      sql := sql + ' on processolic.CODIGO = dupl.NUMDOC';
      sql := sql + ' and processolic.CODEMPFAT = dupl.CODEMPFAT';
      sql := sql + ' and dupl.TIPODUP = '+QuotedStr('G');

      if ckQuitadas.Checked then
      begin
        sql := sql + ' and dupl.SITUACAO = '+QuotedStr('Q');
      end;
    end
    else
    begin
      cxGridDBTableView2Column1.Visible := false;
      cxGridDBTableView2VENCIMENTO.Visible := true;

      sql := sql + ' select processolic.*, duplicvenda.VENCIMENTO, duplicvenda.SITUACAO SITDUP, duplicvenda.VLRPGTO, duplicvenda.VALOR, duplicvenda.VALORCONTRATOLIC';
      sql := sql + ' from processolic left join duplicvenda';
      sql := sql + ' on processolic.CODIGO = duplicvenda.NUMDOC';
      sql := sql + ' and processolic.CODEMPFAT = duplicvenda.CODEMPFAT';
      sql := sql + ' and duplicvenda.TIPODUP = '+QuotedStr('G');

      if ckQuitadas.Checked then
      begin
        sql := sql + ' and duplicvenda.SITUACAO = '+QuotedStr('Q');
      end;
    end;

    sql2 := sql2 + ' select sum(VALOREDITAL) VALOREDITAL, SUM(VALORRESULTADO) VALORRESULTADO, SUM(VLRCOMISSAO) VLRCOMISSAO, sum(VALORCONTRATOLIC) VALORCONTRATOLIC,';
    sql2 := sql2 + ' sum(duplicvenda.VLRPGTO) VLRPGTO, sum(duplicvenda.VALOR) VALOR, count(*) NUMERO';
    sql2 := sql2 + ' from processolic left join duplicvenda';
    sql2 := sql2 + ' on processolic.CODIGO = duplicvenda.NUMDOC';
    sql2 := sql2 + ' and processolic.CODEMPFAT = duplicvenda.CODEMPFAT';
    sql2 := sql2 + ' and duplicvenda.TIPODUP = '+QuotedStr('G');

    filtrando := false;

    sql := sql + ' where RESULTADOGERAL = '+QuotedStr('VENCEDOR');
    sql2 := sql2 + ' where RESULTADOGERAL = '+QuotedStr('VENCEDOR');

    filtrando := true;

    if EdCodCli3.Text <> '' then
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
      sql := sql + ' processolic.CODCLI = '+EdCodCli3.Text;
      sql2 := sql2 + ' processolic.CODCLI = '+EdCodCli3.Text;
    end;

 if DtInicial3.Text <> '' then
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
      if rgdata3.ItemIndex = 0 then
      begin
        sql := sql + ' processolic.DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
        sql2 := sql2 + ' processolic.DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
      end
      else if rgdata3.ItemIndex = 1 then
      begin
        sql := sql + ' processolic.DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
        sql2 := sql2 + ' processolic.DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
      end
      else
      begin
        sql := sql + ' processolic.DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
        sql2 := sql2 + ' processolic.DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial3.Date));
      end;
    end;


    if DtFinal3.Text <> '' then
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
      if rgdata3.ItemIndex = 0 then
      begin
        sql := sql + ' processolic.DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
        sql2 := sql2 + ' processolic.DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
      end
      else if rgdata3.ItemIndex = 1 then
      begin
        sql := sql + ' processolic.DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
        sql2 := sql2 + ' processolic.DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
      end
      else
      begin
        sql := sql + ' processolic.DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
        sql2 := sql2 + ' processolic.DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal3.Date));
      end;
    end;

    if (CbSituacao.Text <> '') and (CbSituacao.Text <> 'TODOS') then
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
      sql := sql + ' RESULTADOGERAL = '+QuotedStr(CbSituacao.Text);
      sql2 := sql2 + ' RESULTADOGERAL = '+QuotedStr(CbSituacao.Text);
    end;


    FDMGerLicitacao.QConProcessoLicFinanc.Open;
    FDMGerLicitacao.QSomaProcessoFinanc.Open;

    EdTotComissao.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancVLRCOMISSAO.value);
    EdTotPago.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancVALOR.value);
    EdSaldo.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancsaldo.value);

    EdContratos.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancVALORRESULTADO.value);
    EdTotalPagoContrato.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancVALORCONTRATOLIC.value);
    EdSaldoContratos.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoFinancsaldocontrato.value);

    EdNumero3.Text := FormatFloat('###,###,###,###,##0',FDMGerLicitacao.QSomaProcessoFinancNUMERO.value);


    numero := 0;
    totcomissao := 0;
    totpago := 0;
    saldo := 0;
    totcontrato := 0;
    totalpago := 0;
    saldocontrato := 0;
end;

procedure TFConProcesso.cxButton12Click(Sender: TObject);
begin
    try
      application.CreateForm(TFCliente,FCliente);
      FCliente.PConsulta.Visible := true;
      if FCliente.ShowModal = mrok then
      begin
        EdCodCli3.Text := inttostr(fdmcliente.TClienteCODIGO.Value);
        EdNomeCli3.Text := fdmcliente.TClienteNOME.Value;
      end;
    finally
      FCliente.Free;
    end;
end;

procedure TFConProcesso.cxButton13Click(Sender: TObject);
var
  qf : TQRPDFDocumentFilter;
begin
    FDMGerLicitacao.TConfigLic.Open;
    if EdCodCli3.Text = '' then
    begin
      showmessage('É necessário selecionar um cliente.');
      EdCodCli3.SetFocus;
      abort;
    end;

    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConProcessoLicfinancCODCLI.Value;
    fdmcliente.TCliente.Open;


  try
      Application.CreateForm(TFEMail,FEMail);
      FEMail.processo := true;

      if FDMGerLicitacao.TConfigLicEMAILCC.Value <> '' then
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value+';'+FDMGerLicitacao.TConfigLicEMAILCC.Value;
      end
      else
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value;
      end;





      try
        Application.CreateForm(TFRelProcessoFinanc,FRelProcessoFinanc);
        fdm.TEmpresa.Open;
        fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicfinancCODEMPFAT.Value,[]);
        FRelProcessoFinanc.QrLbComissao.caption := EdTotComissao.Text;
        FRelProcessoFinanc.QrLbPago.caption := EdTotPago.Text;
        FRelProcessoFinanc.QrLbSaldo.caption := EdSaldo.Text;
        FRelProcessoFinanc.QrLbNomecli.caption := EdNomeCli3.text;

        if fdm.TempresaLOGO.Value <> '' then
        begin
          if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
          begin
            FRelProcessoFinanc.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
            FRelProcessoFinanc.QRImage1 := ProportionalHeight(FRelProcesso.QRImage1,68);
          end
          else
          begin
            showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
          end;
        end;
        FRelProcessoFinanc.QrLbNomecli.caption := EdNomeCli.text;
        FRelProcessoFinanc.QuickRep1.Prepare;
        qf := TQRPDFDocumentFilter.Create(Extractfilepath(Application.ExeName)+'pdf/relatorio.pdf') ;
        qf.CompressionOn := False;
        FRelProcessoFinanc.QuickRep1.ExportToFilter( qf );
        qf.Free;
      finally
        FRelProcessoFinanc.Free;
      end;

      FEMail.assunto := FDMGerLicitacao.TConfigLicMSGASSUNTORELATORIO.value;
      FEMail.texto := FDMGerLicitacao.TConfigLicMSGRELATORIO.value;

      if (FileExists(ExtractFilePath(Application.ExeName)+'pdf\relatorio.pdf')) then
        FEMail.arquivo := FEMail.arquivo + '; ' + Extractfilepath(Application.ExeName)+'pdf\relatorio.pdf';



        FEMail.BtOk.Click;
    finally
      FEMail.Free;
      showmessage('O relatório foi enviado automaticamente para o seguinte endereço: '+fdmcliente.TClienteEMAIL.Value)
    end;
end;

procedure TFConProcesso.cxButton14Click(Sender: TObject);
var
  qf : TQRPDFDocumentFilter;
begin
    FDMGerLicitacao.TConfigLic.Open;
    if EdCodCli2.Text = '' then
    begin
      showmessage('É necessário selecionar um cliente.');
      EdCodCli2.SetFocus;
      abort;
    end;

    fdmcliente.TCliente.Close;
    fdmcliente.TCliente.Params.ParamByName('CODIGO').AsInteger := FDMGerLicitacao.QConProcessoLicfinancCODCLI.Value;
    fdmcliente.TCliente.Open;


  try
      Application.CreateForm(TFEMail,FEMail);
      FEMail.processo := true;

      if FDMGerLicitacao.TConfigLicEMAILCC.Value <> '' then
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value+';'+FDMGerLicitacao.TConfigLicEMAILCC.Value;
      end
      else
      begin
        FEMail.destino := fdmcliente.TClienteEMAIL.Value;
      end;





      try
        Application.CreateForm(TFRelProcesso2,FRelProcesso2);
        fdm.TEmpresa.Open;
        fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicfinancCODEMPFAT.Value,[]);
        FRelProcesso2.QrLbNomeEmpFat.caption := fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaENDERECO.Value + ' ' + fdm.TEmpresaNUMERO.Value + ' ' + fdm.TEmpresaCOMPLEMENTO.Value + ' ' + fdm.TEmpresaBAIRRO.Value + ' ' + fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaUF.Value + ' ' + fdm.TEmpresaFONE1.Value + ' ' +fdm.TEmpresaSITE.Value;


        if fdm.TempresaLOGO.Value <> '' then
        begin
          if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
          begin
            FRelProcesso2.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
            FRelProcesso2.QRImage1 := ProportionalHeight(FRelProcesso2.QRImage1,68);
          end
          else
          begin
            showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
          end;
        end;
        FRelProcesso2.QrLbNomecli.caption := EdNomeCli2.text;
        FRelProcesso2.QuickRep1.Prepare;
        qf := TQRPDFDocumentFilter.Create(Extractfilepath(Application.ExeName)+'pdf/relatorio.pdf') ;
        qf.CompressionOn := False;
        FRelProcesso2.QuickRep1.ExportToFilter( qf );
        qf.Free;
      finally
        FRelProcesso2.Free;
      end;

      FEMail.assunto := FDMGerLicitacao.TConfigLicMSGASSUNTORELATORIO.value;
      FEMail.texto := FDMGerLicitacao.TConfigLicMSGRELATORIO.value;

      if (FileExists(ExtractFilePath(Application.ExeName)+'pdf\relatorio.pdf')) then
        FEMail.arquivo := FEMail.arquivo + '; ' + Extractfilepath(Application.ExeName)+'pdf\relatorio.pdf';



        FEMail.BtOk.Click;
    finally
      FEMail.Free;
      showmessage('O relatório foi enviado automaticamente para o seguinte endereço: '+fdmcliente.TClienteEMAIL.Value)
    end;
end;

procedure TFConProcesso.cxButton15Click(Sender: TObject);
begin
    if (FDMGerLicitacao.QConProcessoLic.RecordCount > 0) then
    begin
      try
        application.CreateForm(TFProcesso,FProcesso);
        FProcesso.codemppesq := FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value;
        FProcesso.codpesq := FDMGerLicitacao.QConProcessoLicCODIGO.Value;
        FProcesso.ShowModal;
      finally
        FProcesso.Free;
      end;
    end;
end;

procedure TFConProcesso.cxButton16Click(Sender: TObject);
begin
    if (FDMGerLicitacao.QConProcessoLic.RecordCount > 0) then
    begin
      try
        application.CreateForm(TFProcesso,FProcesso);
        FProcesso.codemppesq := FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value;
        FProcesso.codpesq := FDMGerLicitacao.QConProcessoLicCODIGO.Value;
        FProcesso.ShowModal;
      finally
        FProcesso.Free;
      end;
    end;
end;

procedure TFConProcesso.cxButton17Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGridDBTableView2,'',FDMGerLicitacao.QConProcessoLicFinanc.RecordCount,2);
end;

procedure TFConProcesso.cxButton18Click(Sender: TObject);
begin
    if (FDMGerLicitacao.QConProcessoLicFinanc.RecordCount > 0) then
    begin
      try
        application.CreateForm(TFProcesso,FProcesso);
        FProcesso.codemppesq := FDMGerLicitacao.QConProcessoLicFinancCODEMPFAT.Value;
        FProcesso.codpesq := FDMGerLicitacao.QConProcessoLicFinancCODIGO.Value;
        FProcesso.ShowModal;
      finally
        FProcesso.Free;
      end;
    end;
end;

procedure TFConProcesso.cxButton19Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGridDBTableView1,'',FDMGerLicitacao.QConProcessoLic.RecordCount,2);
end;

procedure TFConProcesso.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TFConProcesso.cxButton20Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGrid1DBTableView1,'',FDMGerLicitacao.QConProcessoLic.RecordCount,2);
end;

procedure TFConProcesso.cxButton21Click(Sender: TObject);
begin
    close;
end;

procedure TFConProcesso.cxButton22Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFRelProcessoVigencia,FRelProcessoVigencia);
      fdm.TEmpresa.Open;
      fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value,[]);
      FRelProcessoVigencia.QrLbNomeEmpFat.caption := fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaENDERECO.Value + ' ' + fdm.TEmpresaNUMERO.Value + ' ' + fdm.TEmpresaCOMPLEMENTO.Value + ' ' + fdm.TEmpresaBAIRRO.Value + ' ' + fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaUF.Value + ' ' + fdm.TEmpresaFONE1.Value + ' ' +fdm.TEmpresaSITE.Value;
      FRelProcessoVigencia.QrLbNomecli.caption := EdNomeCli2.text;

      if fdm.TempresaLOGO.Value <> '' then
      begin
        if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
        begin
          FRelProcessoVigencia.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
          FRelProcessoVigencia.QRImage1 := ProportionalHeight(FRelProcessoVigencia.QRImage1,68);
        end
        else
        begin
          showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
        end;
      end;

      FRelProcessoVigencia.QuickRep1.Preview;
    finally
      FRelProcessoVigencia.Free;
    end;
end;

procedure TFConProcesso.cxButton23Click(Sender: TObject);
var
  filtrando : boolean;
begin
 sql := '';
    sql2 := '';
    filtrando := false;

    FDMGerLicitacao.QconProcVigencia.Close;
    FDMGerLicitacao.QSomaProcesso.Close;


    sql := sql + ' select processolic.* , case';
    sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('DIAS')+' THEN DATEADD(day,vigenciacont,dtiniciocont)';
    sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('SEMANAS')+' THEN DATEADD(WEEK,vigenciacont,dtiniciocont)';
    sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('MESES')+' THEN DATEADD(MONTH,vigenciacont,dtiniciocont)';
    sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('ANOS')+' THEN DATEADD(YEAR,vigenciacont,dtiniciocont)';
    sql := sql + ' end as DATAVENCIMENTO';

    sql := sql + ' from processolic';
    sql2 := sql2 + 'select sum(VALOREDITAL) VALOREDITAL, SUM(VALORRESULTADO) VALORRESULTADO, SUM(VLRCOMISSAO) VLRCOMISSAO, count(*) NUMERO from processolic';

    if EdCodCli4.Text <> '' then
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


    end;

    if DtInicial4.Text <> '' then
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
      if rgdata4.ItemIndex = 0 then
      begin
        sql := sql + ' DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
        sql2 := sql2 + ' DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
      end
      else if rgdata4.ItemIndex = 1 then
      begin
        sql := sql + ' DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
        sql2 := sql2 + ' DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
      end
      else if rgdata4.ItemIndex = 2 then
      begin
        sql := sql + ' dtiniciocont >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
        sql2 := sql2 + ' dtiniciocont >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
      end
      else
      begin
        sql := sql + ' case ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('DIAS')+' THEN DATEADD(day,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('SEMANAS')+' THEN DATEADD(WEEK,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('MESES')+' THEN DATEADD(MONTH,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('ANOS')+' THEN DATEADD(YEAR,vigenciacont,dtiniciocont) ';
        sql := sql + ' end >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
        sql2 := sql2 + ' case ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('DIAS')+' THEN DATEADD(day,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('SEMANAS')+' THEN DATEADD(WEEK,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('MESES')+' THEN DATEADD(MONTH,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('ANOS')+' THEN DATEADD(YEAR,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' end >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial4.Date));
      end;
    end;


    if DtFinal4.Text <> '' then
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
      if rgdata4.ItemIndex = 0 then
      begin
        sql := sql + ' DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
        sql2 := sql2 + ' DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
      end
      else if rgdata4.ItemIndex = 1 then
      begin
        sql := sql + ' DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
        sql2 := sql2 + ' DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
      end
      else if rgdata4.ItemIndex = 2 then
      begin
        sql := sql + ' dtiniciocont <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
        sql2 := sql2 + ' dtiniciocont <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
      end
      else
      begin
        sql := sql + ' case ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('DIAS')+' THEN DATEADD(day,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('SEMANAS')+' THEN DATEADD(WEEK,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('MESES')+' THEN DATEADD(MONTH,vigenciacont,dtiniciocont) ';
        sql := sql + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('ANOS')+' THEN DATEADD(YEAR,vigenciacont,dtiniciocont) ';
        sql := sql + ' end <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
        sql2 := sql2 + ' case ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('DIAS')+' THEN DATEADD(day,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('SEMANAS')+' THEN DATEADD(WEEK,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('MESES')+' THEN DATEADD(MONTH,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' when VIGENCIACONT > 0 and TEMPOVIGENCIA = '+QuotedStr('ANOS')+' THEN DATEADD(YEAR,vigenciacont,dtiniciocont) ';
        sql2 := sql2 + ' end <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal4.Date));
      end;
    end;




    FDMGerLicitacao.QconProcVigencia.Open;
    {FDMGerLicitacao.QSomaProcesso.Open;

    EdTotalEditais2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALOREDITAL.value);
    EdTotalRes2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALORRESULTADO.value);
    EdTotComis2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVLRCOMISSAO.value);
    EdNumero2.Text := FormatFloat('###,###,###,###,##0',FDMGerLicitacao.QSomaProcessoNUMERO.value);}
end;

procedure TFConProcesso.cxButton24Click(Sender: TObject);
begin
    try
      application.CreateForm(TFCliente,FCliente);
      FCliente.PConsulta.Visible := true;
      if FCliente.ShowModal = mrok then
      begin
        EdCodCli4.Text := inttostr(fdmcliente.TClienteCODIGO.Value);
        EdNomeCli4.Text := fdmcliente.TClienteNOME.Value;
      end;
    finally
      FCliente.Free;
    end;
end;

procedure TFConProcesso.cxButton26Click(Sender: TObject);
begin
    if (FDMGerLicitacao.QConProcessoLic.RecordCount > 0) then
    begin
      try
        application.CreateForm(TFProcesso,FProcesso);
        FProcesso.codemppesq := FDMGerLicitacao.QConProcVigenciaCODEMPFAT.Value;
        FProcesso.codpesq := FDMGerLicitacao.QConProcVigenciaCODIGO.Value;
        FProcesso.ShowModal;
      finally
        FProcesso.Free;
      end;
    end;
end;

procedure TFConProcesso.cxButton27Click(Sender: TObject);
begin
    RelCustGrid3(self,cxGridDBTableView1,'',FDMGerLicitacao.QConProcVigencia.RecordCount,4);
end;

procedure TFConProcesso.cxButton2Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFRelProcesso2,FRelProcesso2);
      fdm.TEmpresa.Open;
      fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value,[]);
      FRelProcesso2.QrLbNomeEmpFat.caption := fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaENDERECO.Value + ' ' + fdm.TEmpresaNUMERO.Value + ' ' + fdm.TEmpresaCOMPLEMENTO.Value + ' ' + fdm.TEmpresaBAIRRO.Value + ' ' + fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaUF.Value + ' ' + fdm.TEmpresaFONE1.Value + ' ' +fdm.TEmpresaSITE.Value;
      FRelProcesso2.QrLbNomecli.caption := EdNomeCli2.text;

      if fdm.TempresaLOGO.Value <> '' then
      begin
        if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
        begin
          FRelProcesso2.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
          FRelProcesso2.QRImage1 := ProportionalHeight(FRelProcesso2.QRImage1,68);
        end
        else
        begin
          showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
        end;
      end;

      FRelProcesso2.QuickRep1.Preview;
    finally
      FRelProcesso2.Free;
    end;
end;

procedure TFConProcesso.cxButton3Click(Sender: TObject);
var
  filtrando : boolean;
begin
 sql := '';
    sql2 := '';
    filtrando := false;

    FDMGerLicitacao.QconProcessoLic.Close;
    FDMGerLicitacao.QSomaProcesso.Close;


    sql := sql + ' select * from processolic';
    sql2 := sql2 + 'select sum(VALOREDITAL) VALOREDITAL, SUM(VALORRESULTADO) VALORRESULTADO, SUM(VLRCOMISSAO) VLRCOMISSAO, count(*) NUMERO from processolic';

    if EdCodCli2.Text <> '' then
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
      sql := sql + ' CODCLI = '+EdCodCli2.Text;
      sql2 := sql2 + ' CODCLI = '+EdCodCli2.Text;
    end;

    if DtInicial2.Text <> '' then
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
      sql := sql + ' DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial2.Date));
      sql2 := sql2 + ' DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial2.Date));
    end;


    if DtFinal2.Text <> '' then
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
      sql := sql + ' DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal2.Date));
      sql2 := sql2 + ' DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal2.Date));
    end;


    if (CbSituacao2.Text <> '') and (CbSituacao2.Text <> 'TODOS') then
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
      sql := sql + ' RESULTADOGERAL = '+QuotedStr(CbSituacao2.Text);
      sql2 := sql2 + ' RESULTADOGERAL = '+QuotedStr(CbSituacao2.Text);
    end;

    FDMGerLicitacao.QconProcessoLic.Open;
    FDMGerLicitacao.QSomaProcesso.Open;

    EdTotalEditais2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALOREDITAL.value);
    EdTotalRes2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALORRESULTADO.value);
    EdTotComis2.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVLRCOMISSAO.value);
    EdNumero2.Text := FormatFloat('###,###,###,###,##0',FDMGerLicitacao.QSomaProcessoNUMERO.value);
end;

procedure TFConProcesso.cxButton4Click(Sender: TObject);
begin
    try
      application.CreateForm(TFCliente,FCliente);
      FCliente.PConsulta.Visible := true;
      if FCliente.ShowModal = mrok then
      begin
        EdCodCli2.Text := inttostr(fdmcliente.TClienteCODIGO.Value);
        EdNomeCli2.Text := fdmcliente.TClienteNOME.Value;
      end;
    finally
      FCliente.Free;
    end;
end;

procedure TFConProcesso.cxButton5Click(Sender: TObject);
begin
    close;
end;

procedure TFConProcesso.cxButton6Click(Sender: TObject);
begin
    try
      Application.CreateForm(TFRelProcesso,FRelProcesso);
      fdm.TEmpresa.Open;
      fdm.TEmpresa.Locate('CODIGO',FDMGerLicitacao.QConProcessoLicCODEMPFAT.Value,[]);
      //FRelProcesso.QrLbNomeEmpFat.caption := fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaENDERECO.Value + ' ' + fdm.TEmpresaNUMERO.Value + ' ' + fdm.TEmpresaCOMPLEMENTO.Value + ' ' + fdm.TEmpresaBAIRRO.Value + ' ' + fdm.TEmpresaCIDADE.Value + ' ' + fdm.TEmpresaUF.Value + ' ' + fdm.TEmpresaFONE1.Value + ' ' +fdm.TEmpresaSITE.Value;
      FRelProcesso.QrLbNomecli.caption := EdNomeCli.text;
      FRelProcesso.QrLbTotal.Caption := EdTotalEditais.Text;
      FRelProcesso.QrLbNumero.Caption := EdNumero.Text;

      if fdm.TempresaLOGO.Value <> '' then
      begin
        if FileExists(CaminhoArquivo(fdm.TempresaLOGO.Value)) then
        begin
          FRelProcesso.QRImage1.Picture.LoadFromFile(CaminhoArquivo(fdm.TempresaLOGO.Value));
          FRelProcesso.QRImage1 := ProportionalHeight(FRelProcesso.QRImage1,68);
        end
        else
        begin
          showmessage('A Logo não foi encontrada no seguinte caminho: '+CaminhoArquivo(fdm.TempresaLOGO.Value));
        end;
      end;


      FRelProcesso.QuickRep1.Preview;
    finally
      FRelProcesso.Free;
    end;
end;

procedure TFConProcesso.cxButton7Click(Sender: TObject);
begin
    close;
end;

procedure TFConProcesso.cxButton8Click(Sender: TObject);
var
  filtrando : boolean;
begin
    sql := '';
    sql2 := '';
    filtrando := false;

    FDMGerLicitacao.QconProcessoLic.Close;
    FDMGerLicitacao.QSomaProcesso.Close;


    sql := sql + ' select * from processolic';
    sql2 := sql2 + 'select sum(VALOREDITAL) VALOREDITAL, SUM(VALORRESULTADO) VALORRESULTADO, SUM(VLRCOMISSAO) VLRCOMISSAO, count(*) NUMERO from processolic';

    if EdCodCli.Text <> '' then
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
      sql := sql + ' CODCLI = '+EdCodCli.Text;
      sql2 := sql2 + ' CODCLI = '+EdCodCli.Text;
    end;

    if DtInicial.Text <> '' then
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
      if rgdata1.ItemIndex = 0 then
      begin
        sql := sql + ' DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
        sql2 := sql2 + ' DATA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
      end
      else if rgdata1.ItemIndex = 1 then
      begin
        sql := sql + ' DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
        sql2 := sql2 + ' DTENVIO >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
      end
      else
      begin
        sql := sql + ' DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
        sql2 := sql2 + ' DATAABERTURA >= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtInicial.Date));
      end;
    end;


    if DtFinal.Text <> '' then
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
      if rgdata1.ItemIndex = 0 then
      begin
        sql := sql + ' DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
        sql2 := sql2 + ' DATA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
      end
      else if rgdata1.ItemIndex = 1 then
      begin
        sql := sql + ' DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
        sql2 := sql2 + ' DTENVIO <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
      end
      else
      begin
        sql := sql + ' DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
        sql2 := sql2 + ' DATAABERTURA <= '+QuotedStr(FormatDateTime('yyyy/mm/dd',DtFinal.Date));
      end;
    end;


    FDMGerLicitacao.QconProcessoLic.Open;
    FDMGerLicitacao.QSomaProcesso.Open;

    EdTotalEditais.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALOREDITAL.value);
    EdTotalRes.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVALORRESULTADO.value);
    EdTotComis.Text := FormatFloat('###,###,###,###,##0.00',FDMGerLicitacao.QSomaProcessoVLRCOMISSAO.value);
    EdNumero.Text := FormatFloat('###,###,###,###,##0',FDMGerLicitacao.QSomaProcessoNUMERO.value);
end;

procedure TFConProcesso.cxButton9Click(Sender: TObject);
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
    end;
end;

procedure TFConProcesso.cxGridDBTableView2Column6PropertiesChange(
  Sender: TObject);
begin
    if FDMGerLicitacao.QConProcessoLicFinancsel.Value = 'X' then
    begin
      numero := numero + 1;
      totcomissao := totcomissao + FDMGerLicitacao.QConProcessoLicFinancVLRCOMISSAO.Value;
      totpago := totpago + FDMGerLicitacao.QConProcessoLicFinancVALOR.Value;
      saldo := saldo + FDMGerLicitacao.QConProcessoLicFinancsaldo.Value;
      totcontrato := totcontrato + FDMGerLicitacao.QConProcessoLicFinancVALORRESULTADO.Value;
      totalpago := totalpago + FDMGerLicitacao.QConProcessoLicFinancVALORCONTRATOLIC.Value;
      saldocontrato := saldocontrato + FDMGerLicitacao.QConProcessoLicFinancsaldocontrato.Value;

      EdTotComissao.Text := FormatFloat('###,###,###,###,##0.00',totcomissao);
      EdTotPago.Text := FormatFloat('###,###,###,###,##0.00',totpago);
      EdSaldo.Text := FormatFloat('###,###,###,###,##0.00',saldo);

      EdContratos.Text := FormatFloat('###,###,###,###,##0.00',totcontrato);
      EdTotalPagoContrato.Text := FormatFloat('###,###,###,###,##0.00',totalpago);
      EdSaldoContratos.Text := FormatFloat('###,###,###,###,##0.00',saldocontrato);

      EdNumero3.Text := FormatFloat('###,###,###,###,##0',numero);
    end
    else
    begin
      numero := numero - 1;
      totcomissao := totcomissao - FDMGerLicitacao.QConProcessoLicFinancVLRCOMISSAO.Value;
      totpago := totpago - FDMGerLicitacao.QConProcessoLicFinancVALOR.Value;
      saldo := saldo - FDMGerLicitacao.QConProcessoLicFinancsaldo.Value;
      totcontrato := totcontrato - FDMGerLicitacao.QConProcessoLicFinancVALORRESULTADO.Value;
      totalpago := totalpago - FDMGerLicitacao.QConProcessoLicFinancVALORCONTRATOLIC.Value;
      saldocontrato := saldocontrato - FDMGerLicitacao.QConProcessoLicFinancsaldocontrato.Value;

      EdTotComissao.Text := FormatFloat('###,###,###,###,##0.00',totcomissao);
      EdTotPago.Text := FormatFloat('###,###,###,###,##0.00',totpago);
      EdSaldo.Text := FormatFloat('###,###,###,###,##0.00',saldo);

      EdContratos.Text := FormatFloat('###,###,###,###,##0.00',totcontrato);
      EdTotalPagoContrato.Text := FormatFloat('###,###,###,###,##0.00',totalpago);
      EdSaldoContratos.Text := FormatFloat('###,###,###,###,##0.00',saldocontrato);

      EdNumero3.Text := FormatFloat('###,###,###,###,##0',numero);
    end;
end;

procedure TFConProcesso.EdCodCli2Exit(Sender: TObject);
begin
    if (EdCodCli2.Text <> '') and (fdmcliente.QCliPesq.Locate('CODIGO',EdCodCli2.text,[])) then
      EdNomeCli2.Text := fdmcliente.QCliPesqNOME.Value;
end;

procedure TFConProcesso.EdCodCli3Exit(Sender: TObject);
begin
    if (EdCodCli3.Text <> '') and (fdmcliente.QCliPesq.Locate('CODIGO',EdCodCli3.text,[])) then
      EdNomeCli3.Text := fdmcliente.QCliPesqNOME.Value;
end;

procedure TFConProcesso.EdCodCliExit(Sender: TObject);
begin
    if (EdCodCli.Text <> '') and (fdmcliente.QCliPesq.Locate('CODIGO',EdCodCli.text,[])) then
      EdNomeCli.Text := fdmcliente.QCliPesqNOME.Value;
end;

procedure TFConProcesso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FDMGerLicitacao.QconProcessoLic.close;
    FDMGerLicitacao.QSomaProcesso.close;
    FDMGerLicitacao.QConProcessoLicFinanc.Close;
    FDMGerLicitacao.QSomaProcessoFinanc.Close;
    fdmcliente.TCliente.Close;
    fdmcliente.QCliPesq.Close;
end;

procedure TFConProcesso.FormShow(Sender: TObject);
begin
    fdm.QEmpresaPesq.Open;
    fdm.TPortador.Open;
    fdmcliente.QCliPesq.open;

    cxPageControl1.ActivePageIndex := 0;

    DtInicial.Date := FirstDayOfMonth(date);
    DtFinal.Date := LastDayOfMonth(date);
    DtInicial2.Date := FirstDayOfMonth(date);
    DtFinal2.Date := LastDayOfMonth(date);
    DtInicial3.Date := FirstDayOfMonth(date);
    DtFinal3.Date := LastDayOfMonth(date);


    if VerPermissaoEspec(usulogado,'VERRELFINANCGESTLIC','GRUPO') then
    begin
      cxTabSheet3.TabVisible := true;
      cxGridDBTableView1Column2.Visible := true;
      cxGridDBTableView1Column1.Visible := true;
      EdTotComis2.Visible := true;
      label7.Visible := true;
    end
    else
    begin
      if VerPermissaoEspec(usulogado,'VERRELFINANCGESTLIC','') then
      begin
        cxTabSheet3.TabVisible := true;
        cxGridDBTableView1Column2.Visible := true;
        cxGridDBTableView1Column1.Visible := true;
        EdTotComis2.Visible := true;
        label7.Visible := true;
      end
      else
      begin
        cxTabSheet3.TabVisible := false;
        cxGridDBTableView1Column2.Visible := false;
        cxGridDBTableView1Column1.Visible := false;
        EdTotComis2.Visible := false;
        label7.Visible := false;
      end;
    end;
end;

end.

