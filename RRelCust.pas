unit RRelCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, QRPDFFilt, QRWebFilt,
  QRXMLSFilt;

type
  TFRRelCust = class(TForm)
    QuickRep1: TQuickRep;
    QRBDetail: TQRBand;
    QRSummary: TQRBand;
    QRLabel1: TQRLabel;
    QRCabecalho: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData1: TQRSysData;
    LTitulo: TQRLabel;
    QRSysData2: TQRSysData;
    LTotPag: TQRLabel;
    LFiltro: TQRLabel;
    QRXMLSFilter1: TQRXMLSFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRRelCust: TFRRelCust;

implementation

{$R *.dfm}

end.
