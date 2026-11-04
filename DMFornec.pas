unit DMFornec;

interface

uses
  SysUtils, Classes, DB, DBClient, Variants;

type
  TFDMFornec = class(TDataModule)
    QConFornec: TClientDataSet;
    QConFornecCODIGO: TIntegerField;
    QConFornecNOME: TStringField;
    QConFornecNOMEFANTA: TStringField;
    QConFornecPESSOA: TStringField;
    QConFornecCPF: TStringField;
    QConFornecCIDADE: TStringField;
    QConFornecUF: TStringField;
    QConFornecSTATUS: TStringField;
    QConFornecFONE: TStringField;
    DConFornec: TDataSource;
    TFornec: TClientDataSet;
    DFornec: TDataSource;
    TFornecCEP: TStringField;
    TFornecCNPJ: TStringField;
    TFornecCPF: TStringField;
    TFornecCODIGO: TIntegerField;
    TFornecNOME: TStringField;
    TFornecINSCEST: TStringField;
    TFornecRG: TStringField;
    TFornecENDERECO: TStringField;
    TFornecNUMERO: TStringField;
    TFornecBAIRRO: TStringField;
    TFornecCIDADE: TStringField;
    TFornecUF: TStringField;
    TFornecSTATUS: TStringField;
    TFornecEMAIL: TStringField;
    TFornecSITE: TStringField;
    TFornecNOMEFANTA: TStringField;
    TFornecOBSERVACAO: TStringField;
    TFornecPESSOA: TStringField;
    TFornecDATACAD: TSQLTimeStampField;
    TFornecDATAALT: TSQLTimeStampField;
    TFornecCODUSU: TIntegerField;
    TFornecUSUALT: TIntegerField;
    TFornecNOSSONUM: TStringField;
    TFornecCOMPLEMENTO: TStringField;
    TFornecFONE: TStringField;
    TFornecCODATIV: TIntegerField;
    TFornecNOMEATIV: TStringField;
    QForPesq: TClientDataSet;
    DForPesq: TDataSource;
    QForPesqCODIGO: TIntegerField;
    QForPesqNOME: TStringField;
    QVerificaFornec: TClientDataSet;
    DVerificaFornec: TDataSource;
    QVerificaFornecCODIGO: TIntegerField;
    TFornecULTNOTA: TIntegerField;
    TFornecDATAULTNOTA: TSQLTimeStampField;
    TFornecCODESTADO: TIntegerField;
    TFornecCODMUNIC: TIntegerField;
    QConForneccpfcnpj: TStringField;
    QConFornecCNPJ: TStringField;
    TFornecFONE2: TStringField;
    TFornecFAX: TStringField;
    TFornecCONTATO: TStringField;
    TFornecFONE3: TStringField;
    TFornecFONE4: TStringField;
    TFornecCELULAR: TStringField;
    TFornecCODMUNICUF: TIntegerField;
    procedure TFornecAfterScroll(DataSet: TDataSet);
    procedure QConFornecBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure QConFornecFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TFornecDATACADGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TFornecDATAALTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TFornecFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QConFornecCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMFornec: TFDMFornec;

implementation

uses DMSistema, UBiblio, Fornecedor;

{$R *.dfm}

procedure TFDMFornec.QConFornecBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
   if (ChecaForm(FFornecedor)) and (FFornecedor.sql <> '') then
   begin
     OwnerData := VarArrayOf([FFornecedor.sql]);
   end;
end;

procedure TFDMFornec.QConFornecCalcFields(DataSet: TDataSet);
begin
    if QConFornecPESSOA.Value = 'FISICA' then
    begin
       QConForneccpfcnpj.Value := QConFornecCPF.Value;
    end
    else
    begin
       QConForneccpfcnpj.Value := QConFornecCNPJ.Value;
    end;
end;

procedure TFDMFornec.QConFornecFONEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(QConFornecFONE.Value)) = 0 then
    Text := ''
  else
    Text := QConFornecFONE.Value;
end;

procedure TFDMFornec.TFornecAfterScroll(DataSet: TDataSet);
begin
    if ChecaForm(FFornecedor) then
    begin
      if TFornecPESSOA.Value = 'FISICA' then
        ffornecedor.PageControl2.activepageindex := 0
      else
        ffornecedor.PageControl2.activepageindex := 1;

    end;
end;

procedure TFDMFornec.TFornecDATAALTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TFornecDATAALT.IsNull then
  begin
    a := Split(TFornecDATAALT.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMFornec.TFornecDATACADGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TFornecDATACAD.IsNull then
  begin
    a := Split(TFornecDATACAD.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMFornec.TFornecFONEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TFornecFONE.Value)) = 0 then
    Text := ''
  else
    Text := TFornecFONE.Value;
end;

end.
