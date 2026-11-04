unit DMUsuario;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TFDMUsuario = class(TDataModule)
    QVerUsuario: TClientDataSet;
    DVerUsuario: TDataSource;
    QVerUsuarioNOME: TStringField;
    QVerUsuarioSENHA: TStringField;
    QVerUsuarioEMAIL: TStringField;
    QVerUsuarioVENDEDOR: TIntegerField;
    QVerUsuarioCODIGO: TIntegerField;
    QVerUsuarioVERSODADOSVEND: TStringField;
    QVerUsuarioSENHAMAIL: TStringField;
    QVerUsuarioCODEMPFAT: TIntegerField;
    QVerUsuarioNOMEEMPFAT: TStringField;
    QConUsuPermGerLic: TClientDataSet;
    DConUsuPermGerLic: TDataSource;
    QConGrupoPermGerLic: TClientDataSet;
    DConGrupoPermGerLic: TDataSource;
    QMenuGerLic: TClientDataSet;
    QMenuGerLicCODIGO: TIntegerField;
    QMenuGerLicNOME: TStringField;
    QMenuGerLicBOTAO: TStringField;
    QMenuGerLicDESCRICAO: TStringField;
    QMenuGerLicCODPARENT: TIntegerField;
    QMenuGerLicESPECIAL: TStringField;
    DMenuGerLic: TDataSource;
    QVerUsuarioCODPROFISSIONAL: TIntegerField;
    QVerUsuarioNOMEPROFISSIONAL: TStringField;
    QConUsuEmp: TClientDataSet;
    DConUsuEmp: TDataSource;
    DUsuEmp: TDataSource;
    TUsuEmp: TClientDataSet;
    TUsuEmpCODUSU: TIntegerField;
    TUsuEmpCODEMPFAT: TIntegerField;
    TUsuEmpNOMEUSU: TStringField;
    TUsuEmpNOMEEMPFAT: TStringField;
    QPesqPerfilPermissaoEspec: TClientDataSet;
    QPesqPerfilPermissaoEspecAPROVPEDCOMPRA: TStringField;
    QPesqPerfilPermissaoEspecAPROVPEDVENDA: TStringField;
    QPesqPerfilPermissaoEspecAPROVPEDSERV: TStringField;
    QPesqPerfilPermissaoEspecAPROVCONHECIMENTO: TStringField;
    QPesqPerfilPermissaoEspecAPROVDUPLICCOMPRABAIXA: TStringField;
    QPesqPerfilPermissaoEspecAPROVMOVDUPLICCOMPRA: TStringField;
    QPesqPerfilPermissaoEspecAPROVDUPLICVENDABAIXA: TStringField;
    QPesqPerfilPermissaoEspecAPROVDUPLICVENDA: TStringField;
    QPesqPerfilPermissaoEspecAPROVVENDACXCLIPEND: TStringField;
    QPesqPerfilPermissaoEspecAPROVDESCONTO: TStringField;
    QPesqPerfilPermissaoEspecVERRELFINANCGESTLIC: TStringField;
    DPesqPerfilPermissaoEspec: TDataSource;
    QPesqUsuarioPermissaoEspec: TClientDataSet;
    QPesqUsuarioPermissaoEspecCODIGO: TIntegerField;
    QPesqUsuarioPermissaoEspecAPROVPEDCOMPRA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVPEDVENDA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVPEDSERV: TStringField;
    QPesqUsuarioPermissaoEspecAPROVCONHECIMENTO: TStringField;
    QPesqUsuarioPermissaoEspecAPROVDUPLICCOMPRABAIXA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVMOVDUPLICCOMPRA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVDUPLICVENDABAIXA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVDUPLICVENDA: TStringField;
    QPesqUsuarioPermissaoEspecAPROVVENDACXCLIPEND: TStringField;
    QPesqUsuarioPermissaoEspecAPROVDESCONTO: TStringField;
    QPesqUsuarioPermissaoEspecVERRELFINANCGESTLIC: TStringField;
    DPesqUsuarioPermissaoEspec: TDataSource;
    QConGrupoPermGerLicNOMEFORM: TStringField;
    QConGrupoPermGerLicNOMEMODULO: TStringField;
    QConGrupoPermGerLicCODMOD: TIntegerField;
    QConGrupoPermGerLicSTATUS: TIntegerField;
    QConUsuPermGerLicNOMEMODULO: TStringField;
    QConUsuPermGerLicNOMEFORM: TStringField;
    QConUsuPermGerLicBOTAO: TStringField;
    QConUsuPermGerLicCODMOD: TIntegerField;
    QConUsuPermGerLicSTATUS: TIntegerField;
    QConUsuPermGerLictipo: TStringField;
    QVerUsuarioVERFOLLOW: TStringField;
    QVerUsuarioVERTODOSCAIXA: TStringField;
    QVerUsuarioEXCLUIRCONTCLINICA: TStringField;
    QVerUsuarioAFERICAO: TStringField;
    QVerUsuarioTIPOVENDEDOR: TStringField;
    QVerUsuarioVERAGENDATODOSVEND: TStringField;
    QVerUsuarioAJUDA: TStringField;
    QVerUsuarioALTLIMITECRED: TStringField;
    QVerUsuarioASSINATURAMAIL: TStringField;
    QVerUsuarioDESCMAX: TFloatField;
    QVerUsuarioAPROVDESCONTO: TStringField;
    QVerUsuarioCODSOL: TIntegerField;
    QVerUsuarioCODFUNC: TIntegerField;
    QVerUsuarioVERTODASEMP: TStringField;
    QVerUsuarioVERRELCLI: TStringField;
    QVerUsuarioLANCPRONTUARIO: TStringField;
    QVerUsuarioPERMEDITAGENDA: TStringField;
    QVerUsuarioSUPERVISOR: TStringField;
    QVerUsuarioCCEMAIL: TStringField;
    QVerUsuarioPERMNUMMAXPARC: TStringField;
    QVerUsuarioVISUALIZASOMENTEPRODVENDA: TStringField;
    QConUsuEmpCODEMPFAT: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMUsuario: TFDMUsuario;

implementation

uses DMSistema, UBiblio, Principal, metodosServ;

{$R *.dfm}

end.
