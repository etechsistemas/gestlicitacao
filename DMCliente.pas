unit DMCliente;

interface

uses
  SysUtils, Classes, DB, DBClient, variants, Dialogs;

type
  TFDMCliente = class(TDataModule)
    QConCliente: TClientDataSet;
    DConCliente: TDataSource;
    TCliCont: TClientDataSet;
    DCliCont: TDataSource;
    TCliRefBanc: TClientDataSet;
    DCliRefBanc: TDataSource;
    TCliRefCom: TClientDataSet;
    DCliRefCom: TDataSource;
    TCliRefBancCODCLI: TIntegerField;
    TCliRefBancCODUSU: TIntegerField;
    TCliRefBancITEM: TIntegerField;
    TCliRefBancNBANCO: TStringField;
    TCliRefBancAGENCIA: TStringField;
    TCliRefBancCONTA: TStringField;
    TCliRefBancFONE: TStringField;
    TCliRefBancCODBANC: TStringField;
    TCliRefComCODCLI: TIntegerField;
    TCliRefComCODUSU: TIntegerField;
    TCliRefComITEM: TIntegerField;
    TCliRefComEMPRESA: TStringField;
    TCliRefComRESPONSAVEL: TStringField;
    TCliRefComCIDADE: TStringField;
    TCliRefComUF: TStringField;
    TCliRefComTELEFONE: TStringField;
    TCliContCODCLI: TIntegerField;
    TCliContCODUSU: TIntegerField;
    TCliContITEM: TIntegerField;
    TCliContNOME: TStringField;
    TCliContFONE1: TStringField;
    TCliContFONE2: TStringField;
    TCliContFONE3: TStringField;
    TCliContFONE4: TStringField;
    TCliContEMAIL: TStringField;
    TCliContSETOR: TStringField;
    QConClienteCODIGO: TIntegerField;
    QConClienteNOME: TStringField;
    QConClienteNOMEFANTA: TStringField;
    QConClientePESSOA: TStringField;
    QConClienteCPF: TStringField;
    QConClienteCIDADE: TStringField;
    QConClienteUF: TStringField;
    QConClienteSTATUS: TStringField;
    QConClienteFONE: TStringField;
    TCliFilial: TClientDataSet;
    DCliFilial: TDataSource;
    TCliFilialCODCLI: TIntegerField;
    TCliFilialCODUSU: TIntegerField;
    TCliFilialITEM: TIntegerField;
    TCliFilialENDERECO: TStringField;
    TCliFilialCEP: TStringField;
    TCliFilialNUMERO: TStringField;
    TCliFilialFONE: TStringField;
    TCliFilialCONTATO: TStringField;
    TCliFilialCIDADE: TStringField;
    TCliFilialBAIRRO: TStringField;
    TCliFilialUF: TStringField;
    TCliFilialCOMPLEMENTO: TStringField;
    TCliContRAMAL: TStringField;
    TCliContRAMAL3: TStringField;
    TCliContRAMAL4: TStringField;
    TCliContFAX: TStringField;
    TCliContRAMALFAX: TStringField;
    TCliContRAMAL2: TStringField;
    TCliFilialNOME: TStringField;
    QCliPesq: TClientDataSet;
    DCliPesq: TDataSource;
    QCliPesqCODIGO: TIntegerField;
    QCliPesqNOME: TStringField;
    QVerificaCliente: TClientDataSet;
    DVerificaCliente: TDataSource;
    QVerificaClienteCODIGO: TIntegerField;
    QConClienteCNPJ: TStringField;
    QCliContPesq: TClientDataSet;
    DCliContPesq: TDataSource;
    QCliContPesqITEM: TIntegerField;
    QCliContPesqNOME: TStringField;
    QConContatos: TClientDataSet;
    DConContatos: TDataSource;
    QConContatosCODCLI: TIntegerField;
    QConContatosCODUSU: TIntegerField;
    QConContatosITEM: TIntegerField;
    QConContatosNOME: TStringField;
    QConContatosFONE1: TStringField;
    QConContatosRAMAL: TStringField;
    QConContatosFONE2: TStringField;
    QConContatosRAMAL2: TStringField;
    QConContatosFONE3: TStringField;
    QConContatosRAMAL3: TStringField;
    QConContatosFONE4: TStringField;
    QConContatosRAMAL4: TStringField;
    QConContatosEMAIL: TStringField;
    QConContatosSETOR: TStringField;
    QConContatosFAX: TStringField;
    QConContatosRAMALFAX: TStringField;
    TTipoCliente: TClientDataSet;
    DTipoCliente: TDataSource;
    TTipoClienteNOME: TStringField;
    TTipoClienteOBSERVACAO: TStringField;
    TTipoClienteSTATUS: TStringField;
    TTipoClienteDATACAD: TSQLTimeStampField;
    TTipoClienteCODUSU: TIntegerField;
    TTipoClienteCODIGO: TIntegerField;
    QCliFilialPesq: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField3: TIntegerField;
    StringField11: TStringField;
    DCliFilialPesq: TDataSource;
    QConFilial: TClientDataSet;
    DConFilial: TDataSource;
    QConFilialCODCLI: TIntegerField;
    QConFilialCODUSU: TIntegerField;
    QConFilialITEM: TIntegerField;
    QConFilialENDERECO: TStringField;
    QConFilialCEP: TStringField;
    QConFilialNUMERO: TStringField;
    QConFilialFONE: TStringField;
    QConFilialCONTATO: TStringField;
    QConFilialCIDADE: TStringField;
    QConFilialBAIRRO: TStringField;
    QConFilialUF: TStringField;
    QConFilialCOMPLEMENTO: TStringField;
    QConFilialNOME: TStringField;
    TCliente: TClientDataSet;
    DCliente: TDataSource;
    QCliContPesqCODCLI: TIntegerField;
    QConClientecpfcnpj: TStringField;
    QConEndEntrega: TClientDataSet;
    DConEndEntrega: TDataSource;
    QConEndEntregaCODCLI: TIntegerField;
    QConEndEntregaCODUSU: TIntegerField;
    QConEndEntregaITEM: TIntegerField;
    QConEndEntregaENDERECO: TStringField;
    QConEndEntregaCEP: TStringField;
    QConEndEntregaNUMERO: TStringField;
    QConEndEntregaFONE: TStringField;
    QConEndEntregaCONTATO: TStringField;
    QConEndEntregaCIDADE: TStringField;
    QConEndEntregaBAIRRO: TStringField;
    QConEndEntregaUF: TStringField;
    QConEndEntregaCOMPLEMENTO: TStringField;
    QConEndEntregaNOME: TStringField;
    QCliFilialPesq2: TClientDataSet;
    DCliFilialPesq2: TDataSource;
    QCliContPesq2: TClientDataSet;
    DCliContPesq2: TDataSource;
    QCliPesq2: TClientDataSet;
    DCliPesq2: TDataSource;
    QCliPesq2CODIGO: TIntegerField;
    QCliPesq2NOME: TStringField;
    QCliContPesq2ITEM: TIntegerField;
    QCliContPesq2NOME: TStringField;
    QCliContPesq2CODCLI: TIntegerField;
    QCliFilialPesq2CODCLI: TIntegerField;
    QCliFilialPesq2ITEM: TIntegerField;
    QCliFilialPesq2NOME: TStringField;
    QConFilialCODESTADO: TIntegerField;
    QConFilialCODMUNICUF: TIntegerField;
    QConFilialCODMUNIC: TIntegerField;
    TCliFilialCODESTADO: TIntegerField;
    TCliFilialCODMUNICUF: TIntegerField;
    TCliFilialCODMUNIC: TIntegerField;
    QConEndEntregaCODESTADO: TIntegerField;
    QConEndEntregaCODMUNICUF: TIntegerField;
    QConEndEntregaCODMUNIC: TIntegerField;
    QCliListaConf: TClientDataSet;
    QCliListaConfCODIGO: TIntegerField;
    QCliListaConfNOME: TStringField;
    QCliListaConfNOMEFANTA: TStringField;
    QCliListaConfPESSOA: TStringField;
    QCliListaConfINSCEST: TStringField;
    QCliListaConfCEP: TStringField;
    QCliListaConfDATACAD: TSQLTimeStampField;
    QCliListaConfCPF: TStringField;
    QCliListaConfRG: TStringField;
    QCliListaConfENDERECO: TStringField;
    QCliListaConfNUMERO: TStringField;
    QCliListaConfBAIRRO: TStringField;
    QCliListaConfCIDADE: TStringField;
    QCliListaConfUF: TStringField;
    QCliListaConfSTATUS: TStringField;
    QCliListaConfFONE: TStringField;
    QCliListaConfCNPJ: TStringField;
    QCliListaConfDESCTIPOCLI: TStringField;
    QCliListaConfTIPOCLI: TIntegerField;
    QCliListaConfCODVEND: TIntegerField;
    QCliListaConfNOMEVEND: TStringField;
    QCliListaConfCODVEND2: TIntegerField;
    QCliListaConfNOMEVEND2: TStringField;
    QCliListaConfCODATEND: TIntegerField;
    QCliListaConfNOMEATEND: TStringField;
    QCliListaConfCODATEND2: TIntegerField;
    QCliListaConfNOMEATEND2: TStringField;
    QCliListaConfCODMUNICUF: TIntegerField;
    QCliListaConfCODMUNIC: TIntegerField;
    QCliListaConfCODESTADO: TIntegerField;
    QCliListaConfCODLOCAL: TIntegerField;
    QCliListaConfNOMELOCAL: TStringField;
    QCliListaConfCOMPLEMENTO: TStringField;
    QCliListaConfEMAIL: TStringField;
    QCliListaConfCODATIV: TIntegerField;
    QCliListaConfNOMEATIV: TStringField;
    DCliListaConf: TDataSource;
    TCliRefPes: TClientDataSet;
    DCliRefPes: TDataSource;
    TCliRefPesCODCLI: TIntegerField;
    TCliRefPesCODUSU: TIntegerField;
    TCliRefPesITEM: TIntegerField;
    TCliRefPesRESPONSAVEL: TStringField;
    TCliRefPesCIDADE: TStringField;
    TCliRefPesUF: TStringField;
    TCliRefPesTELEFONE: TStringField;
    TClienteCODIGO: TIntegerField;
    TClienteCODUSU: TIntegerField;
    TClienteUSUALT: TIntegerField;
    TClienteNOME: TStringField;
    TClienteCNPJ: TStringField;
    TClienteINSCEST: TStringField;
    TClienteCPF: TStringField;
    TClienteRG: TStringField;
    TClienteENDERECO: TStringField;
    TClienteNUMERO: TStringField;
    TClienteBAIRRO: TStringField;
    TClienteCIDADE: TStringField;
    TClienteUF: TStringField;
    TClienteSTATUS: TStringField;
    TClienteEMAIL: TStringField;
    TClienteFONE: TStringField;
    TClienteFONE2: TStringField;
    TClienteSITE: TStringField;
    TClienteNOMEFANTA: TStringField;
    TClientePESSOA: TStringField;
    TClienteCEP: TStringField;
    TClienteMAE: TStringField;
    TClientePAI: TStringField;
    TClienteORGAOESP: TStringField;
    TClienteCPFAVAL: TStringField;
    TClienteDATACAD: TSQLTimeStampField;
    TClienteDATAALT: TSQLTimeStampField;
    TClienteDTNASC: TSQLTimeStampField;
    TClienteDTNASCCONJU: TSQLTimeStampField;
    TClienteRENDA: TIntegerField;
    TClienteTRABALHO: TStringField;
    TClienteCONJUGE: TStringField;
    TClienteTRABCONJU: TStringField;
    TClienteFONECONJU: TStringField;
    TClienteSEXO: TStringField;
    TClienteESTCIVIL: TStringField;
    TClienteESCOLARIDADE: TStringField;
    TClienteSALCONJU: TFloatField;
    TClienteSALARIO: TFloatField;
    TClienteCOMPLEMENTO: TStringField;
    TClienteCODATIV: TIntegerField;
    TClienteNOMEATIV: TStringField;
    TClienteCODVEND: TIntegerField;
    TClienteNOMEVEND: TStringField;
    TClienteCODVEND2: TIntegerField;
    TClienteNOMEVEND2: TStringField;
    TClienteLIMITECREDITO: TFloatField;
    TClienteVALIDADE: TSQLTimeStampField;
    TClienteCODATEND: TIntegerField;
    TClienteNOMEATEND: TStringField;
    TClienteCODATEND2: TIntegerField;
    TClienteNOMEATEND2: TStringField;
    TClienteULTIMANOTA: TIntegerField;
    TClienteDATAULTNOTA: TSQLTimeStampField;
    TClienteCODLOCAL: TIntegerField;
    TClienteNOMELOCAL: TStringField;
    TClienteCODESTADO: TIntegerField;
    TClienteCODMUNIC: TIntegerField;
    TClienteTIPOCLI: TIntegerField;
    TClienteDESCTIPOCLI: TStringField;
    TClienteFONE3: TStringField;
    TClienteFAX: TStringField;
    TClienteCONTATO: TStringField;
    TClienteCODSETOR: TIntegerField;
    TClienteNOMESETOR: TStringField;
    TClienteDATACREDITO: TDateField;
    TClienteCONVENIO: TStringField;
    TClienteCODMUNICUF: TIntegerField;
    TClienteDATAADMIS: TDateField;
    TClienteFONEEMPRESA: TStringField;
    TCliObs: TClientDataSet;
    DCliObs: TDataSource;
    TCliObsCODCLI: TIntegerField;
    TCliObsITEM: TIntegerField;
    TCliObsCODUSU: TIntegerField;
    TCliObsOBSERVACAO: TMemoField;
    TCliObsDATA: TDateField;
    QConCliente2: TClientDataSet;
    QConCliente2cpfcnpj: TStringField;
    QConCliente2CODIGO: TIntegerField;
    QConCliente2NOME: TStringField;
    QConCliente2NOMEFANTA: TStringField;
    QConCliente2PESSOA: TStringField;
    QConCliente2INSCEST: TStringField;
    QConCliente2CEP: TStringField;
    QConCliente2DATACAD: TSQLTimeStampField;
    QConCliente2CPF: TStringField;
    QConCliente2RG: TStringField;
    QConCliente2ENDERECO: TStringField;
    QConCliente2NUMERO: TStringField;
    QConCliente2BAIRRO: TStringField;
    QConCliente2CIDADE: TStringField;
    QConCliente2UF: TStringField;
    QConCliente2STATUS: TStringField;
    QConCliente2FONE: TStringField;
    QConCliente2CNPJ: TStringField;
    QConCliente2CODUSU: TIntegerField;
    QConCliente2USUALT: TIntegerField;
    QConCliente2EMAIL: TStringField;
    QConCliente2FONE2: TStringField;
    QConCliente2SITE: TStringField;
    QConCliente2OBSERVACAO: TStringField;
    QConCliente2MAE: TStringField;
    QConCliente2PAI: TStringField;
    QConCliente2ORGAOESP: TStringField;
    QConCliente2CPFAVAL: TStringField;
    QConCliente2DATAALT: TSQLTimeStampField;
    QConCliente2DTNASC: TSQLTimeStampField;
    QConCliente2DTNASCCONJU: TSQLTimeStampField;
    QConCliente2RENDA: TIntegerField;
    QConCliente2TRABALHO: TStringField;
    QConCliente2CONJUGE: TStringField;
    QConCliente2TRABCONJU: TStringField;
    QConCliente2FONECONJU: TStringField;
    QConCliente2SEXO: TStringField;
    QConCliente2ESTCIVIL: TStringField;
    QConCliente2ESCOLARIDADE: TStringField;
    QConCliente2SALCONJU: TFloatField;
    QConCliente2SALARIO: TFloatField;
    QConCliente2COMPLEMENTO: TStringField;
    QConCliente2CODATIV: TIntegerField;
    QConCliente2NOMEATIV: TStringField;
    QConCliente2CODVEND: TIntegerField;
    QConCliente2NOMEVEND: TStringField;
    QConCliente2CODVEND2: TIntegerField;
    QConCliente2NOMEVEND2: TStringField;
    QConCliente2LIMITECREDITO: TFloatField;
    QConCliente2VALIDADE: TSQLTimeStampField;
    QConCliente2CODATEND: TIntegerField;
    QConCliente2NOMEATEND: TStringField;
    QConCliente2CODATEND2: TIntegerField;
    QConCliente2NOMEATEND2: TStringField;
    QConCliente2ULTIMANOTA: TIntegerField;
    QConCliente2DATAULTNOTA: TSQLTimeStampField;
    QConCliente2CODLOCAL: TIntegerField;
    QConCliente2NOMELOCAL: TStringField;
    QConCliente2CODESTADO: TIntegerField;
    QConCliente2CODMUNIC: TIntegerField;
    QConCliente2TIPOCLI: TIntegerField;
    QConCliente2DESCTIPOCLI: TStringField;
    QConCliente2FONE3: TStringField;
    QConCliente2FAX: TStringField;
    QConCliente2CONTATO: TStringField;
    QConCliente2CODSETOR: TIntegerField;
    QConCliente2NOMESETOR: TStringField;
    QConCliente2DATACREDITO: TDateField;
    QConCliente2CONVENIO: TStringField;
    QConCliente2CODMUNICUF: TIntegerField;
    QConCliente2FONEEMPRESA: TStringField;
    QConCliente2DATAADMIS: TDateField;
    QConCliente2SEL: TStringField;
    QConCliente2QTDEETIQ: TIntegerField;
    QConCliente2CODLISTA: TIntegerField;
    QConCliente2NOMELISTA: TStringField;
    QConCliente2CADPRO: TStringField;
    QConCliente2SUFRAMA: TStringField;
    QConCliente2inscrg: TStringField;
    DConCliente2: TDataSource;
    TCliDoc: TClientDataSet;
    TCliDocCODCLI: TIntegerField;
    TCliDocCODUSU: TIntegerField;
    TCliDocITEM: TIntegerField;
    TCliDocTIPODOC: TStringField;
    TCliDocDESCRICAO: TStringField;
    TCliDocLOCALARQ: TStringField;
    TCliDocVALIDADE: TDateField;
    DCliDoc: TDataSource;
    TClienteOBSERVACAO: TStringField;
    TClienteSEL: TStringField;
    TClienteQTDEETIQ: TIntegerField;
    TClienteCODLISTA: TIntegerField;
    TClienteNOMELISTA: TStringField;
    TClienteCADPRO: TStringField;
    TClienteSUFRAMA: TStringField;
    TClienteCODSUBSETOR: TIntegerField;
    TClienteNOMSUBSETOR: TStringField;
    TClienteTRABALHO2: TStringField;
    TClienteSALARIO2: TFloatField;
    TClienteOUTRARENDA: TStringField;
    TClienteENDTRABALHO: TStringField;
    TClienteNUMTRABALHO: TStringField;
    TClienteBAIRROTRABALHO: TStringField;
    TClienteCIDADETRABALHO: TStringField;
    TClienteUFTRABALHO: TStringField;
    TClienteCEPTRABALHO: TStringField;
    TClienteCOMPLEMENTOTRAB: TStringField;
    TClientePROFISSAO: TStringField;
    TClienteINSCMUN: TStringField;
    TClienteREGIMETRIBUT: TStringField;
    TClienteDTEMISSAORG: TDateField;
    TClienteCODPAIS: TIntegerField;
    TClienteNOMEPAIS: TStringField;
    TClienteUFEMISSORRG: TStringField;
    TClienteNATURALIDADE: TStringField;
    TClienteUFNATURALIDADE: TStringField;
    TClienteNACIONALIDADE: TStringField;
    TClienteTEMPORESANO: TIntegerField;
    TClienteTEMPORESMES: TIntegerField;
    TClienteSITUACAORESIDENCIA: TStringField;
    TClienteVALORALUGUEL: TFloatField;
    TClienteDTADMISCONJU: TDateField;
    TClienteOCUPACAO: TStringField;
    QConCliente2TRABALHO2: TStringField;
    QConCliente2SALARIO2: TFloatField;
    QConCliente2OUTRARENDA: TStringField;
    QConCliente2ENDTRABALHO: TStringField;
    QConCliente2NUMTRABALHO: TStringField;
    QConCliente2BAIRROTRABALHO: TStringField;
    QConCliente2CIDADETRABALHO: TStringField;
    QConCliente2UFTRABALHO: TStringField;
    QConCliente2CEPTRABALHO: TStringField;
    QConCliente2COMPLEMENTOTRAB: TStringField;
    QConCliente2CODSUBSETOR: TIntegerField;
    QConCliente2NOMSUBSETOR: TStringField;
    QConCliente2PROFISSAO: TStringField;
    procedure QConClienteBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure TClienteAfterScroll(DataSet: TDataSet);
    procedure TClienteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure TCliContFONE1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliContFONE2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliContFONE3GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliContFONE4GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliContFAXGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteDATACADGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteDATAALTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteFONE2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteFONECONJUGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QConClienteFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliRefBancFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TCliRefComTELEFONEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QConCliPotenBeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure TClienteDTNASCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteDTNASCCONJUGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TClienteDATACREDITOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QConClienteCalcFields(DataSet: TDataSet);
    procedure TCliObsOBSERVACAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QConCliente2BeforeGetRecords(Sender: TObject;
      var OwnerData: OleVariant);
    procedure QConCliente2CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMCliente: TFDMCliente;

implementation

uses DMSistema, Cliente, UBiblio, DMUsuario;
{$R *.dfm}

procedure TFDMCliente.QConCliente2BeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  if (ChecaForm(FCliente)) and (FCliente.sql2 <> '') then
  begin
    OwnerData := VarArrayOf([FCliente.sql2]);
  end;
end;

procedure TFDMCliente.QConCliente2CalcFields(DataSet: TDataSet);
begin
    if QConCliente2PESSOA.Value = 'FISICA' then
    begin
       QConCliente2cpfcnpj.Value := QConCliente2CPF.Value;
       QConCliente2inscrg.Value := QConCliente2RG.Value;
    end
    else
    begin
       QConCliente2cpfcnpj.Value := QConCliente2CNPJ.Value;
       QConCliente2inscrg.Value := QConCliente2INSCEST.Value;
    end;
end;

procedure TFDMCliente.QConClienteBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  if (ChecaForm(FCliente)) and (FCliente.sql <> '') then
  begin
    OwnerData := VarArrayOf([FCliente.sql]);
  end;
end;

procedure TFDMCliente.QConClienteCalcFields(DataSet: TDataSet);
begin
    if QConClientePESSOA.Value = 'FISICA' then
    begin
       QConClientecpfcnpj.Value := QConClienteCPF.Value;
    end
    else
    begin
       QConClientecpfcnpj.Value := QConClienteCNPJ.Value;
    end;
end;

procedure TFDMCliente.QConClienteFONEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(QConClienteFONE.Value)) = 0 then
    Text := ''
  else
    Text := QConClienteFONE.Value;
end;

procedure TFDMCliente.QConCliPotenBeforeGetRecords(Sender: TObject;
  var OwnerData: OleVariant);
begin
  if (ChecaForm(FCliente)) and (FCliente.sql <> '') then
  begin
    OwnerData := VarArrayOf([FCliente.sql]);
  end;
end;

procedure TFDMCliente.TCliContFAXGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliContFAX.Value)) = 0 then
    Text := ''
  else
    Text := TCliContFAX.Value;
end;

procedure TFDMCliente.TCliContFONE1GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliContFONE1.Value)) = 0 then
    Text := ''
  else
    Text := TCliContFONE1.Value;
end;

procedure TFDMCliente.TCliContFONE2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliContFONE2.Value)) = 0 then
    Text := ''
  else
    Text := TCliContFONE2.Value;
end;

procedure TFDMCliente.TCliContFONE3GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliContFONE2.Value)) = 0 then
    Text := ''
  else
    Text := TCliContFONE3.Value;
end;

procedure TFDMCliente.TCliContFONE4GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliContFONE2.Value)) = 0 then
    Text := ''
  else
    Text := TCliContFONE4.Value;
end;

procedure TFDMCliente.TClienteAfterScroll(DataSet: TDataSet);
begin
  TCliCont.Close;
  TCliCont.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliCont.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;
  TCliCont.Open;

  TCliRefCom.Close;
  TCliRefCom.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliRefCom.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;;
  TCliRefCom.Open;

  TCliRefPes.Close;
  TCliRefpes.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliRefpes.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;;
  TCliRefPes.Open;


  TCliDoc.Close;
  TCliDoc.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliDoc.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;;
  TCliDoc.Open;


  TCliRefBanc.Close;
  TCliRefBanc.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliRefBanc.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;
  TCliRefBanc.Open;

  TCliFilial.Close;
  TCliFilial.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliFilial.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;
  TCliFilial.Open;

  {TCliHist.Close;
  TCliHist.Params.ParamByName('codcli').AsInteger := TClienteCODIGO.Value;
  TCliHist.Params.ParamByName('codusu').AsInteger := TClienteCODUSU.Value;
  TCliHist.Open;}

  if ChecaForm(FCliente) then
  begin
    if TClientePESSOA.Value = 'FISICA' then
      FCliente.PageControl2.activepageindex := 0
    else
      FCliente.PageControl2.activepageindex := 1;
  end;


end;

procedure TFDMCliente.TClienteDATAALTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TClienteDATAALT.IsNull then
  begin
    a := Split(TClienteDATAALT.AsString, ' ');
    text := a[0];
  end;
end;

procedure TFDMCliente.TClienteDATACADGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TClienteDATACAD.IsNull then
  begin
    a := Split(TClienteDATACAD.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMCliente.TClienteDATACREDITOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var a : TStringList;
begin
  if not TClienteDATACREDITO.IsNull then
  begin
    a := Split(TClienteDATACREDITO.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMCliente.TClienteDTNASCCONJUGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var a : TStringList;
begin
  if not TClienteDTNASCCONJU.IsNull then
  begin
    a := Split(TClienteDTNASCCONJU.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMCliente.TClienteDTNASCGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var a : TStringList;
begin
  if not TClienteDTNASC.IsNull then
  begin
    a := Split(TClienteDTNASC.AsString,' ');
    text := a[0];
  end;
end;

procedure TFDMCliente.TClienteFONE2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TClienteFONE2.Value)) = 0 then
    Text := ''
  else
    Text := TClienteFONE2.Value;
end;

procedure TFDMCliente.TClienteFONECONJUGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TClienteFONECONJU.Value)) = 0 then
    Text := ''
  else
    Text := TClienteFONECONJU.Value;
end;

procedure TFDMCliente.TClienteFONEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TClienteFONE.Value)) = 0 then
    Text := ''
  else
    Text := TClienteFONE.Value;
end;

procedure TFDMCliente.TClienteReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := raCancel;
  raise exception.create(E.message);

end;

procedure TFDMCliente.TCliObsOBSERVACAOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
    text :=  TCliObsOBSERVACAO.value;
end;

procedure TFDMCliente.TCliRefBancFONEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Length(Trim(TCliRefBancFONE.Value)) = 0 then
    Text := ''
  else
    Text := TCliRefBancFONE.Value;
end;

procedure TFDMCliente.TCliRefComTELEFONEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Length(Trim(TCliRefComTELEFONE.Value)) = 0 then
    Text := ''
  else
    Text := TCliRefComTELEFONE.Value;
end;

end.
