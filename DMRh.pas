unit DMRh;

interface

uses
  SysUtils, Classes, DB, DBClient, variants;

type
  TFDMRh = class(TDataModule)
    TVendedor: TClientDataSet;
    DVendedor: TDataSource;
    QConVendedor: TClientDataSet;
    DConVendedor: TDataSource;
    TVendedorCEP: TStringField;
    TVendedorDATANASC: TSQLTimeStampField;
    TVendedorSALARIO: TFloatField;
    TVendedorCOMISSAO: TFloatField;
    TVendedorDATACAD: TSQLTimeStampField;
    TVendedorDATAALT: TSQLTimeStampField;
    TVendedorDATAREG: TSQLTimeStampField;
    TVendedorDATASAIDA: TSQLTimeStampField;
    TVendedorCODIGO: TIntegerField;
    TVendedorCRACHA: TStringField;
    TVendedorNOME: TStringField;
    TVendedorSETOR: TIntegerField;
    TVendedorSEXO: TStringField;
    TVendedorENDERECO: TStringField;
    TVendedorNUMERO: TStringField;
    TVendedorNACIONALIDADE: TStringField;
    TVendedorNATURALIDADE: TStringField;
    TVendedorCATEGORIA: TIntegerField;
    TVendedorUF: TStringField;
    TVendedorCIDADE: TStringField;
    TVendedorBAIRRO: TStringField;
    TVendedorCOMPLEMENTO: TStringField;
    TVendedorCODUSU: TIntegerField;
    TVendedorCODUSUALT: TIntegerField;
    TVendedorTURNO: TStringField;
    TVendedorCARGAHORA: TFloatField;
    TVendedorRG: TStringField;
    TVendedorCPF: TStringField;
    TVendedorORGESP: TStringField;
    TVendedorEMAIL: TStringField;
    TVendedorESTCIVIL: TStringField;
    TVendedorNCONJU: TStringField;
    TVendedorCARGO: TStringField;
    TVendedorESCOLARIDADE: TStringField;
    TVendedorSTATUS: TStringField;
    TVendedorVENDEDOR: TStringField;
    TVendedorCARTEIRAHAB: TStringField;
    TVendedorCNPJ: TStringField;
    TVendedorINSCEST: TStringField;
    TVendedorNOMEFANTA: TStringField;
    TVendedorPESSOA: TStringField;
    TVendedorFONE: TStringField;
    TVendedorCELULAR: TStringField;
    TVendedorTIPO: TStringField;
    QVendPesq: TClientDataSet;
    DVendPesq: TDataSource;
    DFuncPesq: TDataSource;
    QFuncPesq: TClientDataSet;
    TSolicitante: TClientDataSet;
    DSolicitante: TDataSource;
    QFuncPesqCODIGO: TIntegerField;
    QFuncPesqNOME: TStringField;
    QVendPesqCODIGO: TIntegerField;
    QVendPesqNOME: TStringField;
    TSolicitanteCODIGO: TIntegerField;
    TSolicitanteCODUSU: TIntegerField;
    TSolicitanteDATACAD: TSQLTimeStampField;
    TSolicitanteNOME: TStringField;
    TSolicitanteSTATUS: TStringField;
    TSolicitanteOBSERVACAO: TStringField;
    TSolicitanteCODDEP: TIntegerField;
    TSolicitanteNOMEDEP: TStringField;
    QBuscaVend: TClientDataSet;
    DBuscaVend: TDataSource;
    QBuscaVendCODVEND: TIntegerField;
    QBuscaVendNOMEVEND: TStringField;
    TVendedorFONE2: TStringField;
    TVendedorFAX: TStringField;
    TVendedorCONTATO: TStringField;
    QAtendPesq: TClientDataSet;
    DAtendPesq: TDataSource;
    QAtendPesqCODIGO: TIntegerField;
    QAtendPesqNOME: TStringField;
    QConVendedorCODIGO: TIntegerField;
    QConVendedorNOME: TStringField;
    QConVendedorTIPO: TStringField;
    QConVendedorFONE: TStringField;
    QConVendedorCELULAR: TStringField;
    QConVendedorCPF: TStringField;
    QConVendedorCNPJ: TStringField;
    QConVendedorENDERECO: TStringField;
    QConVendedorNUMERO: TStringField;
    QConVendedorBAIRRO: TStringField;
    QConVendedorCIDADE: TStringField;
    QConVendedorUF: TStringField;
    QConVendedorCEP: TStringField;
    QConVendedorSTATUS: TStringField;
    procedure TVendedorAfterScroll(DataSet: TDataSet);
    procedure TVendedorDATACADGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TVendedorDATAALTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TVendedorDATAREGGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TVendedorDATASAIDAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMRh: TFDMRh;

implementation

uses DMSistema, UBiblio, Vendedores;

{$R *.dfm}

procedure TFDMRh.TVendedorAfterScroll(DataSet: TDataSet);
begin
    if ChecaForm(FVendedores) then
    begin
      if TVendedorPESSOA.Value = 'FISICA' then
        FVendedores.PageControl2.activepageindex := 0
      else
        FVendedores.PageControl2.activepageindex := 1;
    end;
end;

procedure TFDMRh.TVendedorDATAALTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TVendedorDATAALT.IsNull then
  begin
    a := Split(TVendedorDATAALT.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMRh.TVendedorDATACADGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TVendedorDATACAD.IsNull then
  begin
    a := Split(TVendedorDATACAD.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMRh.TVendedorDATAREGGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TVendedorDATAREG.IsNull then
  begin
    a := Split(TVendedorDATAREG.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMRh.TVendedorDATASAIDAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TVendedorDATASAIDA.IsNull then
  begin
    a := Split(TVendedorDATASAIDA.AsString,' ');
    text := a[0];
  end;
end;

end.
