// 1) Adicionar o Formulário FPreview no Projeto

// 2)  No Evento onPreview do QuickReport colar os seguintes comandos
//	        Application.CreateForm(TFPreview, FPreview);
//      	FPreview.QRP.QRPrinter := TQRPrinter(Sender);
//      	FPreview.vRelatorio := Nome_do_QuickReport;
//      	FPreview.Show;
//3) Adicionar a 1ª clausula USES a unit "qrprntr"

//IMPORTANTE: o Form Preview, tem que ser criado em tempo real...
unit UPreview;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  qrprntr, Qrctrls, quickrpt,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinsdxStatusBarPainter, Menus, cxButtons,
  QRExport, QRWebFilt, QRXMLSFilt, QRPDFFilt, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxContainer, dxStatusBar, StdCtrls, ExtCtrls, SynPdf, Printers;

type
  TFPreview = class(TForm)
    QRP: TQRPreview;
    Panel1: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    cxButton7: TcxButton;
    cxButton1: TcxButton;
    SEZoom: TcxSpinEdit;
    BtConfirma: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    dxStatusBar1: TdxStatusBar;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    SD: TSaveDialog;
    Label2: TLabel;
    procedure QRPPageAvailable(Sender: TObject; PageNum: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtConfirmaClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure vRelatorioAfterPreview(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportToPDF;
  private
    { Private declarations }
  public
    { Public declarations }
    vRelatorio : TQuickRep;
  end;

var
  FPreview: TFPreview;

implementation
//uses

{$R *.DFM}

procedure TFPreview.QRPPageAvailable(Sender: TObject; PageNum: Integer);
begin
    dxStatusBar1.Panels[1].Text:='Página:  ' + IntToStr(QRP.PageNumber)+ '/' + IntToStr(QRP.QRPrinter.PageCount);
    dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
end;

procedure TFPreview.vRelatorioAfterPreview(Sender: TObject);
begin
  cxButton1.Enabled := true;
  cxButton7.Enabled := true;
  BtConfirma.Enabled := true;
  Label2.Visible := false;
end;

procedure TFPreview.cxButton10Click(Sender: TObject);
begin
    qrp.ZoomToWidth;
    dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
end;

procedure TFPreview.cxButton11Click(Sender: TObject);
begin
    qrp.ZoomToFit;
    dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
end;

procedure TFPreview.cxButton1Click(Sender: TObject);
var
   prep : TCustomquickrep;
   tagval : integer;
begin
 try
  printer.Refresh;
  if TCustomquickrep( vRelatorio.qrprinter.ParentReport).ParentComposite <> nil then
  begin
       prep := TCustomquickrep( vRelatorio.qrprinter.ParentReport);
       TCustomQuickrep(vRelatorio.QRPrinter.ParentReport).PrinterSetup;
       tagval := TCustomQuickrep(vRelatorio.QRPrinter.ParentReport).tag;
       if tagval <> 0 then exit;
       vRelatorio.qrprinter.PrinterIndex := prep.PrinterSettings.printerindex;
       // 8/02/05
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.PrinterIndex := prep.UserPrinterSettings.PrinterIndex;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.FirstPage :=
                                                    prep.UserPrinterSettings.FirstPage;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.LastPage :=
                                                    prep.UserPrinterSettings.LastPage;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.OutputBin := TQRBin(prep.UserPrinterSettings.CustomBinCode);
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.Collate := prep.UserPrinterSettings.Collate;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.ColorOption := prep.UserPrinterSettings.ColorOption;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.PrintQuality := prep.UserPrinterSettings.PrintQuality;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.Copies := prep.UserPrinterSettings.Copies;
       TQRCompositeReport( prep.ParentComposite).printerSettings.Duplex := prep.UserPrinterSettings.ExtendedDuplex = 1;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.CustomBinCode := prep.UserPrinterSettings.CustomBinCode;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.UseCustomBinCode := prep.PrinterSettings.UseCustomBinCode;
       TQRCompositeReport( prep.ParentComposite).PrinterSettings.Duplex := prep.UserPrinterSettings.Duplex;
       vRelatorio.QRPrinter.aPrinterSettings.OutputBin := TQRBin(prep.UserPrinterSettings.CustomBinCode);
       vRelatorio.QRPrinter.aPrinterSettings.Collate := prep.UserPrinterSettings.Collate;
       vRelatorio.QRPrinter.aPrinterSettings.ColorOption := prep.UserPrinterSettings.ColorOption;
       vRelatorio.QRPrinter.aPrinterSettings.PrintQuality := prep.UserPrinterSettings.PrintQuality;
       vRelatorio.QRPrinter.aPrinterSettings.Copies := prep.UserPrinterSettings.Copies;
       vRelatorio.QRPrinter.aPrinterSettings.Duplex := prep.UserPrinterSettings.ExtendedDuplex = 1;
       vRelatorio.QRPrinter.aPrinterSettings.CustomBinCode := prep.UserPrinterSettings.CustomBinCode;
       vRelatorio.QRPrinter.aPrinterSettings.UseCustomBinCode := prep.PrinterSettings.UseCustomBinCode;
       vRelatorio.QRPrinter.LastPage := prep.UserPrinterSettings.LastPage;
       vRelatorio.QRPrinter.FirstPage := prep.UserPrinterSettings.FirstPage;
       vRelatorio.QRPrinter.aPrinterSettings.Duplex := prep.UserPrinterSettings.Duplex;
       vRelatorio.QRPrinter.aPrinterSettings.ExtendedDuplex := prep.UserPrinterSettings.ExtendedDuplex;
       prep.UserPrinterSettings.UseExtendedDuplex :=  prep.UserPrinterSettings.ExtendedDuplex > 1;
       vRelatorio.QRPrinter.aPrinterSettings.UseExtendedDuplex := prep.UserPrinterSettings.UseExtendedDuplex;
       exit;
  end;
  if vRelatorio.qrprinter.ParentReport is TCustomquickrep then
  Begin
       TCustomQuickrep(vRelatorio.QRPrinter.ParentReport).PrinterSetup;
       tagval := TCustomQuickrep(vRelatorio.QRPrinter.ParentReport).tag;
       if tagval <> 0 then exit;
       prep := TCustomquickrep( vRelatorio.qrprinter.ParentReport);
       vRelatorio.qrprinter.PrinterIndex := prep.PrinterSettings.printerindex;
       if prep.UserPrinterSettings.CustomBinCode >= integer(Last) then
       begin
            vRelatorio.QRPrinter.aPrinterSettings.UseCustomBinCode := true;
            vRelatorio.QRPrinter.aPrinterSettings.CustomBinCode := prep.UserPrinterSettings.CustomBinCode;
       end
       else
       begin
            vRelatorio.QRPrinter.aPrinterSettings.UseCustomBinCode := false;
            vRelatorio.QRPrinter.aPrinterSettings.OutputBin := TQRBin(prep.UserPrinterSettings.CustomBinCode);
       end;
       vRelatorio.QRPrinter.aPrinterSettings.Collate := prep.UserPrinterSettings.Collate;
       vRelatorio.QRPrinter.aPrinterSettings.ColorOption := prep.UserPrinterSettings.ColorOption;
       vRelatorio.QRPrinter.aPrinterSettings.PrintQuality := prep.UserPrinterSettings.PrintQuality;
       vRelatorio.QRPrinter.aPrinterSettings.Copies := prep.UserPrinterSettings.Copies;
       vRelatorio.QRPrinter.aPrinterSettings.Duplex := prep.UserPrinterSettings.ExtendedDuplex = 1;
       vRelatorio.QRPrinter.LastPage := prep.UserPrinterSettings.LastPage;
       vRelatorio.QRPrinter.FirstPage := prep.UserPrinterSettings.FirstPage;
       vRelatorio.QRPrinter.aPrinterSettings.Duplex := prep.UserPrinterSettings.Duplex;
       prep.UserPrinterSettings.UseExtendedDuplex :=  prep.UserPrinterSettings.ExtendedDuplex > 1;
       vRelatorio.QRPrinter.aPrinterSettings.ExtendedDuplex := prep.UserPrinterSettings.ExtendedDuplex;
       vRelatorio.QRPrinter.aPrinterSettings.UseExtendedDuplex := prep.UserPrinterSettings.UseExtendedDuplex;
       if not PrintMetafileFromPreview then
       begin
           // set the quickrep settings
           if prep.UserPrinterSettings.CustomBinCode >= integer(Last) then
           begin
               prep.PrinterSettings.UseCustomBinCode := true;
               prep.PrinterSettings.CustomBinCode := prep.UserPrinterSettings.CustomBinCode;
           end
           else
           begin
               prep.PrinterSettings.UseCustomBinCode := false;
               prep.PrinterSettings.OutputBin := TQRBin(prep.UserPrinterSettings.CustomBinCode);
           end;
           prep.PrinterSettings.PrinterIndex := prep.UserPrinterSettings.PrinterIndex;
           prep.PrinterSettings.Copies := prep.UserPrinterSettings.Copies;
           prep.PrinterSettings.Duplex := prep.UserPrinterSettings.Duplex;
           prep.PrinterSettings.FirstPage := prep.UserPrinterSettings.FirstPage;
           prep.PrinterSettings.LastPage := prep.UserPrinterSettings.LastPage;
           prep.PrinterSettings.UseStandardprinter := prep.UserPrinterSettings.UseStandardprinter;
           prep.PrinterSettings.ExtendedDuplex := prep.UserPrinterSettings.ExtendedDuplex;
           prep.PrinterSettings.UseExtendedDuplex := prep.UserPrinterSettings.UseExtendedDuplex;
           prep.PrinterSettings.UseCustomPaperCode := prep.UserPrinterSettings.UseCustomPaperCode;
           prep.PrinterSettings.CustomPaperCode := prep.UserPrinterSettings.CustomPaperCode;
           prep.PrinterSettings.MemoryLimit := prep.UserPrinterSettings.MemoryLimit;
           prep.PrinterSettings.PrintQuality := prep.UserPrinterSettings.PrintQuality;
           prep.PrinterSettings.Collate := prep.UserPrinterSettings.Collate;
           prep.PrinterSettings.ColorOption := prep.UserPrinterSettings.ColorOption;
           prep.PrinterSettings.Orientation := prep.UserPrinterSettings.Orientation;
           prep.PrinterSettings.PaperSize := prep.UserPrinterSettings.PaperSize;
       end;
  end;
 finally
 end;



//  vRelatorio.PrinterSetup;
    //QRP.QRPrinter.PrintSetup;
    //showmessage(inttostr(vRelatorio.PrinterSettings.Copies));
    //QRP.UpdateImage;
    if application.MessageBox('Deseja imprimir?','E-Tech',MB_ICONQUESTION+MB_YESNO) = idyes  then
      cxButton7Click(Sender);
end;

procedure TFPreview.cxButton2Click(Sender: TObject);
begin
   qrp.Zoom := qrp.Zoom + 20;
   SEZoom.Value:=qrp.Zoom;
   dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
end;

procedure TFPreview.cxButton3Click(Sender: TObject);
begin
   close;
end;

procedure TFPreview.cxButton4Click(Sender: TObject);
begin
  if qrp.Zoom >= 20 Then
    qrp.Zoom := qrp.Zoom - 20
  else
    qrp.Zoom := 1;
  SEZoom.Value:=qrp.Zoom;
  dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
end;

procedure TFPreview.cxButton5Click(Sender: TObject);
begin
    QRP.PageNumber := 1 ;
    dxStatusBar1.Panels[1].Text:='Página:  ' + IntToStr(QRP.PageNumber)+ '/' + IntToStr(QRP.QRPrinter.PageCount);
end;

procedure TFPreview.cxButton6Click(Sender: TObject);
begin
    QRP.PageNumber :=  QRP.PageNumber -1;
    dxStatusBar1.Panels[1].Text:='Página:  ' + IntToStr(QRP.PageNumber)+ '/' + IntToStr(QRP.QRPrinter.PageCount);
end;

procedure TFPreview.cxButton7Click(Sender: TObject);
begin
//  vRelatorio.Print;
 // vRelatorio.QRPrinter.Print;
 // QRP.QRPrinter.Print;

      if PrintMetafileFromPreview or ( not (qrprinter.ParentReport is TQuickRep)) then
           QRPrinter.Print
      else
      begin
           vRelatorio.print;
           // 11/03/2009
           if QRP.QrPrinter = nil then
           begin
                QRP.QRPrinter := vRelatorio.qrprinter;
           end;
      end;
end;

procedure TFPreview.cxButton8Click(Sender: TObject);
begin
    QRP.PageNumber := QRP.QRPrinter.PageCount;
    dxStatusBar1.Panels[1].Text:='Página:  ' + IntToStr(QRP.PageNumber)+ '/' + IntToStr(QRP.QRPrinter.PageCount);
end;

procedure TFPreview.cxButton9Click(Sender: TObject);
begin
    QRP.PageNumber :=  QRP.PageNumber + 1;
    dxStatusBar1.Panels[1].Text:='Página:  ' + IntToStr(QRP.PageNumber)+ '/' + IntToStr(QRP.QRPrinter.PageCount);
end;

procedure TFPreview.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
   try
      qrp.Zoom := SEZoom.Value;
      dxStatusBar1.Panels[2].Text:=IntToStr(QRP.Zoom)+'%';
   except
      on EConvertError do
   end;
end;

procedure TFPreview.BtConfirmaClick(Sender: TObject);
begin
//PDF (*.pdf)|*.pdf|Página HTML (*.htm)|*.htm;*.html|Rich Text (*.rtf)|*.rtf|Arquivo de Texto (*.txt)|*.txt|Planilha (*.xls)|*.xls|WMF (*.wmf)|*.wmf|XML (*.xml)|*.xml|Relatório (*.qrp)|*.qrp
   if SD.Execute then
   begin
    if SD.FilterIndex = 1 then //pdf
    begin
        //GeraPDF(vRelatorio,SD.FileName);
        ExportToPDF;
    end
    else if SD.FilterIndex = 2 then //html
    begin
      vrelatorio.ExportToFilter(TQRGHTMLDocumentFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex = 3 then //rtf - word
    begin
      vrelatorio.ExportToFilter(TQRRTFExportFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex = 4 then //txt
    begin
      vrelatorio.ExportToFilter(TQRAsciiExportFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex  = 5 then
    begin
      vrelatorio.ExportToFilter(TQRXLSFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex = 6 then
    begin
      vrelatorio.ExportToFilter(TQRWMFExportFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex = 7 then
    begin
      vrelatorio.ExportToFilter(TQRXDocumentFilter.Create(SD.FileName));
    end
    else if SD.FilterIndex = 8 then
    begin
      vRelatorio.QRPrinter.Save(SD.FileName);
    end;
   end;
end;

procedure TFPreview.ExportToPDF;
var
  // variáveis necessárias para a geração do PDF
  oPDF: TPDFDocument;
  oMetaDados: TMetafile;
  oPosicionamento: TPDFCanvasRenderMetaFileTextPositioning;
  nPagina: integer;
begin
  // cria uma instância do documento PDF
  oPDF := TPDFDocument.Create(True, 0, False, nil);
  // inicializa a variável de metadados
  oMetaDados := nil;
  try
    // configura o tipo do papel
    oPDF.DefaultPaperSize := psA4;
    // configura o posicionamento dos caracteres
    oPosicionamento := tpKerningFromAveragePosition;
    // configura o layout de visualização do documento
    oPDF.Root.PageLayout := plOneColumn;
    // ajusta a orientação do documento, caso o relatório esteja em paisagem
    if QRP.QRPrinter.Orientation = poLandscape then
    begin
      oPDF.DefaultPageLandscape := True;
    end;
    // carrega os metadados de cada página do relatório
    for nPagina := 1 to QRP.QRPrinter.PageCount do
    begin
      // adiciona uma nova página no documento
      oPDF.AddPage;
      // carrega os metadados da página
      oMetaDados := QRP.QRPrinter.PageList.GetPage(nPagina);
      // renderiza os metadados
      oPDF.Canvas.RenderMetaFile(oMetaDados, 1, 0, 0, 0, oPosicionamento);
      // limpa a variável de metadados
      oMetaDados := nil;
    end;
    // salva o arquivo
    oPDF.SaveToFile(SD.FileName);
  finally
    // libera as variáveis
    oMetaDados.Free;
    oPDF.Free;
  end;
end;

procedure TFPreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPreview.QRP.QRPrinter := nil;
  Action := caFree;
  FPreview := nil;
  //FPreview := nil;
end;

procedure TFPreview.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_ADD then
      cxButton2Click(sender)
    else if key = VK_SUBTRACT then
      cxButton4Click(sender)
    else if (key = VK_DOWN) or (key = VK_RIGHT) then
      cxButton9Click(sender)
    else if (key = VK_UP) or (key = VK_LEFT) then
      cxButton6Click(sender)
    else if (key = 80) and (Shift = [ssCtrl]) then
      cxButton7Click(sender)
    else if (key = 83) and (Shift = [ssCtrl]) then
      BtConfirmaClick(sender);
end;

procedure TFPreview.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
    if Shift = [ssCtrl] then
    begin
      cxButton4Click(sender);
    end
    else
    begin
      if (QRP.QRPrinter.PageCount > 1) and (QRP.PageNumber <> QRP.QRPrinter.PageCount) then
        cxButton9Click(sender);
    end;
    Handled:=True; // se não ativar ele entra no evento 2 vezes
end;

procedure TFPreview.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
    if Shift = [ssCtrl] then
    begin
      cxButton2Click(sender);
    end
    else
    begin
      if (QRP.QRPrinter.PageCount > 1) and (QRP.PageNumber <> 1) then
        cxButton6Click(sender);
    end;
    Handled:=True;
end;

procedure TFPreview.FormShow(Sender: TObject);
begin
    vRelatorio.AfterPreview := vRelatorioAfterPreview;
end;

end.
