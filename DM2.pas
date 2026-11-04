unit DM2;

interface

uses
  SysUtils, Classes, DB, DBClient, variants;

type
  TFDM2 = class(TDataModule)
    TAtividade: TClientDataSet;
    DAtividade: TDataSource;
    TAtividadeCODIGO: TIntegerField;
    TAtividadeCODUSU: TIntegerField;
    TAtividadeDATACAD: TDateField;
    TAtividadeOBSERVACAO: TStringField;
    TAtividadeSTATUS: TStringField;
    TAtividadeNOME: TStringField;
    DPais: TDataSource;
    TPais: TClientDataSet;
    TPaisCODIGO: TIntegerField;
    TPaisCODUSU: TIntegerField;
    TPaisNOME: TStringField;
    TPaisOBSERVACAO: TStringField;
    TPaisSTATUS: TStringField;
    TPaisDATACAD: TDateField;
    TPaisNUMERO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDM2: TFDM2;

implementation

uses DMSistema,  UBiblio;

{$R *.dfm}

end.
