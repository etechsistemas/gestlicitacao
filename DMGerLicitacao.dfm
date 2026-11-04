object FDMGerLicitacao: TFDMGerLicitacao
  OldCreateOrder = False
  Height = 936
  Width = 1117
  object QConEntidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConEntidade'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 152
    Top = 16
    object QConEntidadecpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConEntidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConEntidadeNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConEntidadePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConEntidadeINSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object QConEntidadeCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConEntidadeDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object QConEntidadeCPF: TStringField
      FieldName = 'CPF'
    end
    object QConEntidadeRG: TStringField
      FieldName = 'RG'
    end
    object QConEntidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConEntidadeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConEntidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConEntidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConEntidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConEntidadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConEntidadeFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object QConEntidadeCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object DConEntidade: TDataSource
    DataSet = QConEntidade
    Left = 152
    Top = 80
  end
  object QConContatos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end>
    ProviderName = 'DConContatos'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 152
    Top = 160
    object QConContatosCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConContatosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConContatosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QConContatosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QConContatosFONE1: TStringField
      FieldName = 'FONE1'
    end
    object QConContatosRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object QConContatosFONE2: TStringField
      FieldName = 'FONE2'
    end
    object QConContatosRAMAL2: TStringField
      FieldName = 'RAMAL2'
      Size = 5
    end
    object QConContatosFONE3: TStringField
      FieldName = 'FONE3'
    end
    object QConContatosRAMAL3: TStringField
      FieldName = 'RAMAL3'
      Size = 5
    end
    object QConContatosFONE4: TStringField
      FieldName = 'FONE4'
    end
    object QConContatosRAMAL4: TStringField
      FieldName = 'RAMAL4'
      Size = 5
    end
    object QConContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object QConContatosSETOR: TStringField
      FieldName = 'SETOR'
      Size = 100
    end
    object QConContatosFAX: TStringField
      FieldName = 'FAX'
    end
    object QConContatosRAMALFAX: TStringField
      FieldName = 'RAMALFAX'
      Size = 5
    end
  end
  object DConContatos: TDataSource
    DataSet = QConContatos
    Left = 152
    Top = 224
  end
  object QEntidadeFilialPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliFilialPesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 264
    Top = 160
    object QEntidadeFilialPesqCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QEntidadeFilialPesqITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QEntidadeFilialPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object DEntidadeFilialPesq: TDataSource
    DataSet = QEntidadeFilialPesq
    Left = 264
    Top = 224
  end
  object QEntidadePesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DEntidadePesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 240
    Top = 16
    object QEntidadePesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QEntidadePesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QEntidadePesqCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QEntidadePesqDTULTCONSULTA: TDateField
      FieldName = 'DTULTCONSULTA'
    end
    object QEntidadePesqDTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
    end
  end
  object DEntidadePesq: TDataSource
    DataSet = QEntidadePesq
    Left = 240
    Top = 80
  end
  object QEntidadeContPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliContPesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 328
    Top = 16
    object QEntidadeContPesqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEntidadeContPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QEntidadeContPesqCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
  end
  object DEntidadeContPesq: TDataSource
    DataSet = QEntidadeContPesq
    Left = 328
    Top = 80
  end
  object TEntidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPEntidade'
    RemoteServer = FDMSistema.DSGerLicitacao
    AfterScroll = TEntidadeAfterScroll
    Left = 144
    Top = 283
    object TEntidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TEntidadeCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 25
    end
    object TEntidadeINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 25
    end
    object TEntidadeCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\-000\-000-00;1;_'
    end
    object TEntidadeRG: TStringField
      FieldName = 'RG'
    end
    object TEntidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TEntidadePAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object TEntidadeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TEntidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TEntidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TEntidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TEntidadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TEntidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object TEntidadeFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TEntidadeFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 25
    end
    object TEntidadeSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object TEntidadeNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object TEntidadePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object TEntidadeCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TEntidadeMAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object TEntidadePAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object TEntidadeORGAOESP: TStringField
      FieldName = 'ORGAOESP'
      Size = 100
    end
    object TEntidadeCPFAVAL: TStringField
      FieldName = 'CPFAVAL'
      Size = 100
    end
    object TEntidadeDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeDATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeDTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeDTNASCCONJU: TSQLTimeStampField
      FieldName = 'DTNASCCONJU'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeRENDA: TIntegerField
      FieldName = 'RENDA'
    end
    object TEntidadeTRABALHO: TStringField
      FieldName = 'TRABALHO'
      Size = 50
    end
    object TEntidadeCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object TEntidadeTRABCONJU: TStringField
      FieldName = 'TRABCONJU'
      Size = 50
    end
    object TEntidadeFONECONJU: TStringField
      FieldName = 'FONECONJU'
      Size = 50
    end
    object TEntidadeSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object TEntidadeESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 10
    end
    object TEntidadeESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object TEntidadeSALCONJU: TFloatField
      FieldName = 'SALCONJU'
    end
    object TEntidadeSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object TEntidadeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object TEntidadeCODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object TEntidadeNOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object TEntidadeCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TEntidadeNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object TEntidadeCODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object TEntidadeNOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object TEntidadeLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object TEntidadeVALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
    end
    object TEntidadeORGAOPUB: TStringField
      FieldName = 'ORGAOPUB'
      Size = 1
    end
    object TEntidadeCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object TEntidadeNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object TEntidadeCODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object TEntidadeNOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object TEntidadeULTIMANOTA: TIntegerField
      FieldName = 'ULTIMANOTA'
    end
    object TEntidadeDATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object TEntidadeNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object TEntidadeCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TEntidadeCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object TEntidadeTIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object TEntidadeDESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 50
    end
    object TEntidadeTECNICOSEG: TStringField
      FieldName = 'TECNICOSEG'
      Size = 100
    end
    object TEntidadeFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TEntidadeFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TEntidadeCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TEntidadeCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 100
    end
    object TEntidadeCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object TEntidadeNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object TEntidadeCLF: TStringField
      FieldName = 'CLF'
      Size = 100
    end
    object TEntidadeEMAILF: TStringField
      FieldName = 'EMAILF'
      Size = 100
    end
    object TEntidadeDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
      EditMask = '!99/99/0099;1;_'
    end
    object TEntidadeRETORNOFONE: TStringField
      FieldName = 'RETORNOFONE'
      Size = 25
    end
    object TEntidadeENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 200
    end
    object TEntidadeENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 200
    end
    object TEntidadeCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 1
    end
    object TEntidadeCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TEntidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object TEntidadeFONEEMPRESA: TStringField
      FieldName = 'FONEEMPRESA'
    end
    object TEntidadeDATAADMIS: TDateField
      FieldName = 'DATAADMIS'
    end
    object TEntidadeCEI: TStringField
      FieldName = 'CEI'
    end
    object TEntidadeSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object TEntidadeQTDEETIQ: TIntegerField
      FieldName = 'QTDEETIQ'
    end
    object TEntidadeCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object TEntidadeNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 200
    end
    object TEntidadeCADPRO: TStringField
      FieldName = 'CADPRO'
      Size = 50
    end
    object TEntidadeSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object TEntidadeCODSUBSETOR: TIntegerField
      FieldName = 'CODSUBSETOR'
    end
    object TEntidadeNOMSUBSETOR: TStringField
      FieldName = 'NOMSUBSETOR'
      Size = 100
    end
    object TEntidadeTRABALHO2: TStringField
      FieldName = 'TRABALHO2'
      Size = 100
    end
    object TEntidadeSALARIO2: TFloatField
      FieldName = 'SALARIO2'
    end
    object TEntidadeOUTRARENDA: TStringField
      FieldName = 'OUTRARENDA'
      Size = 1
    end
    object TEntidadeENDTRABALHO: TStringField
      FieldName = 'ENDTRABALHO'
      Size = 100
    end
    object TEntidadeNUMTRABALHO: TStringField
      FieldName = 'NUMTRABALHO'
      Size = 50
    end
    object TEntidadeBAIRROTRABALHO: TStringField
      FieldName = 'BAIRROTRABALHO'
      Size = 100
    end
    object TEntidadeCIDADETRABALHO: TStringField
      FieldName = 'CIDADETRABALHO'
      Size = 100
    end
    object TEntidadeUFTRABALHO: TStringField
      FieldName = 'UFTRABALHO'
      Size = 3
    end
    object TEntidadeCEPTRABALHO: TStringField
      FieldName = 'CEPTRABALHO'
      Size = 10
    end
    object TEntidadeCOMPLEMENTOTRAB: TStringField
      FieldName = 'COMPLEMENTOTRAB'
      Size = 100
    end
    object TEntidadePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
    object TEntidadeINSCMUN: TStringField
      FieldName = 'INSCMUN'
    end
    object TEntidadeREGIMETRIBUT: TStringField
      FieldName = 'REGIMETRIBUT'
      Size = 50
    end
    object TEntidadeDTEMISSAORG: TDateField
      FieldName = 'DTEMISSAORG'
    end
    object TEntidadeCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object TEntidadeNOMEPAIS: TStringField
      FieldName = 'NOMEPAIS'
      Size = 100
    end
    object TEntidadeUFEMISSORRG: TStringField
      FieldName = 'UFEMISSORRG'
      Size = 3
    end
    object TEntidadeNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 100
    end
    object TEntidadeUFNATURALIDADE: TStringField
      FieldName = 'UFNATURALIDADE'
      Size = 3
    end
    object TEntidadeNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object TEntidadeTEMPORESANO: TIntegerField
      FieldName = 'TEMPORESANO'
    end
    object TEntidadeTEMPORESMES: TIntegerField
      FieldName = 'TEMPORESMES'
    end
    object TEntidadeSITUACAORESIDENCIA: TStringField
      FieldName = 'SITUACAORESIDENCIA'
      Size = 50
    end
    object TEntidadeVALORALUGUEL: TFloatField
      FieldName = 'VALORALUGUEL'
    end
    object TEntidadeDTADMISCONJU: TDateField
      FieldName = 'DTADMISCONJU'
    end
    object TEntidadeOCUPACAO: TStringField
      FieldName = 'OCUPACAO'
      Size = 100
    end
  end
  object DEntidade: TDataSource
    DataSet = TEntidade
    Left = 144
    Top = 347
  end
  object DEntidadeCont: TDataSource
    DataSet = TEntidadeCont
    Left = 240
    Top = 344
  end
  object TEntidadeCont: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DEntidade
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPEntidadeCont'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 240
    Top = 280
    object TEntidadeContCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeContCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeContITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeContNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TEntidadeContFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEntidadeContFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object TEntidadeContFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEntidadeContFONE4: TStringField
      FieldName = 'FONE4'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEntidadeContEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TEntidadeContSETOR: TStringField
      FieldName = 'SETOR'
      Size = 100
    end
    object TEntidadeContRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object TEntidadeContRAMAL3: TStringField
      FieldName = 'RAMAL3'
      Size = 5
    end
    object TEntidadeContRAMAL4: TStringField
      FieldName = 'RAMAL4'
      Size = 5
    end
    object TEntidadeContFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEntidadeContRAMALFAX: TStringField
      FieldName = 'RAMALFAX'
      Size = 5
    end
    object TEntidadeContRAMAL2: TStringField
      FieldName = 'RAMAL2'
      Size = 5
    end
  end
  object TEntidadeFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DEntidade
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DEntidadeFilial'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 560
    Top = 280
    object TEntidadeFilialCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeFilialCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeFilialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TEntidadeFilialCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object TEntidadeFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TEntidadeFilialFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEntidadeFilialCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TEntidadeFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TEntidadeFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TEntidadeFilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 100
    end
    object TEntidadeFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TEntidadeFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object TEntidadeFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object TEntidadeFilialCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TEntidadeFilialCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TEntidadeFilialCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
  end
  object DEntidadeFilial: TDataSource
    DataSet = TEntidadeFilial
    Left = 560
    Top = 344
  end
  object QEntidadePesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DEntidadePesq2'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 664
    Top = 16
    object QEntidadePesq2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QEntidadePesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QEntidadePesq2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
  end
  object DEntidadePesq2: TDataSource
    DataSet = QEntidadePesq2
    Left = 664
    Top = 80
  end
  object DTipoEntidade: TDataSource
    DataSet = TTipoEntidade
    Left = 144
    Top = 472
  end
  object TTipoEntidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoEntidade'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 144
    Top = 408
    object TTipoEntidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TTipoEntidadeCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TTipoEntidadeDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TTipoEntidadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TTipoEntidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TTipoEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QConEntidade2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConEntidade2'
    RemoteServer = FDMSistema.DSGerLicitacao
    BeforeGetRecords = QConEntidade2BeforeGetRecords
    Left = 848
    Top = 16
    object QConEntidade2cpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConEntidade2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConEntidade2NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConEntidade2NOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConEntidade2PESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConEntidade2INSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 25
    end
    object QConEntidade2CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConEntidade2DATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object QConEntidade2CPF: TStringField
      FieldName = 'CPF'
    end
    object QConEntidade2RG: TStringField
      FieldName = 'RG'
    end
    object QConEntidade2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConEntidade2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConEntidade2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConEntidade2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConEntidade2UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConEntidade2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConEntidade2FONE: TStringField
      FieldName = 'FONE'
      Size = 25
    end
    object QConEntidade2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QConEntidade2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConEntidade2USUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object QConEntidade2PAIS: TStringField
      FieldName = 'PAIS'
      Size = 50
    end
    object QConEntidade2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QConEntidade2FONE2: TStringField
      FieldName = 'FONE2'
      Size = 25
    end
    object QConEntidade2SITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object QConEntidade2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object QConEntidade2MAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object QConEntidade2PAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object QConEntidade2ORGAOESP: TStringField
      FieldName = 'ORGAOESP'
      Size = 100
    end
    object QConEntidade2CPFAVAL: TStringField
      FieldName = 'CPFAVAL'
      Size = 100
    end
    object QConEntidade2DATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
    end
    object QConEntidade2DTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
    end
    object QConEntidade2DTNASCCONJU: TSQLTimeStampField
      FieldName = 'DTNASCCONJU'
    end
    object QConEntidade2RENDA: TIntegerField
      FieldName = 'RENDA'
    end
    object QConEntidade2TRABALHO: TStringField
      FieldName = 'TRABALHO'
      Size = 50
    end
    object QConEntidade2CONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object QConEntidade2TRABCONJU: TStringField
      FieldName = 'TRABCONJU'
      Size = 50
    end
    object QConEntidade2FONECONJU: TStringField
      FieldName = 'FONECONJU'
      Size = 50
    end
    object QConEntidade2SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object QConEntidade2ESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 10
    end
    object QConEntidade2ESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object QConEntidade2SALCONJU: TFloatField
      FieldName = 'SALCONJU'
    end
    object QConEntidade2SALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object QConEntidade2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object QConEntidade2CODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object QConEntidade2NOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object QConEntidade2CODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConEntidade2NOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QConEntidade2CODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object QConEntidade2NOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object QConEntidade2LIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object QConEntidade2VALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
    end
    object QConEntidade2ORGAOPUB: TStringField
      FieldName = 'ORGAOPUB'
      Size = 1
    end
    object QConEntidade2CODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object QConEntidade2NOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object QConEntidade2CODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object QConEntidade2NOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object QConEntidade2ULTIMANOTA: TIntegerField
      FieldName = 'ULTIMANOTA'
    end
    object QConEntidade2DATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
    end
    object QConEntidade2CODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConEntidade2NOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object QConEntidade2CODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QConEntidade2CODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object QConEntidade2TIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object QConEntidade2DESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 50
    end
    object QConEntidade2TECNICOSEG: TStringField
      FieldName = 'TECNICOSEG'
      Size = 100
    end
    object QConEntidade2FONE3: TStringField
      FieldName = 'FONE3'
      Size = 25
    end
    object QConEntidade2FAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object QConEntidade2CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object QConEntidade2COMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 100
    end
    object QConEntidade2CODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object QConEntidade2NOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object QConEntidade2CLF: TStringField
      FieldName = 'CLF'
      Size = 100
    end
    object QConEntidade2EMAILF: TStringField
      FieldName = 'EMAILF'
      Size = 100
    end
    object QConEntidade2DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object QConEntidade2RETORNOFONE: TStringField
      FieldName = 'RETORNOFONE'
      Size = 25
    end
    object QConEntidade2ENDENTREGA: TStringField
      FieldName = 'ENDENTREGA'
      Size = 200
    end
    object QConEntidade2ENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 200
    end
    object QConEntidade2CONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 1
    end
    object QConEntidade2CODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QConEntidade2FONEEMPRESA: TStringField
      FieldName = 'FONEEMPRESA'
    end
    object QConEntidade2DATAADMIS: TDateField
      FieldName = 'DATAADMIS'
    end
    object QConEntidade2CEI: TStringField
      FieldName = 'CEI'
    end
    object QConEntidade2SEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConEntidade2QTDEETIQ: TIntegerField
      FieldName = 'QTDEETIQ'
    end
    object QConEntidade2CODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object QConEntidade2NOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 200
    end
    object QConEntidade2CADPRO: TStringField
      FieldName = 'CADPRO'
      Size = 50
    end
    object QConEntidade2SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object QConEntidade2inscrg: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscrg'
      Calculated = True
    end
  end
  object DConEntidade2: TDataSource
    DataSet = QConEntidade2
    Left = 848
    Top = 80
  end
  object DEntidadeContPesq2: TDataSource
    DataSet = QEntidadeContPesq2
    Left = 664
    Top = 224
  end
  object QEntidadeContPesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliContPesq2'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 664
    Top = 160
    object QEntidadeContPesq2ITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEntidadeContPesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QEntidadeContPesq2CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
  end
  object QEntidadeFilialPesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliFilialPesq2'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 560
    Top = 160
    object QEntidadeFilialPesq2CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QEntidadeFilialPesq2ITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QEntidadeFilialPesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object DEntidadeFilialPesq2: TDataSource
    DataSet = QEntidadeFilialPesq2
    Left = 560
    Top = 224
  end
  object QConEndEntrega: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ITEM'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConEndEntrega'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 456
    Top = 160
    object QConEndEntregaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConEndEntregaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConEndEntregaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QConEndEntregaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConEndEntregaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object QConEndEntregaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConEndEntregaFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object QConEndEntregaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object QConEndEntregaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConEndEntregaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConEndEntregaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 100
    end
    object QConEndEntregaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConEndEntregaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object QConEndEntregaNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object QConEndEntregaCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QConEndEntregaCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QConEndEntregaCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
  end
  object QConFilial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConFilial'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 368
    Top = 160
    object QConFilialCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConFilialCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConFilialITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QConFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConFilialCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object QConFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConFilialFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object QConFilialCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object QConFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConFilialPAIS: TStringField
      FieldName = 'PAIS'
      Size = 100
    end
    object QConFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object QConFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object QConFilialCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QConFilialCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QConFilialCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
  end
  object DConFilial: TDataSource
    DataSet = QConFilial
    Left = 368
    Top = 224
  end
  object DConEndEntrega: TDataSource
    DataSet = QConEndEntrega
    Left = 456
    Top = 224
  end
  object DTipoEntidadePesq: TDataSource
    DataSet = QTipoEntidadePesq
    Left = 256
    Top = 472
  end
  object QTipoEntidadePesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoEntidadePesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 256
    Top = 408
    object QTipoEntidadePesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QTipoEntidadePesqNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object DModalidade: TDataSource
    DataSet = TModalidade
    Left = 424
    Top = 472
  end
  object TModalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoLic'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 424
    Top = 408
    object TModalidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TModalidadeCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TModalidadeDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TModalidadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TModalidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TModalidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object DModalidadePesq: TDataSource
    DataSet = QModalidadePesq
    Left = 528
    Top = 472
  end
  object QModalidadePesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoLicPesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 528
    Top = 408
    object QModalidadePesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QModalidadePesqNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object DFonteLic: TDataSource
    DataSet = TFonteLic
    Left = 752
    Top = 480
  end
  object TFonteLic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DFonteLic'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 752
    Top = 416
    object TFonteLicCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFonteLicCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFonteLicDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TFonteLicSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TFonteLicOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TFonteLicNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object DFonteLicPesq: TDataSource
    DataSet = QFonteLicPesq
    Left = 832
    Top = 480
  end
  object QFonteLicPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DFonteLicPesq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 832
    Top = 416
    object QFonteLicPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QFonteLicPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object TEntidadeDoc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DEntidade
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DEntidadeDoc'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 752
    Top = 280
    object TEntidadeDocCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeDocCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeDocITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeDocTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 50
    end
    object TEntidadeDocDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TEntidadeDocLOCALARQ: TStringField
      FieldName = 'LOCALARQ'
      Size = 300
    end
    object TEntidadeDocVALIDADE: TDateField
      FieldName = 'VALIDADE'
      EditMask = '!99/99/0099;1;_'
    end
  end
  object DEntidadeDoc: TDataSource
    DataSet = TEntidadeDoc
    Left = 752
    Top = 344
  end
  object TEntidadeHist: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DEntidade
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DEntidadeHisto'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 432
    Top = 280
    object TEntidadeHistCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeHistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEntidadeHistDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object TEntidadeHistCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TEntidadeHistACAO: TStringField
      FieldName = 'ACAO'
      Size = 50
    end
    object TEntidadeHistNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Size = 50
    end
  end
  object DEntidadeHist: TDataSource
    DataSet = TEntidadeHist
    Left = 432
    Top = 344
  end
  object DProcessoLic: TDataSource
    DataSet = TProcessoLic
    Left = 48
    Top = 624
  end
  object TProcessoLic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DProcessoLic'
    RemoteServer = FDMSistema.DSGerLicitacao
    AfterScroll = TProcessoLicAfterScroll
    Left = 48
    Top = 560
    object TProcessoLicCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicCODENTIDADE: TIntegerField
      FieldName = 'CODENTIDADE'
    end
    object TProcessoLicNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Size = 100
    end
    object TProcessoLicNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object TProcessoLicDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
      EditMask = '!90:00;1;_'
    end
    object TProcessoLicFONTE: TIntegerField
      FieldName = 'FONTE'
    end
    object TProcessoLicNOMEFONTE: TStringField
      FieldName = 'NOMEFONTE'
      Size = 100
    end
    object TProcessoLicNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object TProcessoLicCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object TProcessoLicNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object TProcessoLicCODANALISTACONT: TIntegerField
      FieldName = 'CODANALISTACONT'
    end
    object TProcessoLicNOMEANALISTACONT: TStringField
      FieldName = 'NOMEANALISTACONT'
      Size = 100
    end
    object TProcessoLicCODANALISTACRED: TIntegerField
      FieldName = 'CODANALISTACRED'
    end
    object TProcessoLicNOMEANALISTACRED: TStringField
      FieldName = 'NOMEANALISTACRED'
      Size = 100
    end
    object TProcessoLicCODLEITOR: TIntegerField
      FieldName = 'CODLEITOR'
    end
    object TProcessoLicNOMELEITOR: TStringField
      FieldName = 'NOMELEITOR'
      Size = 100
    end
    object TProcessoLicVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
      currency = True
    end
    object TProcessoLicREPUBLICADO: TStringField
      FieldName = 'REPUBLICADO'
      Size = 10
    end
    object TProcessoLicINDICACAO: TStringField
      FieldName = 'INDICACAO'
      Size = 10
    end
    object TProcessoLicRECEBDEPOIS: TStringField
      FieldName = 'RECEBDEPOIS'
      Size = 10
    end
    object TProcessoLicPAGO: TStringField
      FieldName = 'PAGO'
      Size = 10
    end
    object TProcessoLicRESULTADOGERAL: TStringField
      FieldName = 'RESULTADOGERAL'
      Size = 50
    end
    object TProcessoLicMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object TProcessoLicJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 200
    end
    object TProcessoLicDETALHAMENTOFONTE: TStringField
      FieldName = 'DETALHAMENTOFONTE'
      Size = 200
    end
    object TProcessoLicSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object TProcessoLicPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object TProcessoLicDATAENTREGAENV: TDateField
      FieldName = 'DATAENTREGAENV'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORAENTREGAENV: TTimeField
      FieldName = 'HORAENTREGAENV'
      EditMask = '!90:00;1;_'
    end
    object TProcessoLicDATALIMITEENV: TDateField
      FieldName = 'DATALIMITEENV'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORALIMITEENV: TTimeField
      FieldName = 'HORALIMITEENV'
      EditMask = '!90:00;1;_'
    end
    object TProcessoLicDATAINICI: TDateField
      FieldName = 'DATAINICI'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
      EditMask = '!90:00;1;_'
    end
    object TProcessoLicDATACAD: TDateField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORACAD: TTimeField
      FieldName = 'HORACAD'
      EditMask = '!90:00;1;_'
    end
    object TProcessoLicPREGOEIRO: TStringField
      FieldName = 'PREGOEIRO'
      Size = 100
    end
    object TProcessoLicVALORMAX: TFloatField
      FieldName = 'VALORMAX'
      currency = True
    end
    object TProcessoLicVIASDAPROP: TIntegerField
      FieldName = 'VIASDAPROP'
    end
    object TProcessoLicMPRECOMAXPITEM: TStringField
      FieldName = 'MPRECOMAXPITEM'
      Size = 1
    end
    object TProcessoLicMVLRPOREXT: TStringField
      FieldName = 'MVLRPOREXT'
      Size = 1
    end
    object TProcessoLicMCODPROD: TStringField
      FieldName = 'MCODPROD'
      Size = 1
    end
    object TProcessoLicMIMPCLIENTE: TStringField
      FieldName = 'MIMPCLIENTE'
      Size = 1
    end
    object TProcessoLicMREAJUSTE: TStringField
      FieldName = 'MREAJUSTE'
      Size = 1
    end
    object TProcessoLicMENVLAUDOS: TStringField
      FieldName = 'MENVLAUDOS'
      Size = 1
    end
    object TProcessoLicMVENDAPROIBIDA: TStringField
      FieldName = 'MVENDAPROIBIDA'
      Size = 1
    end
    object TProcessoLicMINSS: TStringField
      FieldName = 'MINSS'
      Size = 1
    end
    object TProcessoLicMFGTS: TStringField
      FieldName = 'MFGTS'
      Size = 1
    end
    object TProcessoLicMPNPF: TStringField
      FieldName = 'MPNPF'
      Size = 1
    end
    object TProcessoLicCODENDENTREGA: TIntegerField
      FieldName = 'CODENDENTREGA'
    end
    object TProcessoLicCODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object TProcessoLicSITEDISPULTA: TStringField
      FieldName = 'SITEDISPULTA'
      Size = 300
    end
    object TProcessoLicOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object TProcessoLicVIGENCIACONT: TIntegerField
      FieldName = 'VIGENCIACONT'
    end
    object TProcessoLicDTVIGENCIA: TDateField
      FieldName = 'DTVIGENCIA'
    end
    object TProcessoLicTEMPOVIGENCIA: TStringField
      FieldName = 'TEMPOVIGENCIA'
      Size = 50
    end
    object TProcessoLicPRAZOPAGAMENO: TIntegerField
      FieldName = 'PRAZOPAGAMENO'
    end
    object TProcessoLicTEMPOPRAZOPAGAMENTO: TStringField
      FieldName = 'TEMPOPRAZOPAGAMENTO'
      Size = 50
    end
    object TProcessoLicDATAPRAZOPAGAMENTO: TDateField
      FieldName = 'DATAPRAZOPAGAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicTEMPOVALIDADEPROD: TStringField
      FieldName = 'TEMPOVALIDADEPROD'
      Size = 50
    end
    object TProcessoLicVALIDADEPROD: TIntegerField
      FieldName = 'VALIDADEPROD'
    end
    object TProcessoLicDATAVALIDADEPROD: TDateField
      FieldName = 'DATAVALIDADEPROD'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicVALIDADEPROP: TIntegerField
      FieldName = 'VALIDADEPROP'
    end
    object TProcessoLicVALIDADEPROPDT: TDateField
      FieldName = 'VALIDADEPROPDT'
    end
    object TProcessoLicTEMPOVALIDADEPROP: TStringField
      FieldName = 'TEMPOVALIDADEPROP'
      Size = 50
    end
    object TProcessoLicENTREGAPROD: TIntegerField
      FieldName = 'ENTREGAPROD'
    end
    object TProcessoLicDTENTREGAPROD: TDateField
      FieldName = 'DTENTREGAPROD'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicTEMPOENTREGAPROD: TStringField
      FieldName = 'TEMPOENTREGAPROD'
      Size = 50
    end
    object TProcessoLicPROCURSIGNATARIO: TStringField
      FieldName = 'PROCURSIGNATARIO'
      Size = 1
    end
    object TProcessoLicPROCURREPRESENTANTE: TStringField
      FieldName = 'PROCURREPRESENTANTE'
      Size = 1
    end
    object TProcessoLicTERMORESPON: TStringField
      FieldName = 'TERMORESPON'
      Size = 1
    end
    object TProcessoLicCONTRATOSOCIAL: TWideStringField
      FieldName = 'CONTRATOSOCIAL'
      FixedChar = True
    end
    object TProcessoLicDETALHESFONTE: TStringField
      FieldName = 'DETALHESFONTE'
      Size = 300
    end
    object TProcessoLicPROCURRESPONSA: TStringField
      FieldName = 'PROCURRESPONSA'
      Size = 1
    end
    object TProcessoLicDECLARACAOPREREQ: TStringField
      FieldName = 'DECLARACAOPREREQ'
      Size = 1
    end
    object TProcessoLicOBSFACEPROP: TStringField
      FieldName = 'OBSFACEPROP'
      Size = 400
    end
    object TProcessoLicDECLARACAOITEM: TStringField
      FieldName = 'DECLARACAOITEM'
      Size = 1
    end
    object TProcessoLicNOMEDECLARACAOITEM: TStringField
      FieldName = 'NOMEDECLARACAOITEM'
      Size = 200
    end
    object TProcessoLicHCADORGAOPUBLICO: TStringField
      FieldName = 'HCADORGAOPUBLICO'
      Size = 1
    end
    object TProcessoLicHIDENTIDADESOCIO: TStringField
      FieldName = 'HIDENTIDADESOCIO'
      Size = 1
    end
    object TProcessoLicHCNPJ: TStringField
      FieldName = 'HCNPJ'
      Size = 1
    end
    object TProcessoLicHCICAD: TStringField
      FieldName = 'HCICAD'
      Size = 1
    end
    object TProcessoLicHSICAF: TStringField
      FieldName = 'HSICAF'
      Size = 1
    end
    object TProcessoLicHCONTSOCIAL: TStringField
      FieldName = 'HCONTSOCIAL'
      Size = 1
    end
    object TProcessoLicHCERTFEDERAL: TStringField
      FieldName = 'HCERTFEDERAL'
      Size = 1
    end
    object TProcessoLicHCERTESTADUAL: TStringField
      FieldName = 'HCERTESTADUAL'
      Size = 1
    end
    object TProcessoLicHCERTMUNICIPAL: TStringField
      FieldName = 'HCERTMUNICIPAL'
      Size = 1
    end
    object TProcessoLicHINSS: TStringField
      FieldName = 'HINSS'
      Size = 1
    end
    object TProcessoLicHFGTS: TStringField
      FieldName = 'HFGTS'
      Size = 1
    end
    object TProcessoLicHBALANCOPATRIMONIAL: TStringField
      FieldName = 'HBALANCOPATRIMONIAL'
      Size = 1
    end
    object TProcessoLicHFALENCIA: TStringField
      FieldName = 'HFALENCIA'
      Size = 1
    end
    object TProcessoLicHINDICESOL: TStringField
      FieldName = 'HINDICESOL'
      Size = 1
    end
    object TProcessoLicHCERTJUNTACOMERC: TStringField
      FieldName = 'HCERTJUNTACOMERC'
      Size = 1
    end
    object TProcessoLicHATESTADOCAPACIDADE: TStringField
      FieldName = 'HATESTADOCAPACIDADE'
      Size = 1
    end
    object TProcessoLicHLICENCASANITARIA: TStringField
      FieldName = 'HLICENCASANITARIA'
      Size = 1
    end
    object TProcessoLicHINCEST: TStringField
      FieldName = 'HINCEST'
      Size = 1
    end
    object TProcessoLicHINSCMUNIC: TStringField
      FieldName = 'HINSCMUNIC'
      Size = 1
    end
    object TProcessoLicHALVARA: TStringField
      FieldName = 'HALVARA'
      Size = 1
    end
    object TProcessoLicHAUTFUNCNORMAL: TStringField
      FieldName = 'HAUTFUNCNORMAL'
      Size = 1
    end
    object TProcessoLicHAUTFUNCESPECIAL: TStringField
      FieldName = 'HAUTFUNCESPECIAL'
      Size = 1
    end
    object TProcessoLicHCRF: TStringField
      FieldName = 'HCRF'
      Size = 1
    end
    object TProcessoLicHDECINEXISTENCIA: TStringField
      FieldName = 'HDECINEXISTENCIA'
      Size = 1
    end
    object TProcessoLicHDECMENOR: TStringField
      FieldName = 'HDECMENOR'
      Size = 1
    end
    object TProcessoLicHDECMICRO: TStringField
      FieldName = 'HDECMICRO'
      Size = 1
    end
    object TProcessoLicHATESCAPACIDADE: TStringField
      FieldName = 'HATESCAPACIDADE'
      Size = 1
    end
    object TProcessoLicHDECITEM1: TStringField
      FieldName = 'HDECITEM1'
      Size = 1
    end
    object TProcessoLicHNOMEITEM1: TStringField
      FieldName = 'HNOMEITEM1'
      Size = 200
    end
    object TProcessoLicHDECITEM2: TStringField
      FieldName = 'HDECITEM2'
      Size = 1
    end
    object TProcessoLicHNOMEITEM2: TStringField
      FieldName = 'HNOMEITEM2'
      Size = 200
    end
    object TProcessoLicHDECITEM3: TStringField
      FieldName = 'HDECITEM3'
      Size = 1
    end
    object TProcessoLicHNOMEITEM3: TStringField
      FieldName = 'HNOMEITEM3'
      Size = 200
    end
    object TProcessoLicSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object TProcessoLicCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object TProcessoLicNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object TProcessoLicCODMODALIDADE: TIntegerField
      FieldName = 'CODMODALIDADE'
    end
    object TProcessoLicNOMEMODALIDADE: TStringField
      FieldName = 'NOMEMODALIDADE'
      Size = 100
    end
    object TProcessoLicCODTIPOFONTE: TIntegerField
      FieldName = 'CODTIPOFONTE'
    end
    object TProcessoLicNOMETIPOFONTE: TStringField
      FieldName = 'NOMETIPOFONTE'
      Size = 100
    end
    object TProcessoLicCODCONTATOENT: TIntegerField
      FieldName = 'CODCONTATOENT'
    end
    object TProcessoLicNOMECONTATOENT: TStringField
      FieldName = 'NOMECONTATOENT'
      Size = 100
    end
    object TProcessoLicCODENDENTREGAENT: TIntegerField
      FieldName = 'CODENDENTREGAENT'
    end
    object TProcessoLicNOMEENDENTREGAENT: TStringField
      FieldName = 'NOMEENDENTREGAENT'
      Size = 100
    end
    object TProcessoLicOBSCREDENCIAMENTO: TStringField
      FieldName = 'OBSCREDENCIAMENTO'
      Size = 200
    end
    object TProcessoLicPROCURNOMEREPRE: TStringField
      FieldName = 'PROCURNOMEREPRE'
      Size = 100
    end
    object TProcessoLicDECLARACAONOMEITEM: TStringField
      FieldName = 'DECLARACAONOMEITEM'
      Size = 100
    end
    object TProcessoLicVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
      currency = True
    end
    object TProcessoLicNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object TProcessoLicVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object TProcessoLicCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object TProcessoLicNOMECONDPAG: TStringField
      FieldName = 'NOMECONDPAG'
      Size = 100
    end
    object TProcessoLicCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object TProcessoLicNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 100
    end
    object TProcessoLicCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      EditFormat = '0.00%'
    end
    object TProcessoLicVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object TProcessoLicCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object TProcessoLicDATAALT: TDateField
      FieldName = 'DATAALT'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicSITENVIO: TStringField
      FieldName = 'SITENVIO'
      Size = 50
    end
    object TProcessoLicDTENVIO: TDateField
      FieldName = 'DTENVIO'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicDTINICIOCONT: TDateField
      FieldName = 'DTINICIOCONT'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object TProcessoLicHORAENCERRAMENTO: TTimeField
      FieldName = 'HORAENCERRAMENTO'
      EditMask = '!90:00;1;_'
    end
  end
  object DProcessoLicArq: TDataSource
    DataSet = TProcessoLicArq
    Left = 160
    Top = 624
  end
  object TProcessoLicArq: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DProcessoLiqArq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 160
    Top = 560
    object TProcessoLicArqPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicArqCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicArqCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicArqCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicArqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicArqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TProcessoLicArqCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 1000
    end
    object TProcessoLicArqOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TProcessoLicArqVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object TProcessoLicArqTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 100
    end
  end
  object DProcessoLicCont: TDataSource
    DataSet = TProcessoLicCont
    Left = 264
    Top = 624
  end
  object TProcessoLicCont: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DProcessoLicCont'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 264
    Top = 560
    object TProcessoLicContPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicContCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicContCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicContITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicContCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicContDATA: TDateField
      FieldName = 'DATA'
    end
    object TProcessoLicContHORA: TTimeField
      FieldName = 'HORA'
    end
    object TProcessoLicContDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      OnGetText = TProcessoLicContDESCRICAOGetText
      BlobType = ftMemo
      Size = 1
    end
    object TProcessoLicContOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object TProcessoLicContUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object TProcessoLicContCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
  end
  object DConProcessoLic: TDataSource
    DataSet = QConProcessoLic
    Left = 720
    Top = 624
  end
  object QConProcessoLic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConProcessoLic'
    RemoteServer = FDMSistema.DSGerLicitacao
    BeforeGetRecords = QConProcessoLicBeforeGetRecords
    Left = 720
    Top = 560
    object QConProcessoLicCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QConProcessoLicCODENTIDADE: TIntegerField
      FieldName = 'CODENTIDADE'
    end
    object QConProcessoLicNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Size = 100
    end
    object QConProcessoLicNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object QConProcessoLicDATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcessoLicDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
    end
    object QConProcessoLicHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
    end
    object QConProcessoLicFONTE: TIntegerField
      FieldName = 'FONTE'
    end
    object QConProcessoLicNOMEFONTE: TStringField
      FieldName = 'NOMEFONTE'
      Size = 100
    end
    object QConProcessoLicNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object QConProcessoLicCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConProcessoLicNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object QConProcessoLicCODANALISTACONT: TIntegerField
      FieldName = 'CODANALISTACONT'
    end
    object QConProcessoLicNOMEANALISTACONT: TStringField
      FieldName = 'NOMEANALISTACONT'
      Size = 100
    end
    object QConProcessoLicCODANALISTACRED: TIntegerField
      FieldName = 'CODANALISTACRED'
    end
    object QConProcessoLicNOMEANALISTACRED: TStringField
      FieldName = 'NOMEANALISTACRED'
      Size = 100
    end
    object QConProcessoLicCODLEITOR: TIntegerField
      FieldName = 'CODLEITOR'
    end
    object QConProcessoLicNOMELEITOR: TStringField
      FieldName = 'NOMELEITOR'
      Size = 100
    end
    object QConProcessoLicVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
      currency = True
    end
    object QConProcessoLicREPUBLICADO: TStringField
      FieldName = 'REPUBLICADO'
      Size = 10
    end
    object QConProcessoLicINDICACAO: TStringField
      FieldName = 'INDICACAO'
      Size = 10
    end
    object QConProcessoLicRECEBDEPOIS: TStringField
      FieldName = 'RECEBDEPOIS'
      Size = 10
    end
    object QConProcessoLicPAGO: TStringField
      FieldName = 'PAGO'
      Size = 10
    end
    object QConProcessoLicRESULTADOGERAL: TStringField
      FieldName = 'RESULTADOGERAL'
      Size = 50
    end
    object QConProcessoLicMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object QConProcessoLicJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 200
    end
    object QConProcessoLicDETALHAMENTOFONTE: TStringField
      FieldName = 'DETALHAMENTOFONTE'
      Size = 200
    end
    object QConProcessoLicSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConProcessoLicPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConProcessoLicDATAENTREGAENV: TDateField
      FieldName = 'DATAENTREGAENV'
    end
    object QConProcessoLicHORAENTREGAENV: TTimeField
      FieldName = 'HORAENTREGAENV'
    end
    object QConProcessoLicDATALIMITEENV: TDateField
      FieldName = 'DATALIMITEENV'
    end
    object QConProcessoLicHORALIMITEENV: TTimeField
      FieldName = 'HORALIMITEENV'
    end
    object QConProcessoLicDATAINICI: TDateField
      FieldName = 'DATAINICI'
    end
    object QConProcessoLicHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object QConProcessoLicDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConProcessoLicHORACAD: TTimeField
      FieldName = 'HORACAD'
    end
    object QConProcessoLicPREGOEIRO: TStringField
      FieldName = 'PREGOEIRO'
      Size = 100
    end
    object QConProcessoLicVALORMAX: TFloatField
      FieldName = 'VALORMAX'
      currency = True
    end
    object QConProcessoLicVIASDAPROP: TIntegerField
      FieldName = 'VIASDAPROP'
    end
    object QConProcessoLicMPRECOMAXPITEM: TStringField
      FieldName = 'MPRECOMAXPITEM'
      Size = 1
    end
    object QConProcessoLicMVLRPOREXT: TStringField
      FieldName = 'MVLRPOREXT'
      Size = 1
    end
    object QConProcessoLicMCODPROD: TStringField
      FieldName = 'MCODPROD'
      Size = 1
    end
    object QConProcessoLicMIMPCLIENTE: TStringField
      FieldName = 'MIMPCLIENTE'
      Size = 1
    end
    object QConProcessoLicMREAJUSTE: TStringField
      FieldName = 'MREAJUSTE'
      Size = 1
    end
    object QConProcessoLicMENVLAUDOS: TStringField
      FieldName = 'MENVLAUDOS'
      Size = 1
    end
    object QConProcessoLicMVENDAPROIBIDA: TStringField
      FieldName = 'MVENDAPROIBIDA'
      Size = 1
    end
    object QConProcessoLicMINSS: TStringField
      FieldName = 'MINSS'
      Size = 1
    end
    object QConProcessoLicMFGTS: TStringField
      FieldName = 'MFGTS'
      Size = 1
    end
    object QConProcessoLicMPNPF: TStringField
      FieldName = 'MPNPF'
      Size = 1
    end
    object QConProcessoLicCODENDENTREGA: TIntegerField
      FieldName = 'CODENDENTREGA'
    end
    object QConProcessoLicCODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object QConProcessoLicSITEDISPULTA: TStringField
      FieldName = 'SITEDISPULTA'
      Size = 300
    end
    object QConProcessoLicOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object QConProcessoLicVIGENCIACONT: TIntegerField
      FieldName = 'VIGENCIACONT'
    end
    object QConProcessoLicDTVIGENCIA: TDateField
      FieldName = 'DTVIGENCIA'
    end
    object QConProcessoLicTEMPOVIGENCIA: TStringField
      FieldName = 'TEMPOVIGENCIA'
      Size = 50
    end
    object QConProcessoLicPRAZOPAGAMENO: TIntegerField
      FieldName = 'PRAZOPAGAMENO'
    end
    object QConProcessoLicTEMPOPRAZOPAGAMENTO: TStringField
      FieldName = 'TEMPOPRAZOPAGAMENTO'
      Size = 50
    end
    object QConProcessoLicDATAPRAZOPAGAMENTO: TDateField
      FieldName = 'DATAPRAZOPAGAMENTO'
    end
    object QConProcessoLicTEMPOVALIDADEPROD: TStringField
      FieldName = 'TEMPOVALIDADEPROD'
      Size = 50
    end
    object QConProcessoLicVALIDADEPROD: TIntegerField
      FieldName = 'VALIDADEPROD'
    end
    object QConProcessoLicDATAVALIDADEPROD: TDateField
      FieldName = 'DATAVALIDADEPROD'
    end
    object QConProcessoLicVALIDADEPROP: TIntegerField
      FieldName = 'VALIDADEPROP'
    end
    object QConProcessoLicVALIDADEPROPDT: TDateField
      FieldName = 'VALIDADEPROPDT'
    end
    object QConProcessoLicTEMPOVALIDADEPROP: TStringField
      FieldName = 'TEMPOVALIDADEPROP'
      Size = 50
    end
    object QConProcessoLicENTREGAPROD: TIntegerField
      FieldName = 'ENTREGAPROD'
    end
    object QConProcessoLicDTENTREGAPROD: TDateField
      FieldName = 'DTENTREGAPROD'
    end
    object QConProcessoLicTEMPOENTREGAPROD: TStringField
      FieldName = 'TEMPOENTREGAPROD'
      Size = 50
    end
    object QConProcessoLicPROCURSIGNATARIO: TStringField
      FieldName = 'PROCURSIGNATARIO'
      Size = 1
    end
    object QConProcessoLicPROCURREPRESENTANTE: TStringField
      FieldName = 'PROCURREPRESENTANTE'
      Size = 1
    end
    object QConProcessoLicTERMORESPON: TStringField
      FieldName = 'TERMORESPON'
      Size = 1
    end
    object QConProcessoLicCONTRATOSOCIAL: TWideStringField
      FieldName = 'CONTRATOSOCIAL'
      FixedChar = True
    end
    object QConProcessoLicDETALHESFONTE: TStringField
      FieldName = 'DETALHESFONTE'
      Size = 300
    end
    object QConProcessoLicPROCURRESPONSA: TStringField
      FieldName = 'PROCURRESPONSA'
      Size = 1
    end
    object QConProcessoLicDECLARACAOPREREQ: TStringField
      FieldName = 'DECLARACAOPREREQ'
      Size = 1
    end
    object QConProcessoLicOBSFACEPROP: TStringField
      FieldName = 'OBSFACEPROP'
      Size = 400
    end
    object QConProcessoLicDECLARACAOITEM: TStringField
      FieldName = 'DECLARACAOITEM'
      Size = 1
    end
    object QConProcessoLicNOMEDECLARACAOITEM: TStringField
      FieldName = 'NOMEDECLARACAOITEM'
      Size = 200
    end
    object QConProcessoLicHCADORGAOPUBLICO: TStringField
      FieldName = 'HCADORGAOPUBLICO'
      Size = 1
    end
    object QConProcessoLicHIDENTIDADESOCIO: TStringField
      FieldName = 'HIDENTIDADESOCIO'
      Size = 1
    end
    object QConProcessoLicHCNPJ: TStringField
      FieldName = 'HCNPJ'
      Size = 1
    end
    object QConProcessoLicHCICAD: TStringField
      FieldName = 'HCICAD'
      Size = 1
    end
    object QConProcessoLicHSICAF: TStringField
      FieldName = 'HSICAF'
      Size = 1
    end
    object QConProcessoLicHCONTSOCIAL: TStringField
      FieldName = 'HCONTSOCIAL'
      Size = 1
    end
    object QConProcessoLicHCERTFEDERAL: TStringField
      FieldName = 'HCERTFEDERAL'
      Size = 1
    end
    object QConProcessoLicHCERTESTADUAL: TStringField
      FieldName = 'HCERTESTADUAL'
      Size = 1
    end
    object QConProcessoLicHCERTMUNICIPAL: TStringField
      FieldName = 'HCERTMUNICIPAL'
      Size = 1
    end
    object QConProcessoLicHINSS: TStringField
      FieldName = 'HINSS'
      Size = 1
    end
    object QConProcessoLicHFGTS: TStringField
      FieldName = 'HFGTS'
      Size = 1
    end
    object QConProcessoLicHBALANCOPATRIMONIAL: TStringField
      FieldName = 'HBALANCOPATRIMONIAL'
      Size = 1
    end
    object QConProcessoLicHFALENCIA: TStringField
      FieldName = 'HFALENCIA'
      Size = 1
    end
    object QConProcessoLicHINDICESOL: TStringField
      FieldName = 'HINDICESOL'
      Size = 1
    end
    object QConProcessoLicHCERTJUNTACOMERC: TStringField
      FieldName = 'HCERTJUNTACOMERC'
      Size = 1
    end
    object QConProcessoLicHATESTADOCAPACIDADE: TStringField
      FieldName = 'HATESTADOCAPACIDADE'
      Size = 1
    end
    object QConProcessoLicHLICENCASANITARIA: TStringField
      FieldName = 'HLICENCASANITARIA'
      Size = 1
    end
    object QConProcessoLicHINCEST: TStringField
      FieldName = 'HINCEST'
      Size = 1
    end
    object QConProcessoLicHINSCMUNIC: TStringField
      FieldName = 'HINSCMUNIC'
      Size = 1
    end
    object QConProcessoLicHALVARA: TStringField
      FieldName = 'HALVARA'
      Size = 1
    end
    object QConProcessoLicHAUTFUNCNORMAL: TStringField
      FieldName = 'HAUTFUNCNORMAL'
      Size = 1
    end
    object QConProcessoLicHAUTFUNCESPECIAL: TStringField
      FieldName = 'HAUTFUNCESPECIAL'
      Size = 1
    end
    object QConProcessoLicHCRF: TStringField
      FieldName = 'HCRF'
      Size = 1
    end
    object QConProcessoLicHDECINEXISTENCIA: TStringField
      FieldName = 'HDECINEXISTENCIA'
      Size = 1
    end
    object QConProcessoLicHDECMENOR: TStringField
      FieldName = 'HDECMENOR'
      Size = 1
    end
    object QConProcessoLicHDECMICRO: TStringField
      FieldName = 'HDECMICRO'
      Size = 1
    end
    object QConProcessoLicHATESCAPACIDADE: TStringField
      FieldName = 'HATESCAPACIDADE'
      Size = 1
    end
    object QConProcessoLicHDECITEM1: TStringField
      FieldName = 'HDECITEM1'
      Size = 1
    end
    object QConProcessoLicHNOMEITEM1: TStringField
      FieldName = 'HNOMEITEM1'
      Size = 200
    end
    object QConProcessoLicHDECITEM2: TStringField
      FieldName = 'HDECITEM2'
      Size = 1
    end
    object QConProcessoLicHNOMEITEM2: TStringField
      FieldName = 'HNOMEITEM2'
      Size = 200
    end
    object QConProcessoLicHDECITEM3: TStringField
      FieldName = 'HDECITEM3'
      Size = 1
    end
    object QConProcessoLicHNOMEITEM3: TStringField
      FieldName = 'HNOMEITEM3'
      Size = 200
    end
    object QConProcessoLicSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConProcessoLicCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object QConProcessoLicNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object QConProcessoLicCODMODALIDADE: TIntegerField
      FieldName = 'CODMODALIDADE'
    end
    object QConProcessoLicNOMEMODALIDADE: TStringField
      FieldName = 'NOMEMODALIDADE'
      Size = 100
    end
    object QConProcessoLicCODTIPOFONTE: TIntegerField
      FieldName = 'CODTIPOFONTE'
    end
    object QConProcessoLicNOMETIPOFONTE: TStringField
      FieldName = 'NOMETIPOFONTE'
      Size = 100
    end
    object QConProcessoLicCODCONTATOENT: TIntegerField
      FieldName = 'CODCONTATOENT'
    end
    object QConProcessoLicNOMECONTATOENT: TStringField
      FieldName = 'NOMECONTATOENT'
      Size = 100
    end
    object QConProcessoLicCODENDENTREGAENT: TIntegerField
      FieldName = 'CODENDENTREGAENT'
    end
    object QConProcessoLicNOMEENDENTREGAENT: TStringField
      FieldName = 'NOMEENDENTREGAENT'
      Size = 100
    end
    object QConProcessoLicOBSCREDENCIAMENTO: TStringField
      FieldName = 'OBSCREDENCIAMENTO'
      Size = 200
    end
    object QConProcessoLicPROCURNOMEREPRE: TStringField
      FieldName = 'PROCURNOMEREPRE'
      Size = 100
    end
    object QConProcessoLicDECLARACAONOMEITEM: TStringField
      FieldName = 'DECLARACAONOMEITEM'
      Size = 100
    end
    object QConProcessoLicVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
      currency = True
    end
    object QConProcessoLicNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConProcessoLicVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object QConProcessoLicCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object QConProcessoLicNOMECONDPAG: TStringField
      FieldName = 'NOMECONDPAG'
      Size = 100
    end
    object QConProcessoLicCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConProcessoLicNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 100
    end
    object QConProcessoLicCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object QConProcessoLicVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object QConProcessoLicCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object QConProcessoLicDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object QConProcessoLicSITENVIO: TStringField
      FieldName = 'SITENVIO'
      Size = 50
    end
    object QConProcessoLicDTENVIO: TDateField
      FieldName = 'DTENVIO'
    end
    object QConProcessoLicDTINICIOCONT: TDateField
      FieldName = 'DTINICIOCONT'
    end
    object QConProcessoLicDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object QConProcessoLicHORAENCERRAMENTO: TTimeField
      FieldName = 'HORAENCERRAMENTO'
    end
  end
  object DConProcessoLic2: TDataSource
    DataSet = QConProcessoLic2
    Left = 824
    Top = 624
  end
  object QConProcessoLic2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConProcessoLic2'
    RemoteServer = FDMSistema.DSGerLicitacao
    AfterScroll = QConProcessoLic2AfterScroll
    Left = 824
    Top = 560
    object QConProcessoLic2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConProcessoLic2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConProcessoLic2CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConProcessoLic2CODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object QConProcessoLic2CODENTIDADE: TIntegerField
      FieldName = 'CODENTIDADE'
    end
    object QConProcessoLic2NOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Size = 100
    end
    object QConProcessoLic2NOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object QConProcessoLic2DATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcessoLic2DATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
    end
    object QConProcessoLic2HORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
    end
    object QConProcessoLic2FONTE: TIntegerField
      FieldName = 'FONTE'
    end
    object QConProcessoLic2NOMEFONTE: TStringField
      FieldName = 'NOMEFONTE'
      Size = 100
    end
    object QConProcessoLic2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object QConProcessoLic2CODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConProcessoLic2NOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object QConProcessoLic2CODANALISTACONT: TIntegerField
      FieldName = 'CODANALISTACONT'
    end
    object QConProcessoLic2NOMEANALISTACONT: TStringField
      FieldName = 'NOMEANALISTACONT'
      Size = 100
    end
    object QConProcessoLic2CODANALISTACRED: TIntegerField
      FieldName = 'CODANALISTACRED'
    end
    object QConProcessoLic2NOMEANALISTACRED: TStringField
      FieldName = 'NOMEANALISTACRED'
      Size = 100
    end
    object QConProcessoLic2CODLEITOR: TIntegerField
      FieldName = 'CODLEITOR'
    end
    object QConProcessoLic2NOMELEITOR: TStringField
      FieldName = 'NOMELEITOR'
      Size = 100
    end
    object QConProcessoLic2VALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
    end
    object QConProcessoLic2REPUBLICADO: TStringField
      FieldName = 'REPUBLICADO'
      Size = 10
    end
    object QConProcessoLic2INDICACAO: TStringField
      FieldName = 'INDICACAO'
      Size = 10
    end
    object QConProcessoLic2RECEBDEPOIS: TStringField
      FieldName = 'RECEBDEPOIS'
      Size = 10
    end
    object QConProcessoLic2PAGO: TStringField
      FieldName = 'PAGO'
      Size = 10
    end
    object QConProcessoLic2RESULTADOGERAL: TStringField
      FieldName = 'RESULTADOGERAL'
      Size = 50
    end
    object QConProcessoLic2MOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object QConProcessoLic2JUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 200
    end
    object QConProcessoLic2DETALHAMENTOFONTE: TStringField
      FieldName = 'DETALHAMENTOFONTE'
      Size = 200
    end
    object QConProcessoLic2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConProcessoLic2PRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConProcessoLic2DATAENTREGAENV: TDateField
      FieldName = 'DATAENTREGAENV'
    end
    object QConProcessoLic2HORAENTREGAENV: TTimeField
      FieldName = 'HORAENTREGAENV'
    end
    object QConProcessoLic2DATALIMITEENV: TDateField
      FieldName = 'DATALIMITEENV'
    end
    object QConProcessoLic2HORALIMITEENV: TTimeField
      FieldName = 'HORALIMITEENV'
    end
    object QConProcessoLic2DATAINICI: TDateField
      FieldName = 'DATAINICI'
    end
    object QConProcessoLic2HORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object QConProcessoLic2DATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConProcessoLic2HORACAD: TTimeField
      FieldName = 'HORACAD'
    end
    object QConProcessoLic2PREGOEIRO: TStringField
      FieldName = 'PREGOEIRO'
      Size = 100
    end
    object QConProcessoLic2VALORMAX: TFloatField
      FieldName = 'VALORMAX'
      currency = True
    end
    object QConProcessoLic2VIASDAPROP: TIntegerField
      FieldName = 'VIASDAPROP'
    end
    object QConProcessoLic2MPRECOMAXPITEM: TStringField
      FieldName = 'MPRECOMAXPITEM'
      Size = 1
    end
    object QConProcessoLic2MVLRPOREXT: TStringField
      FieldName = 'MVLRPOREXT'
      Size = 1
    end
    object QConProcessoLic2MCODPROD: TStringField
      FieldName = 'MCODPROD'
      Size = 1
    end
    object QConProcessoLic2MIMPCLIENTE: TStringField
      FieldName = 'MIMPCLIENTE'
      Size = 1
    end
    object QConProcessoLic2MREAJUSTE: TStringField
      FieldName = 'MREAJUSTE'
      Size = 1
    end
    object QConProcessoLic2MENVLAUDOS: TStringField
      FieldName = 'MENVLAUDOS'
      Size = 1
    end
    object QConProcessoLic2MVENDAPROIBIDA: TStringField
      FieldName = 'MVENDAPROIBIDA'
      Size = 1
    end
    object QConProcessoLic2MINSS: TStringField
      FieldName = 'MINSS'
      Size = 1
    end
    object QConProcessoLic2MFGTS: TStringField
      FieldName = 'MFGTS'
      Size = 1
    end
    object QConProcessoLic2MPNPF: TStringField
      FieldName = 'MPNPF'
      Size = 1
    end
    object QConProcessoLic2CODENDENTREGA: TIntegerField
      FieldName = 'CODENDENTREGA'
    end
    object QConProcessoLic2CODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object QConProcessoLic2SITEDISPULTA: TStringField
      FieldName = 'SITEDISPULTA'
      Size = 300
    end
    object QConProcessoLic2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object QConProcessoLic2VIGENCIACONT: TIntegerField
      FieldName = 'VIGENCIACONT'
    end
    object QConProcessoLic2DTVIGENCIA: TDateField
      FieldName = 'DTVIGENCIA'
    end
    object QConProcessoLic2TEMPOVIGENCIA: TStringField
      FieldName = 'TEMPOVIGENCIA'
      Size = 50
    end
    object QConProcessoLic2PRAZOPAGAMENO: TIntegerField
      FieldName = 'PRAZOPAGAMENO'
    end
    object QConProcessoLic2TEMPOPRAZOPAGAMENTO: TStringField
      FieldName = 'TEMPOPRAZOPAGAMENTO'
      Size = 50
    end
    object QConProcessoLic2DATAPRAZOPAGAMENTO: TDateField
      FieldName = 'DATAPRAZOPAGAMENTO'
    end
    object QConProcessoLic2TEMPOVALIDADEPROD: TStringField
      FieldName = 'TEMPOVALIDADEPROD'
      Size = 50
    end
    object QConProcessoLic2VALIDADEPROD: TIntegerField
      FieldName = 'VALIDADEPROD'
    end
    object QConProcessoLic2DATAVALIDADEPROD: TDateField
      FieldName = 'DATAVALIDADEPROD'
    end
    object QConProcessoLic2VALIDADEPROP: TIntegerField
      FieldName = 'VALIDADEPROP'
    end
    object QConProcessoLic2VALIDADEPROPDT: TDateField
      FieldName = 'VALIDADEPROPDT'
    end
    object QConProcessoLic2TEMPOVALIDADEPROP: TStringField
      FieldName = 'TEMPOVALIDADEPROP'
      Size = 50
    end
    object QConProcessoLic2ENTREGAPROD: TIntegerField
      FieldName = 'ENTREGAPROD'
    end
    object QConProcessoLic2DTENTREGAPROD: TDateField
      FieldName = 'DTENTREGAPROD'
    end
    object QConProcessoLic2TEMPOENTREGAPROD: TStringField
      FieldName = 'TEMPOENTREGAPROD'
      Size = 50
    end
    object QConProcessoLic2PROCURSIGNATARIO: TStringField
      FieldName = 'PROCURSIGNATARIO'
      Size = 1
    end
    object QConProcessoLic2PROCURREPRESENTANTE: TStringField
      FieldName = 'PROCURREPRESENTANTE'
      Size = 1
    end
    object QConProcessoLic2TERMORESPON: TStringField
      FieldName = 'TERMORESPON'
      Size = 1
    end
    object QConProcessoLic2CONTRATOSOCIAL: TWideStringField
      FieldName = 'CONTRATOSOCIAL'
      FixedChar = True
    end
    object QConProcessoLic2DETALHESFONTE: TStringField
      FieldName = 'DETALHESFONTE'
      Size = 300
    end
    object QConProcessoLic2PROCURRESPONSA: TStringField
      FieldName = 'PROCURRESPONSA'
      Size = 1
    end
    object QConProcessoLic2DECLARACAOPREREQ: TStringField
      FieldName = 'DECLARACAOPREREQ'
      Size = 1
    end
    object QConProcessoLic2OBSFACEPROP: TStringField
      FieldName = 'OBSFACEPROP'
      Size = 400
    end
    object QConProcessoLic2DECLARACAOITEM: TStringField
      FieldName = 'DECLARACAOITEM'
      Size = 1
    end
    object QConProcessoLic2NOMEDECLARACAOITEM: TStringField
      FieldName = 'NOMEDECLARACAOITEM'
      Size = 200
    end
    object QConProcessoLic2HCADORGAOPUBLICO: TStringField
      FieldName = 'HCADORGAOPUBLICO'
      Size = 1
    end
    object QConProcessoLic2HIDENTIDADESOCIO: TStringField
      FieldName = 'HIDENTIDADESOCIO'
      Size = 1
    end
    object QConProcessoLic2HCNPJ: TStringField
      FieldName = 'HCNPJ'
      Size = 1
    end
    object QConProcessoLic2HCICAD: TStringField
      FieldName = 'HCICAD'
      Size = 1
    end
    object QConProcessoLic2HSICAF: TStringField
      FieldName = 'HSICAF'
      Size = 1
    end
    object QConProcessoLic2HCONTSOCIAL: TStringField
      FieldName = 'HCONTSOCIAL'
      Size = 1
    end
    object QConProcessoLic2HCERTFEDERAL: TStringField
      FieldName = 'HCERTFEDERAL'
      Size = 1
    end
    object QConProcessoLic2HCERTESTADUAL: TStringField
      FieldName = 'HCERTESTADUAL'
      Size = 1
    end
    object QConProcessoLic2HCERTMUNICIPAL: TStringField
      FieldName = 'HCERTMUNICIPAL'
      Size = 1
    end
    object QConProcessoLic2HINSS: TStringField
      FieldName = 'HINSS'
      Size = 1
    end
    object QConProcessoLic2HFGTS: TStringField
      FieldName = 'HFGTS'
      Size = 1
    end
    object QConProcessoLic2HBALANCOPATRIMONIAL: TStringField
      FieldName = 'HBALANCOPATRIMONIAL'
      Size = 1
    end
    object QConProcessoLic2HFALENCIA: TStringField
      FieldName = 'HFALENCIA'
      Size = 1
    end
    object QConProcessoLic2HINDICESOL: TStringField
      FieldName = 'HINDICESOL'
      Size = 1
    end
    object QConProcessoLic2HCERTJUNTACOMERC: TStringField
      FieldName = 'HCERTJUNTACOMERC'
      Size = 1
    end
    object QConProcessoLic2HATESTADOCAPACIDADE: TStringField
      FieldName = 'HATESTADOCAPACIDADE'
      Size = 1
    end
    object QConProcessoLic2HLICENCASANITARIA: TStringField
      FieldName = 'HLICENCASANITARIA'
      Size = 1
    end
    object QConProcessoLic2HINCEST: TStringField
      FieldName = 'HINCEST'
      Size = 1
    end
    object QConProcessoLic2HINSCMUNIC: TStringField
      FieldName = 'HINSCMUNIC'
      Size = 1
    end
    object QConProcessoLic2HALVARA: TStringField
      FieldName = 'HALVARA'
      Size = 1
    end
    object QConProcessoLic2HAUTFUNCNORMAL: TStringField
      FieldName = 'HAUTFUNCNORMAL'
      Size = 1
    end
    object QConProcessoLic2HAUTFUNCESPECIAL: TStringField
      FieldName = 'HAUTFUNCESPECIAL'
      Size = 1
    end
    object QConProcessoLic2HCRF: TStringField
      FieldName = 'HCRF'
      Size = 1
    end
    object QConProcessoLic2HDECINEXISTENCIA: TStringField
      FieldName = 'HDECINEXISTENCIA'
      Size = 1
    end
    object QConProcessoLic2HDECMENOR: TStringField
      FieldName = 'HDECMENOR'
      Size = 1
    end
    object QConProcessoLic2HDECMICRO: TStringField
      FieldName = 'HDECMICRO'
      Size = 1
    end
    object QConProcessoLic2HATESCAPACIDADE: TStringField
      FieldName = 'HATESCAPACIDADE'
      Size = 1
    end
    object QConProcessoLic2HDECITEM1: TStringField
      FieldName = 'HDECITEM1'
      Size = 1
    end
    object QConProcessoLic2HNOMEITEM1: TStringField
      FieldName = 'HNOMEITEM1'
      Size = 200
    end
    object QConProcessoLic2HDECITEM2: TStringField
      FieldName = 'HDECITEM2'
      Size = 1
    end
    object QConProcessoLic2HNOMEITEM2: TStringField
      FieldName = 'HNOMEITEM2'
      Size = 200
    end
    object QConProcessoLic2HDECITEM3: TStringField
      FieldName = 'HDECITEM3'
      Size = 1
    end
    object QConProcessoLic2HNOMEITEM3: TStringField
      FieldName = 'HNOMEITEM3'
      Size = 200
    end
    object QConProcessoLic2SEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConProcessoLic2CODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object QConProcessoLic2NOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object QConProcessoLic2CODMODALIDADE: TIntegerField
      FieldName = 'CODMODALIDADE'
    end
    object QConProcessoLic2NOMEMODALIDADE: TStringField
      FieldName = 'NOMEMODALIDADE'
      Size = 100
    end
    object QConProcessoLic2CODTIPOFONTE: TIntegerField
      FieldName = 'CODTIPOFONTE'
    end
    object QConProcessoLic2NOMETIPOFONTE: TStringField
      FieldName = 'NOMETIPOFONTE'
      Size = 100
    end
    object QConProcessoLic2CODCONTATOENT: TIntegerField
      FieldName = 'CODCONTATOENT'
    end
    object QConProcessoLic2NOMECONTATOENT: TStringField
      FieldName = 'NOMECONTATOENT'
      Size = 100
    end
    object QConProcessoLic2CODENDENTREGAENT: TIntegerField
      FieldName = 'CODENDENTREGAENT'
    end
    object QConProcessoLic2NOMEENDENTREGAENT: TStringField
      FieldName = 'NOMEENDENTREGAENT'
      Size = 100
    end
    object QConProcessoLic2OBSCREDENCIAMENTO: TStringField
      FieldName = 'OBSCREDENCIAMENTO'
      Size = 200
    end
    object QConProcessoLic2PROCURNOMEREPRE: TStringField
      FieldName = 'PROCURNOMEREPRE'
      Size = 100
    end
    object QConProcessoLic2DECLARACAONOMEITEM: TStringField
      FieldName = 'DECLARACAONOMEITEM'
      Size = 100
    end
    object QConProcessoLic2VALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
      currency = True
    end
    object QConProcessoLic2NOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConProcessoLic2VALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object QConProcessoLic2CONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object QConProcessoLic2NOMECONDPAG: TStringField
      FieldName = 'NOMECONDPAG'
      Size = 100
    end
    object QConProcessoLic2CODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConProcessoLic2NOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 100
    end
    object QConProcessoLic2COMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object QConProcessoLic2VLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object QConProcessoLic2CODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object QConProcessoLic2DATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object QConProcessoLic2SITENVIO: TStringField
      FieldName = 'SITENVIO'
      Size = 50
    end
    object QConProcessoLic2DTENVIO: TDateField
      FieldName = 'DTENVIO'
    end
    object QConProcessoLic2DTINICIOCONT: TDateField
      FieldName = 'DTINICIOCONT'
    end
    object QConProcessoLic2DTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object QConProcessoLic2HORAENCERRAMENTO: TTimeField
      FieldName = 'HORAENCERRAMENTO'
    end
  end
  object DConfigLic: TDataSource
    DataSet = TConfigLic
    Left = 648
    Top = 472
  end
  object TConfigLic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConfigLic'
    RemoteServer = FDMSistema.DSGerLicitacao
    AfterScroll = TProcessoLicAfterScroll
    Left = 648
    Top = 408
    object TConfigLicCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TConfigLicMSGENVIO: TMemoField
      FieldName = 'MSGENVIO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicASSUNTOENVIO: TMemoField
      FieldName = 'ASSUNTOENVIO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicMSGAVISOLICITACAO: TMemoField
      FieldName = 'MSGAVISOLICITACAO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicASSUNTOAVISOLICITACAO: TMemoField
      FieldName = 'ASSUNTOAVISOLICITACAO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicMSGAVISOLICITACAO2: TMemoField
      FieldName = 'MSGAVISOLICITACAO2'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicMSGRELATORIO: TMemoField
      FieldName = 'MSGRELATORIO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicMSGASSUNTORELATORIO: TMemoField
      FieldName = 'MSGASSUNTORELATORIO'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicMSGPREFEITURA: TMemoField
      FieldName = 'MSGPREFEITURA'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicASSUNTOPREFEITURA: TMemoField
      FieldName = 'ASSUNTOPREFEITURA'
      BlobType = ftMemo
      Size = 1
    end
    object TConfigLicEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 400
    end
    object TConfigLicPASTABASEEDITAIS: TStringField
      FieldName = 'PASTABASEEDITAIS'
      Size = 400
    end
  end
  object DProcessoLicIt: TDataSource
    DataSet = TProcessoLicIt
    Left = 384
    Top = 624
  end
  object TProcessoLicIt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DProcessoLicIt'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 384
    Top = 560
    object TProcessoLicItPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicItCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicItCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoLicItNOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 100
    end
    object TProcessoLicItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      currency = True
    end
    object TProcessoLicItOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TProcessoLicItQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TProcessoLicItTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object DProcessoDup: TDataSource
    DataSet = TProcessoDup
    Left = 488
    Top = 624
  end
  object TProcessoDup: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'PARCELA'
    Params = <
      item
        DataType = ftWideString
        Name = 'NUMDOC'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DProcessoDup'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 488
    Top = 560
    object TProcessoDupNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoDupNUMDUP: TStringField
      FieldName = 'NUMDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TProcessoDupCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoDupTIPODUP: TStringField
      FieldName = 'TIPODUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object TProcessoDupCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProcessoDupNUMDOCPED: TIntegerField
      FieldName = 'NUMDOCPED'
    end
    object TProcessoDupNUMDUPPED: TStringField
      FieldName = 'NUMDUPPED'
      Size = 50
    end
    object TProcessoDupTIPODUPPED: TStringField
      FieldName = 'TIPODUPPED'
      Size = 1
    end
    object TProcessoDupNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object TProcessoDupCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TProcessoDupCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object TProcessoDupPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object TProcessoDupVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object TProcessoDupVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object TProcessoDupJUROS: TFloatField
      FieldName = 'JUROS'
      currency = True
    end
    object TProcessoDupDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TProcessoDupUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TProcessoDupUSUPAG: TIntegerField
      FieldName = 'USUPAG'
    end
    object TProcessoDupCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object TProcessoDupCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object TProcessoDupOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object TProcessoDupNOMECOND: TStringField
      FieldName = 'NOMECOND'
      Size = 200
    end
    object TProcessoDupNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object TProcessoDupSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object TProcessoDupTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object TProcessoDupSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object TProcessoDupCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object TProcessoDupNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object TProcessoDupCODPORTADOR: TIntegerField
      FieldName = 'CODPORTADOR'
    end
    object TProcessoDupNOMEPORTADOR: TStringField
      FieldName = 'NOMEPORTADOR'
      Size = 100
    end
    object TProcessoDupCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TProcessoDupCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object TProcessoDupNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 50
    end
    object TProcessoDupNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 50
    end
    object TProcessoDupDATA: TDateField
      FieldName = 'DATA'
    end
    object TProcessoDupVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      EditMask = '!99/99/0099;1;_'
    end
    object TProcessoDupDTPGTO: TDateField
      FieldName = 'DTPGTO'
    end
    object TProcessoDupDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object TProcessoDupIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object TProcessoDupNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object TProcessoDupBOLETO: TStringField
      FieldName = 'BOLETO'
      Size = 1
    end
    object TProcessoDupCNAB: TStringField
      FieldName = 'CNAB'
      Size = 1
    end
    object TProcessoDupNOSSONUM: TStringField
      FieldName = 'NOSSONUM'
      Size = 50
    end
    object TProcessoDupTOTLANC: TFloatField
      FieldName = 'TOTLANC'
    end
    object TProcessoDupCODREN: TIntegerField
      FieldName = 'CODREN'
    end
    object TProcessoDupRENEGOCIADA: TStringField
      FieldName = 'RENEGOCIADA'
      Size = 1
    end
    object TProcessoDupPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object TProcessoDupPERCJURO: TFloatField
      FieldName = 'PERCJURO'
    end
    object TProcessoDupMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object TProcessoDupAPROVBAIXA: TStringField
      FieldName = 'APROVBAIXA'
      Size = 1
    end
    object TProcessoDupSELBAIXA: TStringField
      FieldName = 'SELBAIXA'
      Size = 1
    end
    object TProcessoDupCODUSUAPROV: TIntegerField
      FieldName = 'CODUSUAPROV'
    end
    object TProcessoDupCODADIANTAMENTO: TIntegerField
      FieldName = 'CODADIANTAMENTO'
    end
    object TProcessoDupAJUSTECOMISSAO: TFloatField
      FieldName = 'AJUSTECOMISSAO'
    end
    object TProcessoDupPERCDESC: TFloatField
      FieldName = 'PERCDESC'
    end
    object TProcessoDupTOTVENDA: TFloatField
      FieldName = 'TOTVENDA'
    end
    object TProcessoDupTOTPARCELA: TIntegerField
      FieldName = 'TOTPARCELA'
    end
    object TProcessoDupPERCCARTAO: TFloatField
      FieldName = 'PERCCARTAO'
    end
    object TProcessoDupTAXACARTAO: TFloatField
      FieldName = 'TAXACARTAO'
    end
    object TProcessoDupCODPROF: TIntegerField
      FieldName = 'CODPROF'
    end
    object TProcessoDupNOMEPROF: TStringField
      FieldName = 'NOMEPROF'
      Size = 100
    end
    object TProcessoDupCODESPECIALIDADE: TIntegerField
      FieldName = 'CODESPECIALIDADE'
    end
    object TProcessoDupNOMEESPECIALIDADE: TStringField
      FieldName = 'NOMEESPECIALIDADE'
      Size = 100
    end
    object TProcessoDupHONRADA: TStringField
      FieldName = 'HONRADA'
      Size = 1
    end
    object TProcessoDupDATAHONRA: TDateField
      FieldName = 'DATAHONRA'
    end
    object TProcessoDupNUMPARC: TIntegerField
      FieldName = 'NUMPARC'
    end
    object TProcessoDupENTRADA: TStringField
      FieldName = 'ENTRADA'
      Size = 1
    end
    object TProcessoDupVALORCONTRATOLIC: TFloatField
      FieldName = 'VALORCONTRATOLIC'
    end
  end
  object DConProcessoLicArq: TDataSource
    DataSet = QConProcessoLicArq
    Left = 136
    Top = 776
  end
  object QConProcessoLicArq: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConProcessoLicArq'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 136
    Top = 712
    object QConProcessoLicArqPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicArqCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicArqCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicArqCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicArqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicArqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QConProcessoLicArqCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 1000
    end
    object QConProcessoLicArqOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object QConProcessoLicArqVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object QConProcessoLicArqTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 100
    end
  end
  object DConProcessoLicCont: TDataSource
    DataSet = QConProcessoLicCont
    Left = 264
    Top = 776
  end
  object QConProcessoLicCont: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConProcessoLicCont'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 264
    Top = 712
    object QConProcessoLicContPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicContCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicContCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicContITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicContCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicContDATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcessoLicContHORA: TTimeField
      FieldName = 'HORA'
    end
    object QConProcessoLicContDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      OnGetText = TProcessoLicContDESCRICAOGetText
      BlobType = ftMemo
      Size = 1
    end
    object QConProcessoLicContOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object QConProcessoLicContUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object QConProcessoLicContCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
  end
  object DConProcessoLicIt: TDataSource
    DataSet = QConProcessoLicIt
    Left = 384
    Top = 776
  end
  object QConProcessoLicIt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConProcessoLicIt'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 384
    Top = 712
    object QConProcessoLicItPROCESSO: TIntegerField
      FieldName = 'PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicItCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicItCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoLicItNOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 100
    end
    object QConProcessoLicItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      currency = True
    end
    object QConProcessoLicItOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object QConProcessoLicItQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QConProcessoLicItTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
  end
  object DConProcessoDup: TDataSource
    DataSet = QConProcessoDup
    Left = 488
    Top = 776
  end
  object QConProcessoDup: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'PROCESSO'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODEMPFAT'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConProcessoDup'
    RemoteServer = FDMSistema.DSGerLicitacao
    Left = 488
    Top = 712
    object QConProcessoDupNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoDupNUMDUP: TStringField
      FieldName = 'NUMDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QConProcessoDupCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoDupTIPODUP: TStringField
      FieldName = 'TIPODUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object QConProcessoDupCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConProcessoDupNUMDOCPED: TIntegerField
      FieldName = 'NUMDOCPED'
    end
    object QConProcessoDupNUMDUPPED: TStringField
      FieldName = 'NUMDUPPED'
      Size = 50
    end
    object QConProcessoDupTIPODUPPED: TStringField
      FieldName = 'TIPODUPPED'
      Size = 1
    end
    object QConProcessoDupNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object QConProcessoDupCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object QConProcessoDupCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object QConProcessoDupPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object QConProcessoDupVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object QConProcessoDupVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QConProcessoDupJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object QConProcessoDupDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QConProcessoDupUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object QConProcessoDupUSUPAG: TIntegerField
      FieldName = 'USUPAG'
    end
    object QConProcessoDupCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object QConProcessoDupCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConProcessoDupOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object QConProcessoDupNOMECOND: TStringField
      FieldName = 'NOMECOND'
      Size = 200
    end
    object QConProcessoDupNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object QConProcessoDupSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object QConProcessoDupTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QConProcessoDupSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConProcessoDupCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object QConProcessoDupNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object QConProcessoDupCODPORTADOR: TIntegerField
      FieldName = 'CODPORTADOR'
    end
    object QConProcessoDupNOMEPORTADOR: TStringField
      FieldName = 'NOMEPORTADOR'
      Size = 100
    end
    object QConProcessoDupCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConProcessoDupCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object QConProcessoDupNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 50
    end
    object QConProcessoDupNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 50
    end
    object QConProcessoDupDATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcessoDupVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object QConProcessoDupDTPGTO: TDateField
      FieldName = 'DTPGTO'
    end
    object QConProcessoDupDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object QConProcessoDupIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object QConProcessoDupNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConProcessoDupBOLETO: TStringField
      FieldName = 'BOLETO'
      Size = 1
    end
    object QConProcessoDupCNAB: TStringField
      FieldName = 'CNAB'
      Size = 1
    end
    object QConProcessoDupNOSSONUM: TStringField
      FieldName = 'NOSSONUM'
      Size = 50
    end
    object QConProcessoDupTOTLANC: TFloatField
      FieldName = 'TOTLANC'
    end
    object QConProcessoDupCODREN: TIntegerField
      FieldName = 'CODREN'
    end
    object QConProcessoDupRENEGOCIADA: TStringField
      FieldName = 'RENEGOCIADA'
      Size = 1
    end
    object QConProcessoDupPERCLUCRO: TFloatField
      FieldName = 'PERCLUCRO'
    end
    object QConProcessoDupPERCJURO: TFloatField
      FieldName = 'PERCJURO'
    end
    object QConProcessoDupMULTA: TFloatField
      FieldName = 'MULTA'
    end
    object QConProcessoDupAPROVBAIXA: TStringField
      FieldName = 'APROVBAIXA'
      Size = 1
    end
    object QConProcessoDupSELBAIXA: TStringField
      FieldName = 'SELBAIXA'
      Size = 1
    end
    object QConProcessoDupCODUSUAPROV: TIntegerField
      FieldName = 'CODUSUAPROV'
    end
    object QConProcessoDupCODADIANTAMENTO: TIntegerField
      FieldName = 'CODADIANTAMENTO'
    end
    object QConProcessoDupAJUSTECOMISSAO: TFloatField
      FieldName = 'AJUSTECOMISSAO'
    end
    object QConProcessoDupPERCDESC: TFloatField
      FieldName = 'PERCDESC'
    end
    object QConProcessoDupTOTVENDA: TFloatField
      FieldName = 'TOTVENDA'
    end
    object QConProcessoDupTOTPARCELA: TIntegerField
      FieldName = 'TOTPARCELA'
    end
    object QConProcessoDupPERCCARTAO: TFloatField
      FieldName = 'PERCCARTAO'
    end
    object QConProcessoDupTAXACARTAO: TFloatField
      FieldName = 'TAXACARTAO'
    end
    object QConProcessoDupCODPROF: TIntegerField
      FieldName = 'CODPROF'
    end
    object QConProcessoDupNOMEPROF: TStringField
      FieldName = 'NOMEPROF'
      Size = 100
    end
    object QConProcessoDupCODESPECIALIDADE: TIntegerField
      FieldName = 'CODESPECIALIDADE'
    end
    object QConProcessoDupNOMEESPECIALIDADE: TStringField
      FieldName = 'NOMEESPECIALIDADE'
      Size = 100
    end
    object QConProcessoDupHONRADA: TStringField
      FieldName = 'HONRADA'
      Size = 1
    end
    object QConProcessoDupDATAHONRA: TDateField
      FieldName = 'DATAHONRA'
    end
    object QConProcessoDupNUMPARC: TIntegerField
      FieldName = 'NUMPARC'
    end
    object QConProcessoDupENTRADA: TStringField
      FieldName = 'ENTRADA'
      Size = 1
    end
    object QConProcessoDupVALORCONTRATOLIC: TFloatField
      FieldName = 'VALORCONTRATOLIC'
    end
  end
  object DSomaProcesso: TDataSource
    DataSet = QSomaProcesso
    Left = 720
    Top = 768
  end
  object QSomaProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSomaProcesso'
    RemoteServer = FDMSistema.DSGerLicitacao
    BeforeGetRecords = QSomaProcessoBeforeGetRecords
    Left = 720
    Top = 704
    object QSomaProcessoVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
      currency = True
    end
    object QSomaProcessoVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object QSomaProcessoVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object QSomaProcessoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
  object DConProcessoLicFinanc: TDataSource
    DataSet = QConProcessoLicFinanc
    Left = 968
    Top = 616
  end
  object QConProcessoLicFinanc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConProcessoLicFinanc'
    RemoteServer = FDMSistema.DSGerLicitacao
    OnCalcFields = QConProcessoLicFinancCalcFields
    BeforeGetRecords = QConProcessoLicFinancBeforeGetRecords
    Left = 968
    Top = 552
    object QConProcessoLicFinancCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConProcessoLicFinancCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConProcessoLicFinancCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConProcessoLicFinancCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object QConProcessoLicFinancCODENTIDADE: TIntegerField
      FieldName = 'CODENTIDADE'
    end
    object QConProcessoLicFinancNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Size = 100
    end
    object QConProcessoLicFinancNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object QConProcessoLicFinancDATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcessoLicFinancDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
    end
    object QConProcessoLicFinancHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
    end
    object QConProcessoLicFinancFONTE: TIntegerField
      FieldName = 'FONTE'
    end
    object QConProcessoLicFinancNOMEFONTE: TStringField
      FieldName = 'NOMEFONTE'
      Size = 100
    end
    object QConProcessoLicFinancNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object QConProcessoLicFinancCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConProcessoLicFinancNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object QConProcessoLicFinancCODANALISTACONT: TIntegerField
      FieldName = 'CODANALISTACONT'
    end
    object QConProcessoLicFinancNOMEANALISTACONT: TStringField
      FieldName = 'NOMEANALISTACONT'
      Size = 100
    end
    object QConProcessoLicFinancCODANALISTACRED: TIntegerField
      FieldName = 'CODANALISTACRED'
    end
    object QConProcessoLicFinancNOMEANALISTACRED: TStringField
      FieldName = 'NOMEANALISTACRED'
      Size = 100
    end
    object QConProcessoLicFinancCODLEITOR: TIntegerField
      FieldName = 'CODLEITOR'
    end
    object QConProcessoLicFinancNOMELEITOR: TStringField
      FieldName = 'NOMELEITOR'
      Size = 100
    end
    object QConProcessoLicFinancVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
      currency = True
    end
    object QConProcessoLicFinancREPUBLICADO: TStringField
      FieldName = 'REPUBLICADO'
      Size = 10
    end
    object QConProcessoLicFinancINDICACAO: TStringField
      FieldName = 'INDICACAO'
      Size = 10
    end
    object QConProcessoLicFinancRECEBDEPOIS: TStringField
      FieldName = 'RECEBDEPOIS'
      Size = 10
    end
    object QConProcessoLicFinancPAGO: TStringField
      FieldName = 'PAGO'
      Size = 10
    end
    object QConProcessoLicFinancRESULTADOGERAL: TStringField
      FieldName = 'RESULTADOGERAL'
      Size = 50
    end
    object QConProcessoLicFinancMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object QConProcessoLicFinancJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 200
    end
    object QConProcessoLicFinancDETALHAMENTOFONTE: TStringField
      FieldName = 'DETALHAMENTOFONTE'
      Size = 200
    end
    object QConProcessoLicFinancSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConProcessoLicFinancPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConProcessoLicFinancDATAENTREGAENV: TDateField
      FieldName = 'DATAENTREGAENV'
    end
    object QConProcessoLicFinancHORAENTREGAENV: TTimeField
      FieldName = 'HORAENTREGAENV'
    end
    object QConProcessoLicFinancDATALIMITEENV: TDateField
      FieldName = 'DATALIMITEENV'
    end
    object QConProcessoLicFinancHORALIMITEENV: TTimeField
      FieldName = 'HORALIMITEENV'
    end
    object QConProcessoLicFinancDATAINICI: TDateField
      FieldName = 'DATAINICI'
    end
    object QConProcessoLicFinancHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object QConProcessoLicFinancDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConProcessoLicFinancHORACAD: TTimeField
      FieldName = 'HORACAD'
    end
    object QConProcessoLicFinancPREGOEIRO: TStringField
      FieldName = 'PREGOEIRO'
      Size = 100
    end
    object QConProcessoLicFinancVALORMAX: TFloatField
      FieldName = 'VALORMAX'
      currency = True
    end
    object QConProcessoLicFinancVIASDAPROP: TIntegerField
      FieldName = 'VIASDAPROP'
    end
    object QConProcessoLicFinancMPRECOMAXPITEM: TStringField
      FieldName = 'MPRECOMAXPITEM'
      Size = 1
    end
    object QConProcessoLicFinancMVLRPOREXT: TStringField
      FieldName = 'MVLRPOREXT'
      Size = 1
    end
    object QConProcessoLicFinancMCODPROD: TStringField
      FieldName = 'MCODPROD'
      Size = 1
    end
    object QConProcessoLicFinancMIMPCLIENTE: TStringField
      FieldName = 'MIMPCLIENTE'
      Size = 1
    end
    object QConProcessoLicFinancMREAJUSTE: TStringField
      FieldName = 'MREAJUSTE'
      Size = 1
    end
    object QConProcessoLicFinancMENVLAUDOS: TStringField
      FieldName = 'MENVLAUDOS'
      Size = 1
    end
    object QConProcessoLicFinancMVENDAPROIBIDA: TStringField
      FieldName = 'MVENDAPROIBIDA'
      Size = 1
    end
    object QConProcessoLicFinancMINSS: TStringField
      FieldName = 'MINSS'
      Size = 1
    end
    object QConProcessoLicFinancMFGTS: TStringField
      FieldName = 'MFGTS'
      Size = 1
    end
    object QConProcessoLicFinancMPNPF: TStringField
      FieldName = 'MPNPF'
      Size = 1
    end
    object QConProcessoLicFinancCODENDENTREGA: TIntegerField
      FieldName = 'CODENDENTREGA'
    end
    object QConProcessoLicFinancCODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object QConProcessoLicFinancSITEDISPULTA: TStringField
      FieldName = 'SITEDISPULTA'
      Size = 300
    end
    object QConProcessoLicFinancOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object QConProcessoLicFinancVIGENCIACONT: TIntegerField
      FieldName = 'VIGENCIACONT'
    end
    object QConProcessoLicFinancDTVIGENCIA: TDateField
      FieldName = 'DTVIGENCIA'
    end
    object QConProcessoLicFinancTEMPOVIGENCIA: TStringField
      FieldName = 'TEMPOVIGENCIA'
      Size = 50
    end
    object QConProcessoLicFinancPRAZOPAGAMENO: TIntegerField
      FieldName = 'PRAZOPAGAMENO'
    end
    object QConProcessoLicFinancTEMPOPRAZOPAGAMENTO: TStringField
      FieldName = 'TEMPOPRAZOPAGAMENTO'
      Size = 50
    end
    object QConProcessoLicFinancDATAPRAZOPAGAMENTO: TDateField
      FieldName = 'DATAPRAZOPAGAMENTO'
    end
    object QConProcessoLicFinancTEMPOVALIDADEPROD: TStringField
      FieldName = 'TEMPOVALIDADEPROD'
      Size = 50
    end
    object QConProcessoLicFinancVALIDADEPROD: TIntegerField
      FieldName = 'VALIDADEPROD'
    end
    object QConProcessoLicFinancDATAVALIDADEPROD: TDateField
      FieldName = 'DATAVALIDADEPROD'
    end
    object QConProcessoLicFinancVALIDADEPROP: TIntegerField
      FieldName = 'VALIDADEPROP'
    end
    object QConProcessoLicFinancVALIDADEPROPDT: TDateField
      FieldName = 'VALIDADEPROPDT'
    end
    object QConProcessoLicFinancTEMPOVALIDADEPROP: TStringField
      FieldName = 'TEMPOVALIDADEPROP'
      Size = 50
    end
    object QConProcessoLicFinancENTREGAPROD: TIntegerField
      FieldName = 'ENTREGAPROD'
    end
    object QConProcessoLicFinancDTENTREGAPROD: TDateField
      FieldName = 'DTENTREGAPROD'
    end
    object QConProcessoLicFinancTEMPOENTREGAPROD: TStringField
      FieldName = 'TEMPOENTREGAPROD'
      Size = 50
    end
    object QConProcessoLicFinancPROCURSIGNATARIO: TStringField
      FieldName = 'PROCURSIGNATARIO'
      Size = 1
    end
    object QConProcessoLicFinancPROCURREPRESENTANTE: TStringField
      FieldName = 'PROCURREPRESENTANTE'
      Size = 1
    end
    object QConProcessoLicFinancTERMORESPON: TStringField
      FieldName = 'TERMORESPON'
      Size = 1
    end
    object QConProcessoLicFinancCONTRATOSOCIAL: TWideStringField
      FieldName = 'CONTRATOSOCIAL'
      FixedChar = True
    end
    object QConProcessoLicFinancDETALHESFONTE: TStringField
      FieldName = 'DETALHESFONTE'
      Size = 300
    end
    object QConProcessoLicFinancPROCURRESPONSA: TStringField
      FieldName = 'PROCURRESPONSA'
      Size = 1
    end
    object QConProcessoLicFinancDECLARACAOPREREQ: TStringField
      FieldName = 'DECLARACAOPREREQ'
      Size = 1
    end
    object QConProcessoLicFinancOBSFACEPROP: TStringField
      FieldName = 'OBSFACEPROP'
      Size = 400
    end
    object QConProcessoLicFinancDECLARACAOITEM: TStringField
      FieldName = 'DECLARACAOITEM'
      Size = 1
    end
    object QConProcessoLicFinancNOMEDECLARACAOITEM: TStringField
      FieldName = 'NOMEDECLARACAOITEM'
      Size = 200
    end
    object QConProcessoLicFinancHCADORGAOPUBLICO: TStringField
      FieldName = 'HCADORGAOPUBLICO'
      Size = 1
    end
    object QConProcessoLicFinancHIDENTIDADESOCIO: TStringField
      FieldName = 'HIDENTIDADESOCIO'
      Size = 1
    end
    object QConProcessoLicFinancHCNPJ: TStringField
      FieldName = 'HCNPJ'
      Size = 1
    end
    object QConProcessoLicFinancHCICAD: TStringField
      FieldName = 'HCICAD'
      Size = 1
    end
    object QConProcessoLicFinancHSICAF: TStringField
      FieldName = 'HSICAF'
      Size = 1
    end
    object QConProcessoLicFinancHCONTSOCIAL: TStringField
      FieldName = 'HCONTSOCIAL'
      Size = 1
    end
    object QConProcessoLicFinancHCERTFEDERAL: TStringField
      FieldName = 'HCERTFEDERAL'
      Size = 1
    end
    object QConProcessoLicFinancHCERTESTADUAL: TStringField
      FieldName = 'HCERTESTADUAL'
      Size = 1
    end
    object QConProcessoLicFinancHCERTMUNICIPAL: TStringField
      FieldName = 'HCERTMUNICIPAL'
      Size = 1
    end
    object QConProcessoLicFinancHINSS: TStringField
      FieldName = 'HINSS'
      Size = 1
    end
    object QConProcessoLicFinancHFGTS: TStringField
      FieldName = 'HFGTS'
      Size = 1
    end
    object QConProcessoLicFinancHBALANCOPATRIMONIAL: TStringField
      FieldName = 'HBALANCOPATRIMONIAL'
      Size = 1
    end
    object QConProcessoLicFinancHFALENCIA: TStringField
      FieldName = 'HFALENCIA'
      Size = 1
    end
    object QConProcessoLicFinancHINDICESOL: TStringField
      FieldName = 'HINDICESOL'
      Size = 1
    end
    object QConProcessoLicFinancHCERTJUNTACOMERC: TStringField
      FieldName = 'HCERTJUNTACOMERC'
      Size = 1
    end
    object QConProcessoLicFinancHATESTADOCAPACIDADE: TStringField
      FieldName = 'HATESTADOCAPACIDADE'
      Size = 1
    end
    object QConProcessoLicFinancHLICENCASANITARIA: TStringField
      FieldName = 'HLICENCASANITARIA'
      Size = 1
    end
    object QConProcessoLicFinancHINCEST: TStringField
      FieldName = 'HINCEST'
      Size = 1
    end
    object QConProcessoLicFinancHINSCMUNIC: TStringField
      FieldName = 'HINSCMUNIC'
      Size = 1
    end
    object QConProcessoLicFinancHALVARA: TStringField
      FieldName = 'HALVARA'
      Size = 1
    end
    object QConProcessoLicFinancHAUTFUNCNORMAL: TStringField
      FieldName = 'HAUTFUNCNORMAL'
      Size = 1
    end
    object QConProcessoLicFinancHAUTFUNCESPECIAL: TStringField
      FieldName = 'HAUTFUNCESPECIAL'
      Size = 1
    end
    object QConProcessoLicFinancHCRF: TStringField
      FieldName = 'HCRF'
      Size = 1
    end
    object QConProcessoLicFinancHDECINEXISTENCIA: TStringField
      FieldName = 'HDECINEXISTENCIA'
      Size = 1
    end
    object QConProcessoLicFinancHDECMENOR: TStringField
      FieldName = 'HDECMENOR'
      Size = 1
    end
    object QConProcessoLicFinancHDECMICRO: TStringField
      FieldName = 'HDECMICRO'
      Size = 1
    end
    object QConProcessoLicFinancHATESCAPACIDADE: TStringField
      FieldName = 'HATESCAPACIDADE'
      Size = 1
    end
    object QConProcessoLicFinancHDECITEM1: TStringField
      FieldName = 'HDECITEM1'
      Size = 1
    end
    object QConProcessoLicFinancHNOMEITEM1: TStringField
      FieldName = 'HNOMEITEM1'
      Size = 200
    end
    object QConProcessoLicFinancHDECITEM2: TStringField
      FieldName = 'HDECITEM2'
      Size = 1
    end
    object QConProcessoLicFinancHNOMEITEM2: TStringField
      FieldName = 'HNOMEITEM2'
      Size = 200
    end
    object QConProcessoLicFinancHDECITEM3: TStringField
      FieldName = 'HDECITEM3'
      Size = 1
    end
    object QConProcessoLicFinancHNOMEITEM3: TStringField
      FieldName = 'HNOMEITEM3'
      Size = 200
    end
    object QConProcessoLicFinancSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConProcessoLicFinancCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object QConProcessoLicFinancNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object QConProcessoLicFinancCODMODALIDADE: TIntegerField
      FieldName = 'CODMODALIDADE'
    end
    object QConProcessoLicFinancNOMEMODALIDADE: TStringField
      FieldName = 'NOMEMODALIDADE'
      Size = 100
    end
    object QConProcessoLicFinancCODTIPOFONTE: TIntegerField
      FieldName = 'CODTIPOFONTE'
    end
    object QConProcessoLicFinancNOMETIPOFONTE: TStringField
      FieldName = 'NOMETIPOFONTE'
      Size = 100
    end
    object QConProcessoLicFinancCODCONTATOENT: TIntegerField
      FieldName = 'CODCONTATOENT'
    end
    object QConProcessoLicFinancNOMECONTATOENT: TStringField
      FieldName = 'NOMECONTATOENT'
      Size = 100
    end
    object QConProcessoLicFinancCODENDENTREGAENT: TIntegerField
      FieldName = 'CODENDENTREGAENT'
    end
    object QConProcessoLicFinancNOMEENDENTREGAENT: TStringField
      FieldName = 'NOMEENDENTREGAENT'
      Size = 100
    end
    object QConProcessoLicFinancOBSCREDENCIAMENTO: TStringField
      FieldName = 'OBSCREDENCIAMENTO'
      Size = 200
    end
    object QConProcessoLicFinancPROCURNOMEREPRE: TStringField
      FieldName = 'PROCURNOMEREPRE'
      Size = 100
    end
    object QConProcessoLicFinancDECLARACAONOMEITEM: TStringField
      FieldName = 'DECLARACAONOMEITEM'
      Size = 100
    end
    object QConProcessoLicFinancVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
    end
    object QConProcessoLicFinancNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConProcessoLicFinancVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object QConProcessoLicFinancCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object QConProcessoLicFinancNOMECONDPAG: TStringField
      FieldName = 'NOMECONDPAG'
      Size = 100
    end
    object QConProcessoLicFinancCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConProcessoLicFinancNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 100
    end
    object QConProcessoLicFinancCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object QConProcessoLicFinancVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object QConProcessoLicFinancCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object QConProcessoLicFinancDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object QConProcessoLicFinancSITENVIO: TStringField
      FieldName = 'SITENVIO'
      Size = 50
    end
    object QConProcessoLicFinancDTENVIO: TDateField
      FieldName = 'DTENVIO'
    end
    object QConProcessoLicFinancVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object QConProcessoLicFinancSITDUP: TStringField
      FieldName = 'SITDUP'
      Size = 1
    end
    object QConProcessoLicFinancVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
      currency = True
    end
    object QConProcessoLicFinancVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object QConProcessoLicFinancsaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      currency = True
      Calculated = True
    end
    object QConProcessoLicFinancVALORCONTRATOLIC: TFloatField
      FieldName = 'VALORCONTRATOLIC'
      currency = True
    end
    object QConProcessoLicFinancsaldocontrato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldocontrato'
      currency = True
      Calculated = True
    end
    object QConProcessoLicFinancpercpago: TFloatField
      FieldKind = fkCalculated
      FieldName = 'percpago'
      DisplayFormat = '0.00%'
      Calculated = True
    end
  end
  object DSomaProcessoFinanc: TDataSource
    DataSet = QSomaProcessoFinanc
    Left = 968
    Top = 760
  end
  object QSomaProcessoFinanc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSomaProcessoFinanc'
    RemoteServer = FDMSistema.DSGerLicitacao
    OnCalcFields = QSomaProcessoFinancCalcFields
    BeforeGetRecords = QSomaProcessoFinancBeforeGetRecords
    Left = 968
    Top = 696
    object QSomaProcessoFinancVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
      currency = True
    end
    object QSomaProcessoFinancVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
      currency = True
    end
    object QSomaProcessoFinancVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      currency = True
    end
    object QSomaProcessoFinancVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
      currency = True
    end
    object QSomaProcessoFinancVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object QSomaProcessoFinancsaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldo'
      currency = True
      Calculated = True
    end
    object QSomaProcessoFinancNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QSomaProcessoFinancVALORCONTRATOLIC: TFloatField
      FieldName = 'VALORCONTRATOLIC'
      currency = True
    end
    object QSomaProcessoFinancsaldocontrato: TFloatField
      FieldKind = fkCalculated
      FieldName = 'saldocontrato'
      currency = True
      Calculated = True
    end
  end
  object DConProcVigencia: TDataSource
    DataSet = QConProcVigencia
    Left = 968
    Top = 472
  end
  object QConProcVigencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConProcVigencia'
    RemoteServer = FDMSistema.DSGerLicitacao
    BeforeGetRecords = QConProcVigenciaBeforeGetRecords
    Left = 968
    Top = 408
    object QConProcVigenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConProcVigenciaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConProcVigenciaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QConProcVigenciaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object QConProcVigenciaCODENTIDADE: TIntegerField
      FieldName = 'CODENTIDADE'
    end
    object QConProcVigenciaNOMEENTIDADE: TStringField
      FieldName = 'NOMEENTIDADE'
      Size = 100
    end
    object QConProcVigenciaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object QConProcVigenciaDATA: TDateField
      FieldName = 'DATA'
    end
    object QConProcVigenciaDATAABERTURA: TDateField
      FieldName = 'DATAABERTURA'
    end
    object QConProcVigenciaHORAABERTURA: TTimeField
      FieldName = 'HORAABERTURA'
    end
    object QConProcVigenciaFONTE: TIntegerField
      FieldName = 'FONTE'
    end
    object QConProcVigenciaNOMEFONTE: TStringField
      FieldName = 'NOMEFONTE'
      Size = 100
    end
    object QConProcVigenciaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object QConProcVigenciaCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConProcVigenciaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object QConProcVigenciaCODANALISTACONT: TIntegerField
      FieldName = 'CODANALISTACONT'
    end
    object QConProcVigenciaNOMEANALISTACONT: TStringField
      FieldName = 'NOMEANALISTACONT'
      Size = 100
    end
    object QConProcVigenciaCODANALISTACRED: TIntegerField
      FieldName = 'CODANALISTACRED'
    end
    object QConProcVigenciaNOMEANALISTACRED: TStringField
      FieldName = 'NOMEANALISTACRED'
      Size = 100
    end
    object QConProcVigenciaCODLEITOR: TIntegerField
      FieldName = 'CODLEITOR'
    end
    object QConProcVigenciaNOMELEITOR: TStringField
      FieldName = 'NOMELEITOR'
      Size = 100
    end
    object QConProcVigenciaVALOREDITAL: TFloatField
      FieldName = 'VALOREDITAL'
    end
    object QConProcVigenciaREPUBLICADO: TStringField
      FieldName = 'REPUBLICADO'
      Size = 10
    end
    object QConProcVigenciaINDICACAO: TStringField
      FieldName = 'INDICACAO'
      Size = 10
    end
    object QConProcVigenciaRECEBDEPOIS: TStringField
      FieldName = 'RECEBDEPOIS'
      Size = 10
    end
    object QConProcVigenciaPAGO: TStringField
      FieldName = 'PAGO'
      Size = 10
    end
    object QConProcVigenciaRESULTADOGERAL: TStringField
      FieldName = 'RESULTADOGERAL'
      Size = 50
    end
    object QConProcVigenciaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object QConProcVigenciaJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 200
    end
    object QConProcVigenciaDETALHAMENTOFONTE: TStringField
      FieldName = 'DETALHAMENTOFONTE'
      Size = 200
    end
    object QConProcVigenciaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConProcVigenciaPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConProcVigenciaDATAENTREGAENV: TDateField
      FieldName = 'DATAENTREGAENV'
    end
    object QConProcVigenciaHORAENTREGAENV: TTimeField
      FieldName = 'HORAENTREGAENV'
    end
    object QConProcVigenciaDATALIMITEENV: TDateField
      FieldName = 'DATALIMITEENV'
    end
    object QConProcVigenciaHORALIMITEENV: TTimeField
      FieldName = 'HORALIMITEENV'
    end
    object QConProcVigenciaDATAINICI: TDateField
      FieldName = 'DATAINICI'
    end
    object QConProcVigenciaHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object QConProcVigenciaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConProcVigenciaHORACAD: TTimeField
      FieldName = 'HORACAD'
    end
    object QConProcVigenciaPREGOEIRO: TStringField
      FieldName = 'PREGOEIRO'
      Size = 100
    end
    object QConProcVigenciaVALORMAX: TFloatField
      FieldName = 'VALORMAX'
    end
    object QConProcVigenciaVIASDAPROP: TIntegerField
      FieldName = 'VIASDAPROP'
    end
    object QConProcVigenciaMPRECOMAXPITEM: TStringField
      FieldName = 'MPRECOMAXPITEM'
      Size = 1
    end
    object QConProcVigenciaMVLRPOREXT: TStringField
      FieldName = 'MVLRPOREXT'
      Size = 1
    end
    object QConProcVigenciaMCODPROD: TStringField
      FieldName = 'MCODPROD'
      Size = 1
    end
    object QConProcVigenciaMIMPCLIENTE: TStringField
      FieldName = 'MIMPCLIENTE'
      Size = 1
    end
    object QConProcVigenciaMREAJUSTE: TStringField
      FieldName = 'MREAJUSTE'
      Size = 1
    end
    object QConProcVigenciaMENVLAUDOS: TStringField
      FieldName = 'MENVLAUDOS'
      Size = 1
    end
    object QConProcVigenciaMVENDAPROIBIDA: TStringField
      FieldName = 'MVENDAPROIBIDA'
      Size = 1
    end
    object QConProcVigenciaMINSS: TStringField
      FieldName = 'MINSS'
      Size = 1
    end
    object QConProcVigenciaMFGTS: TStringField
      FieldName = 'MFGTS'
      Size = 1
    end
    object QConProcVigenciaMPNPF: TStringField
      FieldName = 'MPNPF'
      Size = 1
    end
    object QConProcVigenciaCODENDENTREGA: TIntegerField
      FieldName = 'CODENDENTREGA'
    end
    object QConProcVigenciaCODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object QConProcVigenciaSITEDISPULTA: TStringField
      FieldName = 'SITEDISPULTA'
      Size = 300
    end
    object QConProcVigenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object QConProcVigenciaVIGENCIACONT: TIntegerField
      FieldName = 'VIGENCIACONT'
    end
    object QConProcVigenciaDTVIGENCIA: TDateField
      FieldName = 'DTVIGENCIA'
    end
    object QConProcVigenciaTEMPOVIGENCIA: TStringField
      FieldName = 'TEMPOVIGENCIA'
      Size = 50
    end
    object QConProcVigenciaPRAZOPAGAMENO: TIntegerField
      FieldName = 'PRAZOPAGAMENO'
    end
    object QConProcVigenciaTEMPOPRAZOPAGAMENTO: TStringField
      FieldName = 'TEMPOPRAZOPAGAMENTO'
      Size = 50
    end
    object QConProcVigenciaDATAPRAZOPAGAMENTO: TDateField
      FieldName = 'DATAPRAZOPAGAMENTO'
    end
    object QConProcVigenciaTEMPOVALIDADEPROD: TStringField
      FieldName = 'TEMPOVALIDADEPROD'
      Size = 50
    end
    object QConProcVigenciaVALIDADEPROD: TIntegerField
      FieldName = 'VALIDADEPROD'
    end
    object QConProcVigenciaDATAVALIDADEPROD: TDateField
      FieldName = 'DATAVALIDADEPROD'
    end
    object QConProcVigenciaVALIDADEPROP: TIntegerField
      FieldName = 'VALIDADEPROP'
    end
    object QConProcVigenciaVALIDADEPROPDT: TDateField
      FieldName = 'VALIDADEPROPDT'
    end
    object QConProcVigenciaTEMPOVALIDADEPROP: TStringField
      FieldName = 'TEMPOVALIDADEPROP'
      Size = 50
    end
    object QConProcVigenciaENTREGAPROD: TIntegerField
      FieldName = 'ENTREGAPROD'
    end
    object QConProcVigenciaDTENTREGAPROD: TDateField
      FieldName = 'DTENTREGAPROD'
    end
    object QConProcVigenciaTEMPOENTREGAPROD: TStringField
      FieldName = 'TEMPOENTREGAPROD'
      Size = 50
    end
    object QConProcVigenciaPROCURSIGNATARIO: TStringField
      FieldName = 'PROCURSIGNATARIO'
      Size = 1
    end
    object QConProcVigenciaPROCURREPRESENTANTE: TStringField
      FieldName = 'PROCURREPRESENTANTE'
      Size = 1
    end
    object QConProcVigenciaTERMORESPON: TStringField
      FieldName = 'TERMORESPON'
      Size = 1
    end
    object QConProcVigenciaCONTRATOSOCIAL: TWideStringField
      FieldName = 'CONTRATOSOCIAL'
      FixedChar = True
    end
    object QConProcVigenciaDETALHESFONTE: TStringField
      FieldName = 'DETALHESFONTE'
      Size = 300
    end
    object QConProcVigenciaPROCURRESPONSA: TStringField
      FieldName = 'PROCURRESPONSA'
      Size = 1
    end
    object QConProcVigenciaDECLARACAOPREREQ: TStringField
      FieldName = 'DECLARACAOPREREQ'
      Size = 1
    end
    object QConProcVigenciaOBSFACEPROP: TStringField
      FieldName = 'OBSFACEPROP'
      Size = 400
    end
    object QConProcVigenciaDECLARACAOITEM: TStringField
      FieldName = 'DECLARACAOITEM'
      Size = 1
    end
    object QConProcVigenciaNOMEDECLARACAOITEM: TStringField
      FieldName = 'NOMEDECLARACAOITEM'
      Size = 200
    end
    object QConProcVigenciaHCADORGAOPUBLICO: TStringField
      FieldName = 'HCADORGAOPUBLICO'
      Size = 1
    end
    object QConProcVigenciaHIDENTIDADESOCIO: TStringField
      FieldName = 'HIDENTIDADESOCIO'
      Size = 1
    end
    object QConProcVigenciaHCNPJ: TStringField
      FieldName = 'HCNPJ'
      Size = 1
    end
    object QConProcVigenciaHCICAD: TStringField
      FieldName = 'HCICAD'
      Size = 1
    end
    object QConProcVigenciaHSICAF: TStringField
      FieldName = 'HSICAF'
      Size = 1
    end
    object QConProcVigenciaHCONTSOCIAL: TStringField
      FieldName = 'HCONTSOCIAL'
      Size = 1
    end
    object QConProcVigenciaHCERTFEDERAL: TStringField
      FieldName = 'HCERTFEDERAL'
      Size = 1
    end
    object QConProcVigenciaHCERTESTADUAL: TStringField
      FieldName = 'HCERTESTADUAL'
      Size = 1
    end
    object QConProcVigenciaHCERTMUNICIPAL: TStringField
      FieldName = 'HCERTMUNICIPAL'
      Size = 1
    end
    object QConProcVigenciaHINSS: TStringField
      FieldName = 'HINSS'
      Size = 1
    end
    object QConProcVigenciaHFGTS: TStringField
      FieldName = 'HFGTS'
      Size = 1
    end
    object QConProcVigenciaHBALANCOPATRIMONIAL: TStringField
      FieldName = 'HBALANCOPATRIMONIAL'
      Size = 1
    end
    object QConProcVigenciaHFALENCIA: TStringField
      FieldName = 'HFALENCIA'
      Size = 1
    end
    object QConProcVigenciaHINDICESOL: TStringField
      FieldName = 'HINDICESOL'
      Size = 1
    end
    object QConProcVigenciaHCERTJUNTACOMERC: TStringField
      FieldName = 'HCERTJUNTACOMERC'
      Size = 1
    end
    object QConProcVigenciaHATESTADOCAPACIDADE: TStringField
      FieldName = 'HATESTADOCAPACIDADE'
      Size = 1
    end
    object QConProcVigenciaHLICENCASANITARIA: TStringField
      FieldName = 'HLICENCASANITARIA'
      Size = 1
    end
    object QConProcVigenciaHINCEST: TStringField
      FieldName = 'HINCEST'
      Size = 1
    end
    object QConProcVigenciaHINSCMUNIC: TStringField
      FieldName = 'HINSCMUNIC'
      Size = 1
    end
    object QConProcVigenciaHALVARA: TStringField
      FieldName = 'HALVARA'
      Size = 1
    end
    object QConProcVigenciaHAUTFUNCNORMAL: TStringField
      FieldName = 'HAUTFUNCNORMAL'
      Size = 1
    end
    object QConProcVigenciaHAUTFUNCESPECIAL: TStringField
      FieldName = 'HAUTFUNCESPECIAL'
      Size = 1
    end
    object QConProcVigenciaHCRF: TStringField
      FieldName = 'HCRF'
      Size = 1
    end
    object QConProcVigenciaHDECINEXISTENCIA: TStringField
      FieldName = 'HDECINEXISTENCIA'
      Size = 1
    end
    object QConProcVigenciaHDECMENOR: TStringField
      FieldName = 'HDECMENOR'
      Size = 1
    end
    object QConProcVigenciaHDECMICRO: TStringField
      FieldName = 'HDECMICRO'
      Size = 1
    end
    object QConProcVigenciaHATESCAPACIDADE: TStringField
      FieldName = 'HATESCAPACIDADE'
      Size = 1
    end
    object QConProcVigenciaHDECITEM1: TStringField
      FieldName = 'HDECITEM1'
      Size = 1
    end
    object QConProcVigenciaHNOMEITEM1: TStringField
      FieldName = 'HNOMEITEM1'
      Size = 200
    end
    object QConProcVigenciaHDECITEM2: TStringField
      FieldName = 'HDECITEM2'
      Size = 1
    end
    object QConProcVigenciaHNOMEITEM2: TStringField
      FieldName = 'HNOMEITEM2'
      Size = 200
    end
    object QConProcVigenciaHDECITEM3: TStringField
      FieldName = 'HDECITEM3'
      Size = 1
    end
    object QConProcVigenciaHNOMEITEM3: TStringField
      FieldName = 'HNOMEITEM3'
      Size = 200
    end
    object QConProcVigenciaSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConProcVigenciaCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object QConProcVigenciaNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object QConProcVigenciaCODMODALIDADE: TIntegerField
      FieldName = 'CODMODALIDADE'
    end
    object QConProcVigenciaNOMEMODALIDADE: TStringField
      FieldName = 'NOMEMODALIDADE'
      Size = 100
    end
    object QConProcVigenciaCODTIPOFONTE: TIntegerField
      FieldName = 'CODTIPOFONTE'
    end
    object QConProcVigenciaNOMETIPOFONTE: TStringField
      FieldName = 'NOMETIPOFONTE'
      Size = 100
    end
    object QConProcVigenciaCODCONTATOENT: TIntegerField
      FieldName = 'CODCONTATOENT'
    end
    object QConProcVigenciaNOMECONTATOENT: TStringField
      FieldName = 'NOMECONTATOENT'
      Size = 100
    end
    object QConProcVigenciaCODENDENTREGAENT: TIntegerField
      FieldName = 'CODENDENTREGAENT'
    end
    object QConProcVigenciaNOMEENDENTREGAENT: TStringField
      FieldName = 'NOMEENDENTREGAENT'
      Size = 100
    end
    object QConProcVigenciaOBSCREDENCIAMENTO: TStringField
      FieldName = 'OBSCREDENCIAMENTO'
      Size = 200
    end
    object QConProcVigenciaPROCURNOMEREPRE: TStringField
      FieldName = 'PROCURNOMEREPRE'
      Size = 100
    end
    object QConProcVigenciaDECLARACAONOMEITEM: TStringField
      FieldName = 'DECLARACAONOMEITEM'
      Size = 100
    end
    object QConProcVigenciaVALORPROPOSTA: TFloatField
      FieldName = 'VALORPROPOSTA'
    end
    object QConProcVigenciaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConProcVigenciaVALORRESULTADO: TFloatField
      FieldName = 'VALORRESULTADO'
    end
    object QConProcVigenciaCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
    end
    object QConProcVigenciaNOMECONDPAG: TStringField
      FieldName = 'NOMECONDPAG'
      Size = 100
    end
    object QConProcVigenciaCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConProcVigenciaNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 100
    end
    object QConProcVigenciaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object QConProcVigenciaVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object QConProcVigenciaCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object QConProcVigenciaDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object QConProcVigenciaSITENVIO: TStringField
      FieldName = 'SITENVIO'
      Size = 50
    end
    object QConProcVigenciaDTENVIO: TDateField
      FieldName = 'DTENVIO'
    end
    object QConProcVigenciaDTINICIOCONT: TDateField
      FieldName = 'DTINICIOCONT'
    end
    object QConProcVigenciaDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
    end
  end
end
