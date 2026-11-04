unit FRelPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, quickrpt, Qrctrls, jpeg;

type
  TFRelCtPgForn = class(TForm)
    RelPagar: TQuickRep;
    Titulo: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBCalc1: TQRDBCalc;
    QRDBCalc2: TQRDBCalc;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBCalc3: TQRDBCalc;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBCalc4: TQRDBCalc;
    QRImage1: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelCtPgForn: TFRelCtPgForn;

implementation

uses  DMContasPagar;

{$R *.DFM}

end.
