object FDMUsuario: TFDMUsuario
  OldCreateOrder = False
  Height = 275
  Width = 959
  object QVerUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'login'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'senha'
        ParamType = ptUnknown
        Value = '0'
      end>
    ProviderName = 'DVerUsuario'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 32
    Top = 8
    object QVerUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QVerUsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
    object QVerUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QVerUsuarioVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object QVerUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVerUsuarioVERSODADOSVEND: TStringField
      FieldName = 'VERSODADOSVEND'
      Size = 1
    end
    object QVerUsuarioSENHAMAIL: TStringField
      FieldName = 'SENHAMAIL'
      Size = 50
    end
    object QVerUsuarioCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object QVerUsuarioNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QVerUsuarioCODPROFISSIONAL: TIntegerField
      FieldName = 'CODPROFISSIONAL'
    end
    object QVerUsuarioNOMEPROFISSIONAL: TStringField
      FieldName = 'NOMEPROFISSIONAL'
      Size = 100
    end
    object QVerUsuarioVERFOLLOW: TStringField
      FieldName = 'VERFOLLOW'
      Size = 1
    end
    object QVerUsuarioVERTODOSCAIXA: TStringField
      FieldName = 'VERTODOSCAIXA'
      Size = 1
    end
    object QVerUsuarioEXCLUIRCONTCLINICA: TStringField
      FieldName = 'EXCLUIRCONTCLINICA'
      Size = 1
    end
    object QVerUsuarioAFERICAO: TStringField
      FieldName = 'AFERICAO'
      Size = 1
    end
    object QVerUsuarioTIPOVENDEDOR: TStringField
      FieldName = 'TIPOVENDEDOR'
      Size = 50
    end
    object QVerUsuarioVERAGENDATODOSVEND: TStringField
      FieldName = 'VERAGENDATODOSVEND'
      Size = 1
    end
    object QVerUsuarioAJUDA: TStringField
      FieldName = 'AJUDA'
      Size = 1
    end
    object QVerUsuarioALTLIMITECRED: TStringField
      FieldName = 'ALTLIMITECRED'
      Size = 1
    end
    object QVerUsuarioASSINATURAMAIL: TStringField
      FieldName = 'ASSINATURAMAIL'
      Size = 800
    end
    object QVerUsuarioDESCMAX: TFloatField
      FieldName = 'DESCMAX'
    end
    object QVerUsuarioAPROVDESCONTO: TStringField
      FieldName = 'APROVDESCONTO'
      Size = 1
    end
    object QVerUsuarioCODSOL: TIntegerField
      FieldName = 'CODSOL'
    end
    object QVerUsuarioCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QVerUsuarioVERTODASEMP: TStringField
      FieldName = 'VERTODASEMP'
      Size = 1
    end
    object QVerUsuarioVERRELCLI: TStringField
      FieldName = 'VERRELCLI'
      Size = 1
    end
    object QVerUsuarioLANCPRONTUARIO: TStringField
      FieldName = 'LANCPRONTUARIO'
      Size = 1
    end
    object QVerUsuarioPERMEDITAGENDA: TStringField
      FieldName = 'PERMEDITAGENDA'
      Size = 1
    end
    object QVerUsuarioSUPERVISOR: TStringField
      FieldName = 'SUPERVISOR'
      Size = 1
    end
    object QVerUsuarioCCEMAIL: TStringField
      FieldName = 'CCEMAIL'
      Size = 200
    end
    object QVerUsuarioPERMNUMMAXPARC: TStringField
      FieldName = 'PERMNUMMAXPARC'
      Size = 1
    end
    object QVerUsuarioVISUALIZASOMENTEPRODVENDA: TStringField
      FieldName = 'VISUALIZASOMENTEPRODVENDA'
      Size = 1
    end
  end
  object DVerUsuario: TDataSource
    DataSet = QVerUsuario
    Left = 32
    Top = 72
  end
  object QConUsuPermGerLic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'USUARIO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConUsuPermGerLic'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 840
    Top = 136
    object QConUsuPermGerLicNOMEMODULO: TStringField
      FieldName = 'NOMEMODULO'
      Size = 50
    end
    object QConUsuPermGerLicNOMEFORM: TStringField
      FieldName = 'NOMEFORM'
      Size = 50
    end
    object QConUsuPermGerLicBOTAO: TStringField
      FieldName = 'BOTAO'
      Size = 50
    end
    object QConUsuPermGerLicCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Required = True
    end
    object QConUsuPermGerLicSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object QConUsuPermGerLictipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
  end
  object DConUsuPermGerLic: TDataSource
    DataSet = QConUsuPermGerLic
    Left = 840
    Top = 200
  end
  object QConGrupoPermGerLic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PERFIL'
        ParamType = ptUnknown
        Value = 0
      end>
    ProviderName = 'DConGrupoPermGerLic'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 408
    Top = 120
    object QConGrupoPermGerLicNOMEFORM: TStringField
      FieldName = 'NOMEFORM'
      Size = 50
    end
    object QConGrupoPermGerLicNOMEMODULO: TStringField
      FieldName = 'NOMEMODULO'
      Size = 50
    end
    object QConGrupoPermGerLicCODMOD: TIntegerField
      FieldName = 'CODMOD'
      Required = True
    end
    object QConGrupoPermGerLicSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object DConGrupoPermGerLic: TDataSource
    DataSet = QConGrupoPermGerLic
    Left = 408
    Top = 184
  end
  object QMenuGerLic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DMenuGerLic'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 136
    Top = 8
    object QMenuGerLicCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMenuGerLicNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QMenuGerLicBOTAO: TStringField
      FieldName = 'BOTAO'
      Size = 50
    end
    object QMenuGerLicDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object QMenuGerLicCODPARENT: TIntegerField
      FieldName = 'CODPARENT'
    end
    object QMenuGerLicESPECIAL: TStringField
      FieldName = 'ESPECIAL'
      Size = 1
    end
  end
  object DMenuGerLic: TDataSource
    DataSet = QMenuGerLic
    Left = 136
    Top = 72
  end
  object QConUsuEmp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConUsuEmp'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 592
    Top = 136
    object QConUsuEmpCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      Required = True
    end
  end
  object DConUsuEmp: TDataSource
    DataSet = QConUsuEmp
    Left = 592
    Top = 200
  end
  object DUsuEmp: TDataSource
    DataSet = TUsuEmp
    Left = 704
    Top = 72
  end
  object TUsuEmp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODUSU'
    MasterFields = 'CODIGO'
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DUsuEmp'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 704
    Top = 8
    object TUsuEmpCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuEmpCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuEmpNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Size = 200
    end
    object TUsuEmpNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 200
    end
  end
  object QPesqPerfilPermissaoEspec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'USUARIO'
        ParamType = ptUnknown
        Value = 0
      end>
    ProviderName = 'DPesqPerfilPermissaoEspec'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 64
    Top = 136
    object QPesqPerfilPermissaoEspecAPROVPEDCOMPRA: TStringField
      FieldName = 'APROVPEDCOMPRA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVPEDVENDA: TStringField
      FieldName = 'APROVPEDVENDA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVPEDSERV: TStringField
      FieldName = 'APROVPEDSERV'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVCONHECIMENTO: TStringField
      FieldName = 'APROVCONHECIMENTO'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVDUPLICCOMPRABAIXA: TStringField
      FieldName = 'APROVDUPLICCOMPRABAIXA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVMOVDUPLICCOMPRA: TStringField
      FieldName = 'APROVMOVDUPLICCOMPRA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVDUPLICVENDABAIXA: TStringField
      FieldName = 'APROVDUPLICVENDABAIXA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVDUPLICVENDA: TStringField
      FieldName = 'APROVDUPLICVENDA'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVVENDACXCLIPEND: TStringField
      FieldName = 'APROVVENDACXCLIPEND'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecAPROVDESCONTO: TStringField
      FieldName = 'APROVDESCONTO'
      Size = 1
    end
    object QPesqPerfilPermissaoEspecVERRELFINANCGESTLIC: TStringField
      FieldName = 'VERRELFINANCGESTLIC'
      Size = 1
    end
  end
  object DPesqPerfilPermissaoEspec: TDataSource
    DataSet = QPesqPerfilPermissaoEspec
    Left = 64
    Top = 200
  end
  object QPesqUsuarioPermissaoEspec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    ProviderName = 'DPesqUsuarioPermissaoEspec'
    RemoteServer = FDMSistema.DSPUsuario
    Left = 232
    Top = 128
    object QPesqUsuarioPermissaoEspecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPesqUsuarioPermissaoEspecAPROVPEDCOMPRA: TStringField
      FieldName = 'APROVPEDCOMPRA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVPEDVENDA: TStringField
      FieldName = 'APROVPEDVENDA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVPEDSERV: TStringField
      FieldName = 'APROVPEDSERV'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVCONHECIMENTO: TStringField
      FieldName = 'APROVCONHECIMENTO'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVDUPLICCOMPRABAIXA: TStringField
      FieldName = 'APROVDUPLICCOMPRABAIXA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVMOVDUPLICCOMPRA: TStringField
      FieldName = 'APROVMOVDUPLICCOMPRA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVDUPLICVENDABAIXA: TStringField
      FieldName = 'APROVDUPLICVENDABAIXA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVDUPLICVENDA: TStringField
      FieldName = 'APROVDUPLICVENDA'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVVENDACXCLIPEND: TStringField
      FieldName = 'APROVVENDACXCLIPEND'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecAPROVDESCONTO: TStringField
      FieldName = 'APROVDESCONTO'
      Size = 1
    end
    object QPesqUsuarioPermissaoEspecVERRELFINANCGESTLIC: TStringField
      FieldName = 'VERRELFINANCGESTLIC'
      Size = 1
    end
  end
  object DPesqUsuarioPermissaoEspec: TDataSource
    DataSet = QPesqUsuarioPermissaoEspec
    Left = 232
    Top = 192
  end
end
