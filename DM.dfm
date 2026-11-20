object FDM: TFDM
  OldCreateOrder = False
  Height = 434
  Width = 954
  object TMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    RemoteServer = FDMSistema.DSPGeral
    Left = 24
    Top = 8
    object TMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMarcaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object TMarcaDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Required = True
    end
    object TMarcaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TMarcaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TMarcaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
  end
  object DMarca: TDataSource
    DataSet = TMarca
    Left = 24
    Top = 56
  end
  object TServico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DServico'
    RemoteServer = FDMSistema.DSPGeral
    Left = 208
    Top = 8
    object TServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TServicoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      OnGetText = TServicoDATAGetText
    end
    object TServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TServicoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TServicoVALORMEDIO: TFloatField
      FieldName = 'VALORMEDIO'
    end
    object TServicoSETOR: TIntegerField
      FieldName = 'SETOR'
    end
    object TServicoCODGRUPO: TIntegerField
      FieldName = 'CODGRUPO'
    end
    object TServicoCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TServicoNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 200
    end
    object TServicoNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 200
    end
  end
  object DServico: TDataSource
    DataSet = TServico
    Left = 208
    Top = 56
  end
  object TLocalizador: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'DLocalizador'
    RemoteServer = FDMSistema.DSPGeral
    Left = 392
    Top = 8
    object TLocalizadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLocalizadorCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TLocalizadorNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TLocalizadorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TLocalizadorSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TLocalizadorDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object TLocalizadorOBSNOTA: TStringField
      FieldName = 'OBSNOTA'
      Size = 255
    end
    object TLocalizadorPROMISSORIA: TStringField
      FieldName = 'PROMISSORIA'
      Size = 1
    end
    object TLocalizadorCUPOMFISCAL: TStringField
      FieldName = 'CUPOMFISCAL'
      Size = 1
    end
    object TLocalizadorCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
    end
  end
  object DLocalizador: TDataSource
    DataSet = TLocalizador
    Left = 392
    Top = 56
  end
  object TEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DEmpresa'
    RemoteServer = FDMSistema.DSPGeral
    Left = 493
    Top = 8
    object TEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object TEmpresaNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 200
    end
    object TEmpresaCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object TEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TEmpresaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object TEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99'
      Size = 50
    end
    object TEmpresaINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 50
    end
    object TEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object TEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object TEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TEmpresaSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object TEmpresaEMAILENV: TStringField
      FieldName = 'EMAILENV'
      Size = 100
    end
    object TEmpresaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object TEmpresaSMTP: TStringField
      FieldName = 'SMTP'
      Size = 100
    end
    object TEmpresaSENHAMAIL: TStringField
      FieldName = 'SENHAMAIL'
      Size = 100
    end
    object TEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TEmpresaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object TEmpresaFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEmpresaFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEmpresaFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEmpresaCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TEmpresaREGIMETRIBUTARIO: TStringField
      FieldName = 'REGIMETRIBUTARIO'
      Size = 10
    end
    object TEmpresaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TEmpresaLOGO: TStringField
      FieldName = 'LOGO'
      Size = 255
    end
    object TEmpresaLOGODANFE: TStringField
      FieldName = 'LOGODANFE'
      Size = 255
    end
    object TEmpresaLOGORECIBO: TStringField
      FieldName = 'LOGORECIBO'
      Size = 255
    end
    object TEmpresaCERTIFICADO: TStringField
      FieldName = 'CERTIFICADO'
      Size = 255
    end
    object TEmpresaCAMINHOCERT: TStringField
      FieldName = 'CAMINHOCERT'
      Size = 255
    end
    object TEmpresaSENHACERT: TStringField
      FieldName = 'SENHACERT'
      Size = 100
    end
    object TEmpresaTIPOAMB: TIntegerField
      FieldName = 'TIPOAMB'
    end
    object TEmpresaPROXY: TStringField
      FieldName = 'PROXY'
      Size = 1
    end
    object TEmpresaHOST: TStringField
      FieldName = 'HOST'
      Size = 50
    end
    object TEmpresaPORTAPROX: TIntegerField
      FieldName = 'PORTAPROX'
    end
    object TEmpresaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object TEmpresaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object TEmpresaCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object TEmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 200
    end
    object TEmpresaCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TEmpresaTXTMAILNFE: TMemoField
      FieldName = 'TXTMAILNFE'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaASSUNTOMAILNFE: TMemoField
      FieldName = 'ASSUNTOMAILNFE'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaINSCESTST: TStringField
      FieldName = 'INSCESTST'
      Size = 50
    end
    object TEmpresaDATA: TDateField
      FieldName = 'DATA'
    end
    object TEmpresaGERACREDICMS: TStringField
      FieldName = 'GERACREDICMS'
      Size = 1
    end
    object TEmpresaDESCCREDICMS: TStringField
      FieldName = 'DESCCREDICMS'
      Size = 200
    end
    object TEmpresaFATURAMENTO: TFloatField
      FieldName = 'FATURAMENTO'
    end
    object TEmpresaALIQCREDICMS: TFloatField
      FieldName = 'ALIQCREDICMS'
    end
    object TEmpresaDATAAPURCRED: TDateField
      FieldName = 'DATAAPURCRED'
    end
    object TEmpresaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 1
    end
    object TEmpresaCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TEmpresaSERIECTE: TStringField
      FieldName = 'SERIECTE'
      Size = 1
    end
    object TEmpresaASSUNTOMAILBOLETO: TMemoField
      FieldName = 'ASSUNTOMAILBOLETO'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaTXTMAILBOLETO: TMemoField
      FieldName = 'TXTMAILBOLETO'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaTIPOAMBCTE: TIntegerField
      FieldName = 'TIPOAMBCTE'
    end
    object TEmpresaRNTRC: TStringField
      FieldName = 'RNTRC'
    end
    object TEmpresaFRASESIMPLES: TStringField
      FieldName = 'FRASESIMPLES'
      Size = 255
    end
    object TEmpresaNOMEETIQ: TStringField
      FieldName = 'NOMEETIQ'
      Size = 50
    end
    object TEmpresaALIQCREDICMSMANUAL: TFloatField
      FieldName = 'ALIQCREDICMSMANUAL'
    end
    object TEmpresaBASECREDMANUAL: TFloatField
      FieldName = 'BASECREDMANUAL'
    end
    object TEmpresaBASECRED: TFloatField
      FieldName = 'BASECRED'
    end
    object TEmpresaNFEPERSONALIZAR: TStringField
      FieldName = 'NFEPERSONALIZAR'
      Size = 1
    end
    object TEmpresaNFEFORMATO: TStringField
      FieldName = 'NFEFORMATO'
    end
    object TEmpresaNFEALTFOLHA: TFloatField
      FieldName = 'NFEALTFOLHA'
    end
    object TEmpresaNFELARGFOLHA: TFloatField
      FieldName = 'NFELARGFOLHA'
    end
    object TEmpresaNFEMARGEMS: TFloatField
      FieldName = 'NFEMARGEMS'
    end
    object TEmpresaNFEMARGEMI: TFloatField
      FieldName = 'NFEMARGEMI'
    end
    object TEmpresaNFEMARGEME: TFloatField
      FieldName = 'NFEMARGEME'
    end
    object TEmpresaNFEMARGEMD: TFloatField
      FieldName = 'NFEMARGEMD'
    end
    object TEmpresaNFERECIBO: TStringField
      FieldName = 'NFERECIBO'
      Size = 10
    end
    object TEmpresaCTEPERSONALIZAR: TStringField
      FieldName = 'CTEPERSONALIZAR'
      Size = 1
    end
    object TEmpresaCTEFORMATO: TStringField
      FieldName = 'CTEFORMATO'
    end
    object TEmpresaCTEALTFOLHA: TFloatField
      FieldName = 'CTEALTFOLHA'
    end
    object TEmpresaCTELARGFOLHA: TFloatField
      FieldName = 'CTELARGFOLHA'
    end
    object TEmpresaCTEMARGEMS: TFloatField
      FieldName = 'CTEMARGEMS'
    end
    object TEmpresaCTEMARGEMI: TFloatField
      FieldName = 'CTEMARGEMI'
    end
    object TEmpresaCTEMARGEME: TFloatField
      FieldName = 'CTEMARGEME'
    end
    object TEmpresaCTEMARGEMD: TFloatField
      FieldName = 'CTEMARGEMD'
    end
    object TEmpresaCTERECIBO: TStringField
      FieldName = 'CTERECIBO'
      Size = 10
    end
    object TEmpresaMODELONOTASERV: TStringField
      FieldName = 'MODELONOTASERV'
    end
    object TEmpresaMODELOCONHEC: TStringField
      FieldName = 'MODELOCONHEC'
      Size = 50
    end
    object TEmpresaSERIESERV: TStringField
      FieldName = 'SERIESERV'
      Size = 1
    end
    object TEmpresaCPFRESPONSAVEL: TStringField
      FieldName = 'CPFRESPONSAVEL'
    end
    object TEmpresaFATURAMENTOMANUAL: TFloatField
      FieldName = 'FATURAMENTOMANUAL'
    end
    object TEmpresaBASECREDICMSMANUAL: TFloatField
      FieldName = 'BASECREDICMSMANUAL'
    end
    object TEmpresaOSASSISTENCIA: TMemoField
      FieldName = 'OSASSISTENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaOSASSISRETIRADA: TMemoField
      FieldName = 'OSASSISRETIRADA'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaIM: TStringField
      FieldName = 'IM'
      Size = 30
    end
    object TEmpresaSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object TEmpresaATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 50
    end
    object TEmpresaTIPOAMBNFSE: TIntegerField
      FieldName = 'TIPOAMBNFSE'
    end
    object TEmpresaREGIMETRIBESP: TStringField
      FieldName = 'REGIMETRIBESP'
      Size = 50
    end
    object TEmpresaINCENTIVADORCULTURAL: TStringField
      FieldName = 'INCENTIVADORCULTURAL'
      Size = 1
    end
    object TEmpresaLOGOPREFEITURA: TStringField
      FieldName = 'LOGOPREFEITURA'
      Size = 255
    end
    object TEmpresaINSCMUNIC: TStringField
      FieldName = 'INSCMUNIC'
      Size = 50
    end
    object TEmpresaFRASECUPOM: TStringField
      FieldName = 'FRASECUPOM'
      Size = 255
    end
    object TEmpresaSERIESCAN: TIntegerField
      FieldName = 'SERIESCAN'
    end
    object TEmpresaCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object TEmpresaNOMEPAIS: TStringField
      FieldName = 'NOMEPAIS'
      Size = 100
    end
    object TEmpresaULTLOTENFSE: TIntegerField
      FieldName = 'ULTLOTENFSE'
    end
    object TEmpresaCODASSOCIADO: TStringField
      FieldName = 'CODASSOCIADO'
      Size = 50
    end
    object TEmpresaENTIDADE: TStringField
      FieldName = 'ENTIDADE'
      Size = 50
    end
    object TEmpresaCODFINANCEIRA: TIntegerField
      FieldName = 'CODFINANCEIRA'
    end
    object TEmpresaLOGINFINANCEIRA: TStringField
      FieldName = 'LOGINFINANCEIRA'
      Size = 100
    end
    object TEmpresaSENHAFINANCEIRA: TStringField
      FieldName = 'SENHAFINANCEIRA'
      Size = 100
    end
    object TEmpresaSENHAASSOCIACAO: TStringField
      FieldName = 'SENHAASSOCIACAO'
      Size = 50
    end
    object TEmpresaCODACESSASSOCIADO: TStringField
      FieldName = 'CODACESSASSOCIADO'
      Size = 50
    end
    object TEmpresaTIPOCONSULTAASSOCIA: TStringField
      FieldName = 'TIPOCONSULTAASSOCIA'
      Size = 10
    end
    object TEmpresaDATAVENCCERTIFICADO: TDateField
      FieldName = 'DATAVENCCERTIFICADO'
    end
    object TEmpresaTEL0800: TStringField
      FieldName = 'TEL0800'
    end
    object TEmpresaDTALT: TDateField
      FieldName = 'DTALT'
    end
    object TEmpresaUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TEmpresaDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
    end
    object TEmpresaPERCIMPOSTOCAIXA: TFloatField
      FieldName = 'PERCIMPOSTOCAIXA'
    end
    object TEmpresaCODLISTATRAT: TIntegerField
      FieldName = 'CODLISTATRAT'
    end
    object TEmpresaLOGOVERTICAL: TStringField
      FieldName = 'LOGOVERTICAL'
      Size = 255
    end
    object TEmpresaCODCONTABANCBOLETO: TIntegerField
      FieldName = 'CODCONTABANCBOLETO'
    end
    object TEmpresaNOMECONTABANCBOLETO: TStringField
      FieldName = 'NOMECONTABANCBOLETO'
      Size = 100
    end
    object TEmpresaFTPSPC: TStringField
      FieldName = 'FTPSPC'
      Size = 200
    end
    object TEmpresaLOGINFTPSPC: TStringField
      FieldName = 'LOGINFTPSPC'
      Size = 50
    end
    object TEmpresaSENHAFTPSPC: TStringField
      FieldName = 'SENHAFTPSPC'
      Size = 50
    end
    object TEmpresaSERVPADRAONFSE: TIntegerField
      FieldName = 'SERVPADRAONFSE'
    end
    object TEmpresaCCEMAIL: TStringField
      FieldName = 'CCEMAIL'
      Size = 200
    end
    object TEmpresaTIPOAMBNFCE: TIntegerField
      FieldName = 'TIPOAMBNFCE'
    end
    object TEmpresaIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Size = 50
    end
    object TEmpresaCSC: TStringField
      FieldName = 'CSC'
      Size = 100
    end
    object TEmpresaDESCORCAMENTO: TMemoField
      FieldName = 'DESCORCAMENTO'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaREDESOCIAL: TStringField
      FieldName = 'REDESOCIAL'
      Size = 200
    end
    object TEmpresaDESCPEDVENDA: TMemoField
      FieldName = 'DESCPEDVENDA'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaDESCOS: TMemoField
      FieldName = 'DESCOS'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaSENHAWS: TStringField
      FieldName = 'SENHAWS'
      Size = 50
    end
    object TEmpresaTIPOAMBMDFE: TIntegerField
      FieldName = 'TIPOAMBMDFE'
    end
    object TEmpresaTIPOEMISMDFE: TStringField
      FieldName = 'TIPOEMISMDFE'
      Size = 50
    end
    object TEmpresaSERIEMDFE: TStringField
      FieldName = 'SERIEMDFE'
      Size = 1
    end
    object TEmpresaPERCIMPSIMPLES: TFloatField
      FieldName = 'PERCIMPSIMPLES'
    end
    object TEmpresaPOSTO: TStringField
      FieldName = 'POSTO'
      Size = 1
    end
    object TEmpresaREGISTROJUNTA: TStringField
      FieldName = 'REGISTROJUNTA'
      Size = 50
    end
    object TEmpresaDATAREGJUNTA: TDateField
      FieldName = 'DATAREGJUNTA'
    end
    object TEmpresaDISTRIBUIDORA: TStringField
      FieldName = 'DISTRIBUIDORA'
      Size = 200
    end
    object TEmpresaCAPARMAZENACOMB: TFloatField
      FieldName = 'CAPARMAZENACOMB'
    end
    object TEmpresaSELOQUALIT: TStringField
      FieldName = 'SELOQUALIT'
      Size = 255
    end
    object TEmpresaLOTE: TStringField
      FieldName = 'LOTE'
      Size = 1
    end
    object TEmpresaRGRESPONSAVEL: TStringField
      FieldName = 'RGRESPONSAVEL'
    end
    object TEmpresaTAMANHOLOGOREL: TIntegerField
      FieldName = 'TAMANHOLOGOREL'
    end
    object TEmpresaPERCCOMIS: TFloatField
      FieldName = 'PERCCOMIS'
    end
    object TEmpresaLOGONSERASA: TStringField
      FieldName = 'LOGONSERASA'
      Size = 50
    end
    object TEmpresaSENHASERASA: TStringField
      FieldName = 'SENHASERASA'
      Size = 50
    end
    object TEmpresaENDFINANC: TStringField
      FieldName = 'ENDFINANC'
      Size = 200
    end
    object TEmpresaSERIECAIXA: TStringField
      FieldName = 'SERIECAIXA'
      Size = 1
    end
    object TEmpresaCODPRODSPC: TStringField
      FieldName = 'CODPRODSPC'
    end
    object TEmpresaULTNSU: TIntegerField
      FieldName = 'ULTNSU'
    end
    object TEmpresaDTULTCONNSU: TDateField
      FieldName = 'DTULTCONNSU'
    end
    object TEmpresaULTNSUCTE: TIntegerField
      FieldName = 'ULTNSUCTE'
    end
    object TEmpresaDTULTCONNSUCTE: TDateField
      FieldName = 'DTULTCONNSUCTE'
    end
    object TEmpresaPRODRURAL: TStringField
      FieldName = 'PRODRURAL'
      Size = 1
    end
    object TEmpresaCPF: TStringField
      FieldName = 'CPF'
    end
    object TEmpresaTXTMAILCTE: TMemoField
      FieldName = 'TXTMAILCTE'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaASSUNTOMAILCTE: TStringField
      FieldName = 'ASSUNTOMAILCTE'
      Size = 200
    end
    object TEmpresaTAMANHOLOGODANFE: TIntegerField
      FieldName = 'TAMANHOLOGODANFE'
    end
    object TEmpresaTAMANHOLOGODANFESERV: TIntegerField
      FieldName = 'TAMANHOLOGODANFESERV'
    end
    object TEmpresaNAOGERANOTA: TStringField
      FieldName = 'NAOGERANOTA'
      Size = 1
    end
    object TEmpresaENVNUMNFMAIL: TStringField
      FieldName = 'ENVNUMNFMAIL'
      Size = 1
    end
    object TEmpresaENVNUMCTEMAIL: TStringField
      FieldName = 'ENVNUMCTEMAIL'
      Size = 1
    end
    object TEmpresaCAMINHOALTERCTE: TStringField
      FieldName = 'CAMINHOALTERCTE'
      Size = 500
    end
    object TEmpresaCAMINHOALTERNFE: TStringField
      FieldName = 'CAMINHOALTERNFE'
      Size = 500
    end
    object TEmpresaSERVIDORSPC: TStringField
      FieldName = 'SERVIDORSPC'
    end
    object TEmpresaCAMINHOALTERNFEENTR: TStringField
      FieldName = 'CAMINHOALTERNFEENTR'
      Size = 500
    end
    object TEmpresaCAMINHOALTERNFEPDF: TStringField
      FieldName = 'CAMINHOALTERNFEPDF'
      Size = 500
    end
    object TEmpresaCAMINHOALTERNFEPDFENTR: TStringField
      FieldName = 'CAMINHOALTERNFEPDFENTR'
      Size = 500
    end
    object TEmpresaCAMINHOALTERCTEPDF: TStringField
      FieldName = 'CAMINHOALTERCTEPDF'
      Size = 500
    end
    object TEmpresaIMAGEMQRCODEPIX: TStringField
      FieldName = 'IMAGEMQRCODEPIX'
      Size = 500
    end
    object TEmpresaUSUARIOWS: TStringField
      FieldName = 'USUARIOWS'
      Size = 50
    end
    object TEmpresaCHAVEACESSOWS: TStringField
      FieldName = 'CHAVEACESSOWS'
      Size = 200
    end
    object TEmpresaCHAVEAUTORIZACAOWS: TStringField
      FieldName = 'CHAVEAUTORIZACAOWS'
      Size = 200
    end
    object TEmpresaFRASESECRETAWS: TStringField
      FieldName = 'FRASESECRETAWS'
      Size = 200
    end
    object TEmpresaSERVICOSEMPRENOMUNIC: TStringField
      FieldName = 'SERVICOSEMPRENOMUNIC'
      Size = 1
    end
    object TEmpresaCHAVEECOMMERCE: TStringField
      FieldName = 'CHAVEECOMMERCE'
      Size = 100
    end
    object TEmpresaPLATAFORMA: TStringField
      FieldName = 'PLATAFORMA'
      Size = 50
    end
    object TEmpresaCAMINHOALTERMDFE: TStringField
      FieldName = 'CAMINHOALTERMDFE'
      Size = 500
    end
    object TEmpresaMARCADAGUA: TStringField
      FieldName = 'MARCADAGUA'
      Size = 1
    end
    object TEmpresaTIPOTRATAMENTO: TStringField
      FieldName = 'TIPOTRATAMENTO'
      Size = 50
    end
    object TEmpresaHORAULTCONNSU: TTimeField
      FieldName = 'HORAULTCONNSU'
    end
    object TEmpresaHORAULTCONNSUCTE: TTimeField
      FieldName = 'HORAULTCONNSUCTE'
    end
    object TEmpresaDTULTVERIFICACAOCERT: TDateField
      FieldName = 'DTULTVERIFICACAOCERT'
    end
    object TEmpresaCCEMAILFISCAL: TStringField
      FieldName = 'CCEMAILFISCAL'
      Size = 200
    end
    object TEmpresaMETODOENVMAIL: TStringField
      FieldName = 'METODOENVMAIL'
      Size = 50
    end
    object TEmpresaSERVAUTENT: TStringField
      FieldName = 'SERVAUTENT'
      Size = 1
    end
    object TEmpresaSSL: TStringField
      FieldName = 'SSL'
      Size = 1
    end
    object TEmpresaTLS: TStringField
      FieldName = 'TLS'
      Size = 1
    end
    object TEmpresaTXTMAILPEDIDO: TMemoField
      FieldName = 'TXTMAILPEDIDO'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaASSUNTOMAILPEDIDO: TStringField
      FieldName = 'ASSUNTOMAILPEDIDO'
      Size = 200
    end
    object TEmpresaTXTMAILPEDIDOINIPROD: TMemoField
      FieldName = 'TXTMAILPEDIDOINIPROD'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaASSUNTOMAILPEDIDOINIPROD: TStringField
      FieldName = 'ASSUNTOMAILPEDIDOINIPROD'
      Size = 200
    end
    object TEmpresaTXTMAILPEDIDOFIMPROD: TMemoField
      FieldName = 'TXTMAILPEDIDOFIMPROD'
      BlobType = ftMemo
      Size = 1
    end
    object TEmpresaASSUNTOMAILPEDIDOFIMPROD: TStringField
      FieldName = 'ASSUNTOMAILPEDIDOFIMPROD'
      Size = 200
    end
    object TEmpresaASSUNTOMAILORCAMENTO: TStringField
      FieldName = 'ASSUNTOMAILORCAMENTO'
      Size = 200
    end
    object TEmpresaTXTMAILORCAMENTO: TMemoField
      FieldName = 'TXTMAILORCAMENTO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DEmpresa: TDataSource
    DataSet = TEmpresa
    Left = 493
    Top = 56
  end
  object TCondPag: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DCondPag'
    RemoteServer = FDMSistema.DSPGeral
    AfterScroll = TCondPagAfterScroll
    OnReconcileError = TCondPagReconcileError
    Left = 24
    Top = 104
    object TCondPagCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCondPagNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TCondPagSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TCondPagPROPORCIONAL: TStringField
      FieldName = 'PROPORCIONAL'
      Size = 1
    end
    object TCondPagOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TCondPagCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TCondPagDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object TCondPagNUMPARC: TIntegerField
      FieldName = 'NUMPARC'
    end
    object TCondPagINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object TCondPagJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object TCondPagDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TCondPagMULTAATRASO: TFloatField
      FieldName = 'MULTAATRASO'
    end
    object TCondPagJURDIARIO: TFloatField
      FieldName = 'JURDIARIO'
    end
    object TCondPagVENDA: TStringField
      FieldName = 'VENDA'
      Size = 1
    end
    object TCondPagLIMITE: TFloatField
      FieldName = 'LIMITE'
      currency = True
    end
    object TCondPagPERCCARTAO: TFloatField
      FieldName = 'PERCCARTAO'
    end
    object TCondPagDIAFIXO: TIntegerField
      FieldName = 'DIAFIXO'
    end
    object TCondPagMOBILE: TStringField
      FieldName = 'MOBILE'
      Size = 1
    end
    object TCondPagCARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object TCondPagVALORMINPARC: TFloatField
      FieldName = 'VALORMINPARC'
    end
    object TCondPagJUROSFINANC: TFloatField
      FieldName = 'JUROSFINANC'
    end
    object TCondPagUSARTAXA: TStringField
      FieldName = 'USARTAXA'
      Size = 1
    end
    object TCondPagENTRADAMINIMAPERC: TFloatField
      FieldName = 'ENTRADAMINIMAPERC'
    end
    object TCondPagVALORENTRADAMIN: TFloatField
      FieldName = 'VALORENTRADAMIN'
    end
    object TCondPagBONUS: TFloatField
      FieldName = 'BONUS'
    end
    object TCondPagCODTABELA: TIntegerField
      FieldName = 'CODTABELA'
    end
    object TCondPagVALORTAXAADICPARC: TFloatField
      FieldName = 'VALORTAXAADICPARC'
    end
    object TCondPagESPECIAL: TStringField
      FieldName = 'ESPECIAL'
      Size = 1
    end
  end
  object DCodPag: TDataSource
    DataSet = TCondPag
    Left = 24
    Top = 152
  end
  object TParcelas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CONDPAG'
    MasterFields = 'CODIGO'
    MasterSource = DCodPag
    Params = <
      item
        DataType = ftWideString
        Name = 'CONDPAG'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DParcelas'
    RemoteServer = FDMSistema.DSPGeral
    OnReconcileError = TParcelasReconcileError
    Left = 112
    Top = 104
    object TParcelasCONDPAG: TIntegerField
      FieldName = 'CONDPAG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TParcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TParcelasDIAS: TIntegerField
      FieldName = 'DIAS'
      Required = True
    end
    object TParcelasJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object TParcelasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TParcelasMULTA: TFloatField
      FieldName = 'MULTA'
    end
  end
  object DParcelas: TDataSource
    DataSet = TParcelas
    Left = 112
    Top = 152
  end
  object TAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DAtividade'
    RemoteServer = FDMSistema.DSPGeral
    Left = 304
    Top = 104
    object TAtividadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAtividadeCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object TAtividadeDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Required = True
    end
    object TAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TAtividadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TAtividadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
  end
  object DAtividade: TDataSource
    DataSet = TAtividade
    Left = 304
    Top = 152
  end
  object TMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DMunicipio'
    RemoteServer = FDMSistema.DSPGeral
    Left = 392
    Top = 104
    object TMunicipioID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMunicipioID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMunicipioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TMunicipioSIS: TStringField
      FieldName = 'SIS'
      Size = 1
    end
    object TMunicipioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TMunicipioCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
  end
  object DMunicipio: TDataSource
    DataSet = TMunicipio
    Left = 392
    Top = 152
  end
  object TTipoEmb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoEmb'
    RemoteServer = FDMSistema.DSPGeral
    Left = 493
    Top = 104
    object TTipoEmbCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TTipoEmbCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TTipoEmbDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TTipoEmbSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TTipoEmbOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object TTipoEmbSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 50
    end
  end
  object DTipoEmb: TDataSource
    DataSet = TTipoEmb
    Left = 493
    Top = 152
  end
  object QConServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConServico'
    RemoteServer = FDMSistema.DSPGeral
    Left = 24
    Top = 200
    object QConServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConServicoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConServicoVALORMEDIO: TFloatField
      FieldName = 'VALORMEDIO'
    end
    object QConServicoNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 200
    end
    object QConServicoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object QConServicoTEMPO: TTimeField
      FieldName = 'TEMPO'
    end
    object QConServicoUTILIZAREM: TStringField
      FieldName = 'UTILIZAREM'
      Size = 50
    end
    object QConServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 2000
    end
  end
  object DConServico: TDataSource
    DataSet = QConServico
    Left = 24
    Top = 248
  end
  object QConCondPag: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConCondPag'
    RemoteServer = FDMSistema.DSPGeral
    AfterScroll = QConCondPagAfterScroll
    Left = 208
    Top = 200
    object QConCondPagCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCondPagNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConCondPagSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConCondPagNUMPARC: TIntegerField
      FieldName = 'NUMPARC'
    end
    object QConCondPagESPECIAL: TStringField
      FieldName = 'ESPECIAL'
      Size = 1
    end
    object QConCondPagVENDA: TStringField
      FieldName = 'VENDA'
      Size = 1
    end
  end
  object DConCondPag: TDataSource
    DataSet = QConCondPag
    Left = 208
    Top = 248
  end
  object TPortador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPortador'
    RemoteServer = FDMSistema.DSPGeral
    Left = 304
    Top = 200
    object TPortadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPortadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object TPortadorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 200
    end
    object TPortadorSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TPortadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TPortadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object TPortadorUF: TStringField
      FieldName = 'UF'
      Size = 3
    end
    object TPortadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TPortadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object TPortadorCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object TPortadorAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object TPortadorNUMBANC: TStringField
      FieldName = 'NUMBANC'
    end
    object TPortadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
  end
  object DPortador: TDataSource
    DataSet = TPortador
    Left = 304
    Top = 248
  end
  object TMensagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DMensagem'
    RemoteServer = FDMSistema.DSPGeral
    Left = 392
    Top = 200
    object TMensagemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMensagemDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object TMensagemSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TMensagemCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TMensagemTIPOMENSAGEM: TIntegerField
      FieldName = 'TIPOMENSAGEM'
    end
    object TMensagemNTIPOMENSAGEM: TStringField
      FieldName = 'NTIPOMENSAGEM'
      Size = 200
    end
    object TMensagemNOME: TStringField
      FieldName = 'NOME'
      Size = 2000
    end
    object TMensagemOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object TMensagemINSEREAUTONOTAVENDA: TStringField
      FieldName = 'INSEREAUTONOTAVENDA'
      Size = 1
    end
    object TMensagemINSEREAUTOPEDVENDA: TStringField
      FieldName = 'INSEREAUTOPEDVENDA'
      Size = 1
    end
    object TMensagemINSEREAUTOORCVENDA: TStringField
      FieldName = 'INSEREAUTOORCVENDA'
      Size = 1
    end
    object TMensagemUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TMensagemDATAALT: TDateField
      FieldName = 'DATAALT'
    end
    object TMensagemCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object TMensagemINSEREAUTOORCSERV: TStringField
      FieldName = 'INSEREAUTOORCSERV'
      Size = 1
    end
    object TMensagemINSEREAUTOOS: TStringField
      FieldName = 'INSEREAUTOOS'
      Size = 1
    end
    object TMensagemINSEREAUTONOTASERV: TStringField
      FieldName = 'INSEREAUTONOTASERV'
      Size = 1
    end
    object TMensagemINSEREAUTOPEDCOMPRA: TStringField
      FieldName = 'INSEREAUTOPEDCOMPRA'
      Size = 1
    end
  end
  object DMensagem: TDataSource
    DataSet = TMensagem
    Left = 392
    Top = 248
  end
  object TRelCust: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftWideString
        Name = 'REL'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DRelCust'
    RemoteServer = FDMSistema.DSPGeral
    Left = 493
    Top = 200
    object TRelCustFORM: TStringField
      FieldName = 'FORM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object TRelCustCAMPO: TStringField
      FieldName = 'CAMPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TRelCustCOLUNA: TIntegerField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRelCustEXIBIR: TStringField
      FieldName = 'EXIBIR'
      FixedChar = True
      Size = 1
    end
    object TRelCustTITULO: TStringField
      FieldName = 'TITULO'
      Size = 25
    end
    object TRelCustSOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
    object TRelCustTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TRelCustTAMANHO: TLargeintField
      FieldName = 'TAMANHO'
    end
    object TRelCustLOCAL: TIntegerField
      FieldName = 'LOCAL'
    end
    object TRelCustAGRUPAR: TStringField
      FieldName = 'AGRUPAR'
      FixedChar = True
      Size = 1
    end
    object TRelCustREL: TIntegerField
      FieldName = 'REL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DRelCust: TDataSource
    DataSet = TRelCust
    Left = 493
    Top = 248
  end
  object TConfigRel: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftWideString
        Name = 'REL'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConfigRel'
    RemoteServer = FDMSistema.DSPGeral
    Left = 392
    Top = 296
    object TConfigRelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TConfigRelCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object TConfigRelCAMINHOLOGO: TStringField
      FieldName = 'CAMINHOLOGO'
      Size = 255
    end
    object TConfigRelFONTECABE: TStringField
      FieldName = 'FONTECABE'
      Size = 255
    end
    object TConfigRelFONTECORPO: TStringField
      FieldName = 'FONTECORPO'
      Size = 200
    end
    object TConfigRelCORCABE: TStringField
      FieldName = 'CORCABE'
      Size = 200
    end
    object TConfigRelCORCORPO: TStringField
      FieldName = 'CORCORPO'
      Size = 200
    end
    object TConfigRelTAMCABE: TFloatField
      FieldName = 'TAMCABE'
    end
    object TConfigRelTAMCORPO: TFloatField
      FieldName = 'TAMCORPO'
    end
    object TConfigRelMARGEMTOP: TFloatField
      FieldName = 'MARGEMTOP'
    end
    object TConfigRelMARGEMINF: TFloatField
      FieldName = 'MARGEMINF'
    end
    object TConfigRelMARGEMESQ: TFloatField
      FieldName = 'MARGEMESQ'
    end
    object TConfigRelMARGEMDIR: TFloatField
      FieldName = 'MARGEMDIR'
    end
    object TConfigRelORIENTACAO: TStringField
      FieldName = 'ORIENTACAO'
      Size = 50
    end
    object TConfigRelFORM: TStringField
      FieldName = 'FORM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TConfigRelREL: TIntegerField
      FieldName = 'REL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DConfigRel: TDataSource
    DataSet = TConfigRel
    Left = 392
    Top = 344
  end
  object TTipoMensagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoMensagem'
    RemoteServer = FDMSistema.DSPGeral
    Left = 112
    Top = 296
    object TTipoMensagemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TTipoMensagemNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TTipoMensagemDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object TTipoMensagemCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TTipoMensagemSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TTipoMensagemOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
  end
  object DTipoMensagem: TDataSource
    DataSet = TTipoMensagem
    Left = 112
    Top = 344
  end
  object TRelCustItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftWideString
        Name = 'REL'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DRelCustItem'
    RemoteServer = FDMSistema.DSPGeral
    AfterScroll = TRelCustItemAfterScroll
    Left = 584
    Top = 104
    object TRelCustItemFORM: TStringField
      FieldName = 'FORM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TRelCustItemREL: TIntegerField
      FieldName = 'REL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRelCustItemTABELA: TIntegerField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRelCustItemNTABELA: TStringField
      FieldName = 'NTABELA'
      Size = 50
    end
    object TRelCustItemEXIBIR: TStringField
      FieldName = 'EXIBIR'
      Size = 1
    end
    object TRelCustItemNTABLE: TStringField
      FieldName = 'NTABLE'
      Size = 50
    end
  end
  object DRelCustItem: TDataSource
    DataSet = TRelCustItem
    Left = 584
    Top = 152
  end
  object TRelCustItemIt: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FORM;TABELA;REL'
    MasterFields = 'FORM;TABELA;REL'
    MasterSource = DRelCustItem
    Params = <
      item
        DataType = ftWideString
        Name = 'FORM'
        ParamType = ptUnknown
        Value = ' '
      end
      item
        DataType = ftWideString
        Name = 'TABELA'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'REL'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DRelCustItemIt'
    RemoteServer = FDMSistema.DSPGeral
    Left = 584
    Top = 200
    object TRelCustItemItFORM: TStringField
      FieldName = 'FORM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 25
    end
    object TRelCustItemItCAMPO: TStringField
      FieldName = 'CAMPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TRelCustItemItTABELA: TIntegerField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRelCustItemItCOLUNA: TIntegerField
      FieldName = 'COLUNA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TRelCustItemItEXIBIR: TStringField
      FieldName = 'EXIBIR'
      FixedChar = True
      Size = 1
    end
    object TRelCustItemItTITULO: TStringField
      FieldName = 'TITULO'
      Size = 25
    end
    object TRelCustItemItSOMAR: TStringField
      FieldName = 'SOMAR'
      FixedChar = True
      Size = 1
    end
    object TRelCustItemItTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TRelCustItemItTAMANHO: TLargeintField
      FieldName = 'TAMANHO'
    end
    object TRelCustItemItLOCAL: TIntegerField
      FieldName = 'LOCAL'
    end
    object TRelCustItemItREL: TIntegerField
      FieldName = 'REL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DRelCustItemIt: TDataSource
    DataSet = TRelCustItemIt
    Left = 584
    Top = 248
  end
  object TConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConfig'
    RemoteServer = FDMSistema.DSPGeral
    Left = 584
    Top = 8
    object TConfigCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TConfigPRODMARGEM: TFloatField
      FieldName = 'PRODMARGEM'
    end
    object TConfigPAPELPAREDE: TStringField
      FieldName = 'PAPELPAREDE'
      Size = 255
    end
    object TConfigDESCONTOMAX: TFloatField
      FieldName = 'DESCONTOMAX'
    end
    object TConfigTIPOVENDAVENDA: TIntegerField
      FieldName = 'TIPOVENDAVENDA'
    end
    object TConfigTIPOVENDALICIT: TIntegerField
      FieldName = 'TIPOVENDALICIT'
    end
    object TConfigCODTIPOVENDA: TIntegerField
      FieldName = 'CODTIPOVENDA'
    end
    object TConfigALIQIR: TFloatField
      FieldName = 'ALIQIR'
    end
    object TConfigLICITACAO: TStringField
      FieldName = 'LICITACAO'
      Size = 1
    end
    object TConfigESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      Size = 1
    end
    object TConfigQUITADUPCOMP: TStringField
      FieldName = 'QUITADUPCOMP'
      Size = 1
    end
    object TConfigCENTRODECUSTO: TStringField
      FieldName = 'CENTRODECUSTO'
      Size = 1
    end
    object TConfigENVIAREMAILAUTO: TStringField
      FieldName = 'ENVIAREMAILAUTO'
      Size = 1
    end
    object TConfigSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 1
    end
    object TConfigCRM: TStringField
      FieldName = 'CRM'
      Size = 1
    end
    object TConfigGERAPDF: TStringField
      FieldName = 'GERAPDF'
      Size = 1
    end
    object TConfigUSARCODPROD: TStringField
      FieldName = 'USARCODPROD'
      Size = 1
    end
    object TConfigMOVBANC: TStringField
      FieldName = 'MOVBANC'
      Size = 1
    end
    object TConfigPCP: TStringField
      FieldName = 'PCP'
      Size = 1
    end
    object TConfigCTE: TStringField
      FieldName = 'CTE'
      Size = 1
    end
    object TConfigCODREMETENTE: TIntegerField
      FieldName = 'CODREMETENTE'
    end
    object TConfigPERIODOPROD: TIntegerField
      FieldName = 'PERIODOPROD'
    end
    object TConfigPESQCODBARRA: TStringField
      FieldName = 'PESQCODBARRA'
      Size = 1
    end
    object TConfigTIPOCALCCTE: TStringField
      FieldName = 'TIPOCALCCTE'
      Size = 1
    end
    object TConfigOBRIGCENTROCUSTO: TStringField
      FieldName = 'OBRIGCENTROCUSTO'
      Size = 1
    end
    object TConfigBAIXAESTPEDIDO: TStringField
      FieldName = 'BAIXAESTPEDIDO'
      Size = 1
    end
    object TConfigMOSTRARNUMCHEQUE: TStringField
      FieldName = 'MOSTRARNUMCHEQUE'
      Size = 1
    end
    object TConfigALIQICMSTFRETE: TFloatField
      FieldName = 'ALIQICMSTFRETE'
    end
    object TConfigALIQICMSFRETE: TFloatField
      FieldName = 'ALIQICMSFRETE'
    end
    object TConfigLOTE: TStringField
      FieldName = 'LOTE'
      Size = 1
    end
    object TConfigUSARCODCONS: TStringField
      FieldName = 'USARCODCONS'
      Size = 1
    end
    object TConfigTIPODANFE: TStringField
      FieldName = 'TIPODANFE'
      Size = 8
    end
    object TConfigNUMCOPIADANFE: TIntegerField
      FieldName = 'NUMCOPIADANFE'
    end
    object TConfigTIPOFRETEVENDA: TStringField
      FieldName = 'TIPOFRETEVENDA'
      Size = 50
    end
    object TConfigIMPRIMETRANS: TStringField
      FieldName = 'IMPRIMETRANS'
      Size = 1
    end
    object TConfigIMPRIMEENDENTREGA: TStringField
      FieldName = 'IMPRIMEENDENTREGA'
      Size = 1
    end
    object TConfigIMPRIMECOLUNAS: TStringField
      FieldName = 'IMPRIMECOLUNAS'
      Size = 1
    end
    object TConfigQUITARDUPVEND: TStringField
      FieldName = 'QUITARDUPVEND'
      Size = 1
    end
    object TConfigOTICA: TStringField
      FieldName = 'OTICA'
      Size = 1
    end
    object TConfigCOPIACODBARRAS: TStringField
      FieldName = 'COPIACODBARRAS'
      Size = 1
    end
    object TConfigUSARVALIDADELOTE: TStringField
      FieldName = 'USARVALIDADELOTE'
      Size = 1
    end
    object TConfigPRODUTORRURAL: TStringField
      FieldName = 'PRODUTORRURAL'
      Size = 1
    end
    object TConfigCLIREFPES: TStringField
      FieldName = 'CLIREFPES'
      Size = 1
    end
    object TConfigARREDVALINT: TStringField
      FieldName = 'ARREDVALINT'
      Size = 1
    end
    object TConfigLANCCHEQUEDUP: TStringField
      FieldName = 'LANCCHEQUEDUP'
      Size = 1
    end
    object TConfigDESCNATOPE: TStringField
      FieldName = 'DESCNATOPE'
      Size = 1
    end
    object TConfigMOSTRARVEICPEDVENDA: TStringField
      FieldName = 'MOSTRARVEICPEDVENDA'
      Size = 1
    end
    object TConfigTIPORELPED: TStringField
      FieldName = 'TIPORELPED'
    end
    object TConfigLANCRECCLI: TStringField
      FieldName = 'LANCRECCLI'
      Size = 1
    end
    object TConfigMFOLHARELPEDVENDA: TStringField
      FieldName = 'MFOLHARELPEDVENDA'
      Size = 1
    end
    object TConfigADDNOMEFANTOBS: TStringField
      FieldName = 'ADDNOMEFANTOBS'
      Size = 1
    end
    object TConfigPRODLISTA: TStringField
      FieldName = 'PRODLISTA'
      Size = 1
    end
    object TConfigRELSACADO: TStringField
      FieldName = 'RELSACADO'
      Size = 1
    end
    object TConfigMESAS: TIntegerField
      FieldName = 'MESAS'
    end
    object TConfigVALORFECHAATU: TStringField
      FieldName = 'VALORFECHAATU'
      Size = 1
    end
    object TConfigMODELOCONHECIMENTO: TStringField
      FieldName = 'MODELOCONHECIMENTO'
      Size = 50
    end
    object TConfigALTERANUMEROCONHEC: TStringField
      FieldName = 'ALTERANUMEROCONHEC'
      Size = 1
    end
    object TConfigCONDPAGDIFNABAIXA: TStringField
      FieldName = 'CONDPAGDIFNABAIXA'
      Size = 1
    end
    object TConfigCNPJNANOTACOMPRA: TStringField
      FieldName = 'CNPJNANOTACOMPRA'
      Size = 1
    end
    object TConfigPARCELAMANUALCOMPRA: TStringField
      FieldName = 'PARCELAMANUALCOMPRA'
      Size = 1
    end
    object TConfigAPROVPEDCOMPRA: TStringField
      FieldName = 'APROVPEDCOMPRA'
      Size = 1
    end
    object TConfigAPROVPEDVENDA: TStringField
      FieldName = 'APROVPEDVENDA'
      Size = 1
    end
    object TConfigAPROVPEDSERV: TStringField
      FieldName = 'APROVPEDSERV'
      Size = 1
    end
    object TConfigAPROVCONHECIMENTO: TStringField
      FieldName = 'APROVCONHECIMENTO'
      Size = 1
    end
    object TConfigAPROVDUPLICCOMPRABAIXA: TStringField
      FieldName = 'APROVDUPLICCOMPRABAIXA'
      Size = 1
    end
    object TConfigAPROVMOVDUPLICCOMPRA: TStringField
      FieldName = 'APROVMOVDUPLICCOMPRA'
      Size = 1
    end
    object TConfigAPROVDUPLICVENDABAIXA: TStringField
      FieldName = 'APROVDUPLICVENDABAIXA'
      Size = 1
    end
    object TConfigAPROVDUPLICVENDA: TStringField
      FieldName = 'APROVDUPLICVENDA'
      Size = 1
    end
    object TConfigMOSTRARFORNECLOTE: TStringField
      FieldName = 'MOSTRARFORNECLOTE'
      Size = 1
    end
    object TConfigUSARESTMIN: TStringField
      FieldName = 'USARESTMIN'
      Size = 1
    end
    object TConfigUSARCREDCLIENTE: TStringField
      FieldName = 'USARCREDCLIENTE'
      Size = 1
    end
    object TConfigCUSTOLOTE: TStringField
      FieldName = 'CUSTOLOTE'
      Size = 1
    end
    object TConfigCODCONDPAGTOMADOR: TIntegerField
      FieldName = 'CODCONDPAGTOMADOR'
    end
    object TConfigCODLOCALTOMADOR: TIntegerField
      FieldName = 'CODLOCALTOMADOR'
    end
    object TConfigCLIENTECLIMITECRED: TStringField
      FieldName = 'CLIENTECLIMITECRED'
      Size = 1
    end
    object TConfigEXIGIRPEDCOMPRA: TStringField
      FieldName = 'EXIGIRPEDCOMPRA'
      Size = 1
    end
    object TConfigTIPOCALCIPI: TStringField
      FieldName = 'TIPOCALCIPI'
    end
    object TConfigCODOCORTRANFSBANC: TIntegerField
      FieldName = 'CODOCORTRANFSBANC'
    end
    object TConfigNOCORTRANSFBANC: TStringField
      FieldName = 'NOCORTRANSFBANC'
      Size = 200
    end
    object TConfigADIANTAMENTO: TStringField
      FieldName = 'ADIANTAMENTO'
      Size = 1
    end
    object TConfigTIPODESCNATOPE: TStringField
      FieldName = 'TIPODESCNATOPE'
      Size = 1
    end
    object TConfigTIPORELPEDVENDA: TStringField
      FieldName = 'TIPORELPEDVENDA'
      Size = 50
    end
    object TConfigAPRAZOSEMDUPLICATA: TStringField
      FieldName = 'APRAZOSEMDUPLICATA'
      Size = 1
    end
    object TConfigCENTRODECUSTOPEDVENDA: TStringField
      FieldName = 'CENTRODECUSTOPEDVENDA'
      Size = 1
    end
    object TConfigCLINOMEFANTA: TStringField
      FieldName = 'CLINOMEFANTA'
      Size = 1
    end
    object TConfigLANCREDCLI: TStringField
      FieldName = 'LANCREDCLI'
      Size = 1
    end
    object TConfigGERADUPTOTNOTA: TStringField
      FieldName = 'GERADUPTOTNOTA'
      Size = 1
    end
    object TConfigCODBANCBOLETONOTA: TIntegerField
      FieldName = 'CODBANCBOLETONOTA'
    end
    object TConfigGERABOLETONOTAVENDA: TStringField
      FieldName = 'GERABOLETONOTAVENDA'
      Size = 1
    end
    object TConfigALTCODCLI: TStringField
      FieldName = 'ALTCODCLI'
      Size = 1
    end
    object TConfigTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      Size = 100
    end
    object TConfigUSARCOMISSAO: TStringField
      FieldName = 'USARCOMISSAO'
      Size = 1
    end
    object TConfigNOTASEMESTOQUE: TStringField
      FieldName = 'NOTASEMESTOQUE'
      Size = 1
    end
    object TConfigPEDIDOSEMESTOQUE: TStringField
      FieldName = 'PEDIDOSEMESTOQUE'
      Size = 1
    end
    object TConfigTIPOCALCCUSTO: TStringField
      FieldName = 'TIPOCALCCUSTO'
      Size = 200
    end
    object TConfigATUALIZASOMENTECUSTO: TStringField
      FieldName = 'ATUALIZASOMENTECUSTO'
      Size = 1
    end
    object TConfigMARGEMPROP: TStringField
      FieldName = 'MARGEMPROP'
      Size = 1
    end
    object TConfigMOSTRARPRECOORIG: TStringField
      FieldName = 'MOSTRARPRECOORIG'
      Size = 1
    end
    object TConfigCAMPOSOBRIGCLIFOR: TStringField
      FieldName = 'CAMPOSOBRIGCLIFOR'
      Size = 1
    end
    object TConfigUSARALIQDIFFRETE: TStringField
      FieldName = 'USARALIQDIFFRETE'
      Size = 1
    end
    object TConfigASSISTENCIATEC: TStringField
      FieldName = 'ASSISTENCIATEC'
      Size = 1
    end
    object TConfigMODELORELOS: TStringField
      FieldName = 'MODELORELOS'
      Size = 50
    end
    object TConfigMARGEMREGULADOR: TFloatField
      FieldName = 'MARGEMREGULADOR'
    end
    object TConfigVALORMINMOBILE: TFloatField
      FieldName = 'VALORMINMOBILE'
    end
    object TConfigCENTROCUSTODUPLIC: TStringField
      FieldName = 'CENTROCUSTODUPLIC'
      Size = 1
    end
    object TConfigMODELORESTAURANTE: TStringField
      FieldName = 'MODELORESTAURANTE'
      Size = 50
    end
    object TConfigTIPOCODBARRAS: TStringField
      FieldName = 'TIPOCODBARRAS'
      Size = 50
    end
    object TConfigGERAMOVBANCCAIXA: TStringField
      FieldName = 'GERAMOVBANCCAIXA'
      Size = 1
    end
    object TConfigVALORMINVENDMOBILE: TFloatField
      FieldName = 'VALORMINVENDMOBILE'
    end
    object TConfigQUITARDUPPEDVEND: TStringField
      FieldName = 'QUITARDUPPEDVEND'
      Size = 1
    end
    object TConfigBAIXAESTMODALIDADE: TStringField
      FieldName = 'BAIXAESTMODALIDADE'
      Size = 1
    end
    object TConfigGERANOTAENTCAIXA: TStringField
      FieldName = 'GERANOTAENTCAIXA'
      Size = 1
    end
    object TConfigTIPOSERVEMAIL: TStringField
      FieldName = 'TIPOSERVEMAIL'
      Size = 50
    end
    object TConfigRELAPLICESTOQUE: TStringField
      FieldName = 'RELAPLICESTOQUE'
      Size = 50
    end
    object TConfigGERABOLETOJUNTONOTA: TStringField
      FieldName = 'GERABOLETOJUNTONOTA'
      Size = 1
    end
    object TConfigDANFESOMADESCTOTPROD: TStringField
      FieldName = 'DANFESOMADESCTOTPROD'
      Size = 1
    end
    object TConfigNPERMITIRADDMESMOPROD: TStringField
      FieldName = 'NPERMITIRADDMESMOPROD'
      Size = 1
    end
    object TConfigDANFEVLRUNITSDESCONTO: TStringField
      FieldName = 'DANFEVLRUNITSDESCONTO'
      Size = 1
    end
    object TConfigDESCONSIDERARDESC: TStringField
      FieldName = 'DESCONSIDERARDESC'
      Size = 1
    end
    object TConfigCLINICA: TStringField
      FieldName = 'CLINICA'
      Size = 1
    end
    object TConfigTIPOCLINICA: TStringField
      FieldName = 'TIPOCLINICA'
      Size = 50
    end
    object TConfigCAMPOSOBRIGPROD: TStringField
      FieldName = 'CAMPOSOBRIGPROD'
      Size = 1
    end
    object TConfigGERLIC: TStringField
      FieldName = 'GERLIC'
      Size = 1
    end
    object TConfigRH: TStringField
      FieldName = 'RH'
      Size = 1
    end
    object TConfigCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 1
    end
    object TConfigIMAGEMCLIENTE: TStringField
      FieldName = 'IMAGEMCLIENTE'
      Size = 1
    end
    object TConfigPCODSITENTRADA: TIntegerField
      FieldName = 'PCODSITENTRADA'
    end
    object TConfigPCODSITSAIDA: TIntegerField
      FieldName = 'PCODSITSAIDA'
    end
    object TConfigPCODSITIPI: TIntegerField
      FieldName = 'PCODSITIPI'
    end
    object TConfigPCODSITPIS: TIntegerField
      FieldName = 'PCODSITPIS'
    end
    object TConfigPCODSITCOFINS: TIntegerField
      FieldName = 'PCODSITCOFINS'
    end
    object TConfigMODRELOSRETIRADA: TStringField
      FieldName = 'MODRELOSRETIRADA'
      Size = 50
    end
    object TConfigMODELORECIBO: TStringField
      FieldName = 'MODELORECIBO'
      Size = 50
    end
    object TConfigBAIXAESTOS: TStringField
      FieldName = 'BAIXAESTOS'
      Size = 1
    end
    object TConfigGERARDUPLICDTSAIDA: TStringField
      FieldName = 'GERARDUPLICDTSAIDA'
      Size = 1
    end
    object TConfigUSARVLRTABPRODACERTO: TStringField
      FieldName = 'USARVLRTABPRODACERTO'
      Size = 1
    end
    object TConfigSOMARPRODSOS: TStringField
      FieldName = 'SOMARPRODSOS'
      Size = 1
    end
    object TConfigMOSTRARNCMORCAMENTO: TStringField
      FieldName = 'MOSTRARNCMORCAMENTO'
      Size = 1
    end
    object TConfigPERGATUALVLRIMPPEDVENDA: TStringField
      FieldName = 'PERGATUALVLRIMPPEDVENDA'
      Size = 1
    end
    object TConfigCUSTOSOMARST: TStringField
      FieldName = 'CUSTOSOMARST'
      Size = 1
    end
    object TConfigCUSTOSOMARIPI: TStringField
      FieldName = 'CUSTOSOMARIPI'
      Size = 1
    end
    object TConfigPRECOVENDATABELADO: TStringField
      FieldName = 'PRECOVENDATABELADO'
      Size = 1
    end
    object TConfigUSARTABELAIBPT: TStringField
      FieldName = 'USARTABELAIBPT'
      Size = 1
    end
    object TConfigCODEMPNOCLIENTE: TStringField
      FieldName = 'CODEMPNOCLIENTE'
      Size = 1
    end
    object TConfigGERARNOTADEECF: TStringField
      FieldName = 'GERARNOTADEECF'
      Size = 1
    end
    object TConfigMODELOCARTACOBRANCA: TStringField
      FieldName = 'MODELOCARTACOBRANCA'
      Size = 50
    end
    object TConfigBOLETOAUTOJUNTONF: TStringField
      FieldName = 'BOLETOAUTOJUNTONF'
      Size = 1
    end
    object TConfigCODLOCALBOLETOAUTO: TIntegerField
      FieldName = 'CODLOCALBOLETOAUTO'
    end
    object TConfigUSARAUTMECANICA: TStringField
      FieldName = 'USARAUTMECANICA'
      Size = 1
    end
    object TConfigITENSABRETPRODAUTO: TStringField
      FieldName = 'ITENSABRETPRODAUTO'
      Size = 1
    end
    object TConfigFOCOULTIMOITEMADD: TStringField
      FieldName = 'FOCOULTIMOITEMADD'
      Size = 1
    end
    object TConfigMODELORELPEDCOMPRA: TStringField
      FieldName = 'MODELORELPEDCOMPRA'
      Size = 50
    end
    object TConfigEXIGIRPORTCONTREC: TStringField
      FieldName = 'EXIGIRPORTCONTREC'
      Size = 1
    end
    object TConfigCOPIAROBSDUPPMOV: TStringField
      FieldName = 'COPIAROBSDUPPMOV'
      Size = 1
    end
    object TConfigNAODESTACARDESCNFE: TStringField
      FieldName = 'NAODESTACARDESCNFE'
      Size = 1
    end
    object TConfigALTDTEMISNFSE: TStringField
      FieldName = 'ALTDTEMISNFSE'
      Size = 1
    end
    object TConfigUSARPESAGEM: TStringField
      FieldName = 'USARPESAGEM'
      Size = 1
    end
    object TConfigRELCONTRECEBCOBS: TStringField
      FieldName = 'RELCONTRECEBCOBS'
      Size = 1
    end
    object TConfigTIPORELORCAMENTO: TStringField
      FieldName = 'TIPORELORCAMENTO'
      Size = 50
    end
    object TConfigMOSTRARTOTCONHOTNFE: TStringField
      FieldName = 'MOSTRARTOTCONHOTNFE'
      Size = 1
    end
    object TConfigMODELOPROMISSORIA: TStringField
      FieldName = 'MODELOPROMISSORIA'
      Size = 50
    end
    object TConfigRENEGTERMOENTREGABOL: TStringField
      FieldName = 'RENEGTERMOENTREGABOL'
      Size = 1
    end
    object TConfigRENEGTERMORENEG: TStringField
      FieldName = 'RENEGTERMORENEG'
      Size = 1
    end
    object TConfigNESTORNAESTDEVOLUCAOPED: TStringField
      FieldName = 'NESTORNAESTDEVOLUCAOPED'
      Size = 1
    end
    object TConfigMSGCARNE: TStringField
      FieldName = 'MSGCARNE'
      Size = 400
    end
    object TConfigMOSTRARMANEQUIM: TStringField
      FieldName = 'MOSTRARMANEQUIM'
      Size = 1
    end
    object TConfigTIPOCONSULTACPF: TStringField
      FieldName = 'TIPOCONSULTACPF'
      Size = 50
    end
    object TConfigTIPOCONSULTACNPJ: TStringField
      FieldName = 'TIPOCONSULTACNPJ'
      Size = 50
    end
    object TConfigGERARINVENTDIARIO: TStringField
      FieldName = 'GERARINVENTDIARIO'
      Size = 1
    end
    object TConfigATUPROMODIARIO: TStringField
      FieldName = 'ATUPROMODIARIO'
      Size = 1
    end
    object TConfigCODBARIGUALCODIGO: TStringField
      FieldName = 'CODBARIGUALCODIGO'
      Size = 1
    end
    object TConfigIMPITENSSOMENTEFOR: TStringField
      FieldName = 'IMPITENSSOMENTEFOR'
      Size = 1
    end
    object TConfigADDTOTLIQOBSNFSE: TStringField
      FieldName = 'ADDTOTLIQOBSNFSE'
      Size = 1
    end
    object TConfigMOSTRARVLRBRUTOOBSDUP: TStringField
      FieldName = 'MOSTRARVLRBRUTOOBSDUP'
      Size = 1
    end
    object TConfigBUSCARCODCONPROD: TStringField
      FieldName = 'BUSCARCODCONPROD'
      Size = 50
    end
    object TConfigFONTECONSULTACEP: TStringField
      FieldName = 'FONTECONSULTACEP'
      Size = 50
    end
    object TConfigLEITORCODBARCONPROD: TStringField
      FieldName = 'LEITORCODBARCONPROD'
      Size = 1
    end
    object TConfigSELPRODBAIXAPEDVENDA: TStringField
      FieldName = 'SELPRODBAIXAPEDVENDA'
      Size = 1
    end
    object TConfigPERMALTCODPEDVENDA: TStringField
      FieldName = 'PERMALTCODPEDVENDA'
      Size = 1
    end
    object TConfigMODELORELORCCOMPRA: TStringField
      FieldName = 'MODELORELORCCOMPRA'
      Size = 50
    end
    object TConfigBAIXAESTSITOS: TStringField
      FieldName = 'BAIXAESTSITOS'
      Size = 1
    end
    object TConfigATUALIZANCM: TStringField
      FieldName = 'ATUALIZANCM'
      Size = 1
    end
    object TConfigADDMARCADANFE: TStringField
      FieldName = 'ADDMARCADANFE'
      Size = 1
    end
    object TConfigDANFESIMPLIFICADO: TStringField
      FieldName = 'DANFESIMPLIFICADO'
      Size = 1
    end
    object TConfigPERMALTDTORC: TStringField
      FieldName = 'PERMALTDTORC'
      Size = 1
    end
    object TConfigPUXARCODFABRICNOSITENS: TStringField
      FieldName = 'PUXARCODFABRICNOSITENS'
      Size = 1
    end
    object TConfigBLOQCADCLI: TStringField
      FieldName = 'BLOQCADCLI'
      Size = 1
    end
    object TConfigINFPEDIDONANF: TStringField
      FieldName = 'INFPEDIDONANF'
      Size = 1
    end
    object TConfigPOSTO: TStringField
      FieldName = 'POSTO'
      Size = 1
    end
    object TConfigIMOBILIARIA: TStringField
      FieldName = 'IMOBILIARIA'
      Size = 1
    end
    object TConfigGERAAUTOCARREGMANIFESTO: TStringField
      FieldName = 'GERAAUTOCARREGMANIFESTO'
      Size = 1
    end
    object TConfigCUSTOSOMARFRETE: TStringField
      FieldName = 'CUSTOSOMARFRETE'
      Size = 1
    end
    object TConfigMOSTRARCUSTOCADPROD: TStringField
      FieldName = 'MOSTRARCUSTOCADPROD'
      Size = 1
    end
    object TConfigFICHATECNAVENDA: TStringField
      FieldName = 'FICHATECNAVENDA'
      Size = 1
    end
    object TConfigPRODPERSONALIZADO: TStringField
      FieldName = 'PRODPERSONALIZADO'
      Size = 1
    end
    object TConfigATUALIZACUSTOFICHA: TStringField
      FieldName = 'ATUALIZACUSTOFICHA'
      Size = 1
    end
    object TConfigNMOSTRARREFBANC: TStringField
      FieldName = 'NMOSTRARREFBANC'
      Size = 1
    end
    object TConfigNMOSTRARREFCOM: TStringField
      FieldName = 'NMOSTRARREFCOM'
      Size = 1
    end
    object TConfigNMOSTRARDEP: TStringField
      FieldName = 'NMOSTRARDEP'
      Size = 1
    end
    object TConfigMOSTRARFDAPEDVENDA: TStringField
      FieldName = 'MOSTRARFDAPEDVENDA'
      Size = 1
    end
    object TConfigMOSTRARDOCSPEDVENDA: TStringField
      FieldName = 'MOSTRARDOCSPEDVENDA'
      Size = 1
    end
    object TConfigMOSTRARQUALITPEDVENDA: TStringField
      FieldName = 'MOSTRARQUALITPEDVENDA'
      Size = 1
    end
    object TConfigPEDVENDANANFSE: TStringField
      FieldName = 'PEDVENDANANFSE'
      Size = 1
    end
    object TConfigVERSOMENTECRMUSU: TStringField
      FieldName = 'VERSOMENTECRMUSU'
      Size = 1
    end
    object TConfigUSARMAILUSUARIO: TStringField
      FieldName = 'USARMAILUSUARIO'
      Size = 1
    end
    object TConfigDUPDEPEDIDO: TStringField
      FieldName = 'DUPDEPEDIDO'
      Size = 1
    end
    object TConfigVERTODOSCRMGRID: TStringField
      FieldName = 'VERTODOSCRMGRID'
      Size = 1
    end
    object TConfigCOMOCONHECEUOBRIG: TStringField
      FieldName = 'COMOCONHECEUOBRIG'
      Size = 1
    end
    object TConfigPRODPERSONALIZADOCOMRPA: TStringField
      FieldName = 'PRODPERSONALIZADOCOMRPA'
      Size = 1
    end
    object TConfigBAIXAESTFICHATEC: TStringField
      FieldName = 'BAIXAESTFICHATEC'
      Size = 1
    end
    object TConfigBAIXAESTORDEMPROD: TStringField
      FieldName = 'BAIXAESTORDEMPROD'
      Size = 1
    end
    object TConfigLIMITAREDICAOPEDVENDA: TStringField
      FieldName = 'LIMITAREDICAOPEDVENDA'
      Size = 1
    end
    object TConfigJOBROTATION: TStringField
      FieldName = 'JOBROTATION'
      Size = 1
    end
    object TConfigDIASJOBROTATION: TIntegerField
      FieldName = 'DIASJOBROTATION'
    end
    object TConfigACAOMKTOBRIGORC: TStringField
      FieldName = 'ACAOMKTOBRIGORC'
      Size = 1
    end
    object TConfigCOMISSAOSERVICO: TStringField
      FieldName = 'COMISSAOSERVICO'
      Size = 1
    end
    object TConfigMOSTRARFORNECITENSVENDA: TStringField
      FieldName = 'MOSTRARFORNECITENSVENDA'
      Size = 1
    end
    object TConfigNOBRIGCADEMPFAT: TStringField
      FieldName = 'NOBRIGCADEMPFAT'
      Size = 1
    end
    object TConfigMODELOORDEMPROD: TStringField
      FieldName = 'MODELOORDEMPROD'
      Size = 50
    end
    object TConfigCALCULARM3NANOTA: TStringField
      FieldName = 'CALCULARM3NANOTA'
      Size = 1
    end
    object TConfigCONTASPAGARSEQUENCIAL: TStringField
      FieldName = 'CONTASPAGARSEQUENCIAL'
      Size = 1
    end
    object TConfigORCCOMESTOQUE: TStringField
      FieldName = 'ORCCOMESTOQUE'
      Size = 1
    end
    object TConfigMFOLLOWNOPEDIDO: TStringField
      FieldName = 'MFOLLOWNOPEDIDO'
      Size = 1
    end
    object TConfigMFOLLOWNOORCA: TStringField
      FieldName = 'MFOLLOWNOORCA'
      Size = 1
    end
    object TConfigALTERAUNNANF: TStringField
      FieldName = 'ALTERAUNNANF'
      Size = 1
    end
    object TConfigGERAAUTOFOLLOWORC: TStringField
      FieldName = 'GERAAUTOFOLLOWORC'
      Size = 1
    end
    object TConfigDIASAUTOFOLLOWORC: TIntegerField
      FieldName = 'DIASAUTOFOLLOWORC'
    end
    object TConfigEDITARCRM: TStringField
      FieldName = 'EDITARCRM'
      Size = 1
    end
    object TConfigMORCNNOFOLLOWPRINCIPAL: TStringField
      FieldName = 'MORCNNOFOLLOWPRINCIPAL'
      Size = 1
    end
    object TConfigGERAFOLLOWCLIINATIV: TStringField
      FieldName = 'GERAFOLLOWCLIINATIV'
      Size = 1
    end
    object TConfigDIASGERAFOLLOWCLIINATIV: TIntegerField
      FieldName = 'DIASGERAFOLLOWCLIINATIV'
    end
    object TConfigMARCARFOLLOWATRASADO: TStringField
      FieldName = 'MARCARFOLLOWATRASADO'
      Size = 1
    end
    object TConfigCALCPISCOFINSNOTACOMPRA: TStringField
      FieldName = 'CALCPISCOFINSNOTACOMPRA'
      Size = 1
    end
    object TConfigCHECKLISTPEDVENDA: TStringField
      FieldName = 'CHECKLISTPEDVENDA'
      Size = 1
    end
    object TConfigESTETICA: TStringField
      FieldName = 'ESTETICA'
      Size = 1
    end
    object TConfigPSCODREGRAFISC: TIntegerField
      FieldName = 'PSCODREGRAFISC'
    end
    object TConfigPSCODREGRAPIS: TIntegerField
      FieldName = 'PSCODREGRAPIS'
    end
    object TConfigPSCODREGRACOFINS: TIntegerField
      FieldName = 'PSCODREGRACOFINS'
    end
    object TConfigTRAVAREMPFAT: TStringField
      FieldName = 'TRAVAREMPFAT'
      Size = 1
    end
    object TConfigCCNOCAIXALOCALIZADOR: TStringField
      FieldName = 'CCNOCAIXALOCALIZADOR'
      Size = 1
    end
    object TConfigTRAVARDESCONTOITENS: TStringField
      FieldName = 'TRAVARDESCONTOITENS'
      Size = 1
    end
    object TConfigPRODBENEFICIADO: TStringField
      FieldName = 'PRODBENEFICIADO'
      Size = 1
    end
    object TConfigDESCONTOPORLOC: TStringField
      FieldName = 'DESCONTOPORLOC'
      Size = 1
    end
    object TConfigEXIGIRAPROVDESC: TStringField
      FieldName = 'EXIGIRAPROVDESC'
      Size = 1
    end
    object TConfigACRESBENEFICIADO: TFloatField
      FieldName = 'ACRESBENEFICIADO'
    end
    object TConfigIMPPEDPRODUCAO: TStringField
      FieldName = 'IMPPEDPRODUCAO'
      Size = 1
    end
    object TConfigGERALOTEEMP: TStringField
      FieldName = 'GERALOTEEMP'
      Size = 1
    end
    object TConfigPRZENTREGADATA: TStringField
      FieldName = 'PRZENTREGADATA'
      Size = 1
    end
    object TConfigNALTVENCIMPXML: TStringField
      FieldName = 'NALTVENCIMPXML'
      Size = 1
    end
    object TConfigEXIGIRDUPNFSE: TStringField
      FieldName = 'EXIGIRDUPNFSE'
      Size = 1
    end
    object TConfigTIPOCALCLIMITE: TStringField
      FieldName = 'TIPOCALCLIMITE'
      Size = 50
    end
    object TConfigBLOQAJUDA: TStringField
      FieldName = 'BLOQAJUDA'
      Size = 1
    end
    object TConfigETAPAORDEMPROD: TStringField
      FieldName = 'ETAPAORDEMPROD'
      Size = 1
    end
    object TConfigTIPOPRODUCAO: TStringField
      FieldName = 'TIPOPRODUCAO'
      Size = 50
    end
    object TConfigFILTRARCLIFOLLOWVEND: TStringField
      FieldName = 'FILTRARCLIFOLLOWVEND'
      Size = 1
    end
    object TConfigMOSTRARPRODCRM: TStringField
      FieldName = 'MOSTRARPRODCRM'
      Size = 1
    end
    object TConfigMOSTRARSERVCRM: TStringField
      FieldName = 'MOSTRARSERVCRM'
      Size = 1
    end
    object TConfigMOSTRARDEPCRM: TStringField
      FieldName = 'MOSTRARDEPCRM'
      Size = 1
    end
    object TConfigBAIXAESTDETOS: TStringField
      FieldName = 'BAIXAESTDETOS'
      Size = 1
    end
    object TConfigMODELORELORCSERV: TStringField
      FieldName = 'MODELORELORCSERV'
      Size = 50
    end
    object TConfigLANCCONTABILCC: TStringField
      FieldName = 'LANCCONTABILCC'
      Size = 1
    end
    object TConfigGERACONTACCFORNEC: TStringField
      FieldName = 'GERACONTACCFORNEC'
      Size = 1
    end
    object TConfigCODCONTAPAGAUTO: TIntegerField
      FieldName = 'CODCONTAPAGAUTO'
    end
    object TConfigCLIPROD: TStringField
      FieldName = 'CLIPROD'
      Size = 1
    end
    object TConfigTIPOATENDMOBILE: TStringField
      FieldName = 'TIPOATENDMOBILE'
      Size = 50
    end
    object TConfigBAIXAESTNASINC: TStringField
      FieldName = 'BAIXAESTNASINC'
      Size = 1
    end
    object TConfigBLOQANAPEDIDO: TStringField
      FieldName = 'BLOQANAPEDIDO'
      Size = 1
    end
    object TConfigDUPLICRECEBOS: TStringField
      FieldName = 'DUPLICRECEBOS'
      Size = 1
    end
    object TConfigVERIFICAPENDFINANC: TStringField
      FieldName = 'VERIFICAPENDFINANC'
      Size = 1
    end
    object TConfigTIPOCLIFORAUTO: TStringField
      FieldName = 'TIPOCLIFORAUTO'
      Size = 1
    end
    object TConfigUFPADRAOTIPOCLI: TStringField
      FieldName = 'UFPADRAOTIPOCLI'
      Size = 2
    end
    object TConfigENVIARPPRODUCAO: TStringField
      FieldName = 'ENVIARPPRODUCAO'
      Size = 1
    end
    object TConfigUSARPRODLOCALIZADOR: TStringField
      FieldName = 'USARPRODLOCALIZADOR'
      Size = 1
    end
    object TConfigNMOSTRARDOCUMENTACAO: TStringField
      FieldName = 'NMOSTRARDOCUMENTACAO'
      Size = 1
    end
    object TConfigNMOSTRARPERIFERICO: TStringField
      FieldName = 'NMOSTRARPERIFERICO'
      Size = 1
    end
    object TConfigMOSTRARANTECIPACAO: TStringField
      FieldName = 'MOSTRARANTECIPACAO'
      Size = 1
    end
    object TConfigMARGEMPERSO: TFloatField
      FieldName = 'MARGEMPERSO'
    end
    object TConfigGERAWORKATUPROD: TStringField
      FieldName = 'GERAWORKATUPROD'
      Size = 1
    end
    object TConfigUSUWORKATUPROD: TIntegerField
      FieldName = 'USUWORKATUPROD'
    end
    object TConfigDIASATUPROD: TIntegerField
      FieldName = 'DIASATUPROD'
    end
    object TConfigPERMITIRALTCODCLI: TStringField
      FieldName = 'PERMITIRALTCODCLI'
      Size = 1
    end
    object TConfigMODULOCONTRATO: TStringField
      FieldName = 'MODULOCONTRATO'
      Size = 1
    end
    object TConfigOSSEMVALOR: TStringField
      FieldName = 'OSSEMVALOR'
      Size = 1
    end
    object TConfigMOSTRARDOCSOS: TStringField
      FieldName = 'MOSTRARDOCSOS'
      Size = 1
    end
    object TConfigALTCODCONTRATO: TStringField
      FieldName = 'ALTCODCONTRATO'
      Size = 1
    end
    object TConfigSELEMPFATDUPCONT: TStringField
      FieldName = 'SELEMPFATDUPCONT'
      Size = 1
    end
    object TConfigCLIENTEEQUIP: TStringField
      FieldName = 'CLIENTEEQUIP'
      Size = 1
    end
    object TConfigBLOQLIMITECRED: TStringField
      FieldName = 'BLOQLIMITECRED'
      Size = 1
    end
    object TConfigTIPOLICITACAO: TStringField
      FieldName = 'TIPOLICITACAO'
      Size = 50
    end
    object TConfigESPECORCSERV: TStringField
      FieldName = 'ESPECORCSERV'
      Size = 1
    end
    object TConfigDIGITARPRECOORIG: TStringField
      FieldName = 'DIGITARPRECOORIG'
      Size = 1
    end
    object TConfigATUITENSIMPNOTACOMPRASEQ: TStringField
      FieldName = 'ATUITENSIMPNOTACOMPRASEQ'
      Size = 1
    end
    object TConfigELEVADOR: TStringField
      FieldName = 'ELEVADOR'
      Size = 1
    end
    object TConfigMOSTRARRFT: TStringField
      FieldName = 'MOSTRARRFT'
      Size = 1
    end
    object TConfigULTCUSTOPEDCOMPRA: TStringField
      FieldName = 'ULTCUSTOPEDCOMPRA'
      Size = 1
    end
    object TConfigCOMPLCLICONT: TStringField
      FieldName = 'COMPLCLICONT'
      Size = 1
    end
    object TConfigGERAWORKNIVERCLI: TStringField
      FieldName = 'GERAWORKNIVERCLI'
      Size = 1
    end
    object TConfigUSUWORKNIVERCLI: TIntegerField
      FieldName = 'USUWORKNIVERCLI'
    end
    object TConfigAPROVORCAMENTO: TStringField
      FieldName = 'APROVORCAMENTO'
      Size = 1
    end
    object TConfigCASASPROD: TIntegerField
      FieldName = 'CASASPROD'
    end
    object TConfigNUMFABRICNOREL: TStringField
      FieldName = 'NUMFABRICNOREL'
      Size = 1
    end
    object TConfigNMOSTRARMARCADANFE: TStringField
      FieldName = 'NMOSTRARMARCADANFE'
      Size = 1
    end
    object TConfigGERADUPAUTO: TStringField
      FieldName = 'GERADUPAUTO'
      Size = 1
    end
    object TConfigPEDIRCCNABAIXADUP: TStringField
      FieldName = 'PEDIRCCNABAIXADUP'
      Size = 1
    end
    object TConfigMOSTRARBOLETONF: TStringField
      FieldName = 'MOSTRARBOLETONF'
      Size = 1
    end
    object TConfigEDITARCODCLI: TStringField
      FieldName = 'EDITARCODCLI'
      Size = 1
    end
    object TConfigCALCAUTOPOTEN: TStringField
      FieldName = 'CALCAUTOPOTEN'
      Size = 1
    end
    object TConfigENVNOTAPEDDUP: TStringField
      FieldName = 'ENVNOTAPEDDUP'
      Size = 1
    end
    object TConfigLIMITAREXCLUIRDUPVENDA: TStringField
      FieldName = 'LIMITAREXCLUIRDUPVENDA'
      Size = 1
    end
    object TConfigBLOQNATUREZANOCC: TStringField
      FieldName = 'BLOQNATUREZANOCC'
      Size = 1
    end
    object TConfigEXIGELANCCCNOFINANC: TStringField
      FieldName = 'EXIGELANCCCNOFINANC'
      Size = 1
    end
    object TConfigCOMISPRODBENEF: TFloatField
      FieldName = 'COMISPRODBENEF'
    end
    object TConfigCOMISPRODNAOBENEF: TFloatField
      FieldName = 'COMISPRODNAOBENEF'
    end
    object TConfigSOMAPRODTERC: TStringField
      FieldName = 'SOMAPRODTERC'
      Size = 1
    end
    object TConfigMOSTRARBOTAOCREDITO: TStringField
      FieldName = 'MOSTRARBOTAOCREDITO'
      Size = 1
    end
    object TConfigCLISEMPREMOBIBLE: TStringField
      FieldName = 'CLISEMPREMOBIBLE'
      Size = 1
    end
    object TConfigPRODSEMPREMOBILE: TStringField
      FieldName = 'PRODSEMPREMOBILE'
      Size = 1
    end
    object TConfigTIPOFRETEOBRIG: TStringField
      FieldName = 'TIPOFRETEOBRIG'
      Size = 1
    end
    object TConfigNAOALTERACONDPAG: TStringField
      FieldName = 'NAOALTERACONDPAG'
      Size = 1
    end
    object TConfigPERGATUALVLRIMPORCAMENTO: TStringField
      FieldName = 'PERGATUALVLRIMPORCAMENTO'
      Size = 1
    end
    object TConfigSEMPREATUVALORIMPORCAMENTO: TStringField
      FieldName = 'SEMPREATUVALORIMPORCAMENTO'
      Size = 1
    end
    object TConfigTIPODATALANCCC: TStringField
      FieldName = 'TIPODATALANCCC'
      Size = 50
    end
    object TConfigATUDATALANCCCNOPAG: TStringField
      FieldName = 'ATUDATALANCCCNOPAG'
      Size = 1
    end
    object TConfigATUALIZANOMECLI: TStringField
      FieldName = 'ATUALIZANOMECLI'
      Size = 1
    end
    object TConfigCONTASRECEBERSEQUENCIAL: TStringField
      FieldName = 'CONTASRECEBERSEQUENCIAL'
      Size = 1
    end
    object TConfigCHECKFILTROEMPRESA: TStringField
      FieldName = 'CHECKFILTROEMPRESA'
      Size = 1
    end
    object TConfigCENTROCUSTODUPLICVENDA: TStringField
      FieldName = 'CENTROCUSTODUPLICVENDA'
      Size = 1
    end
    object TConfigGERAPDFCTE: TStringField
      FieldName = 'GERAPDFCTE'
      Size = 1
    end
    object TConfigENVIAREMAILAUTOCTE: TStringField
      FieldName = 'ENVIAREMAILAUTOCTE'
      Size = 1
    end
    object TConfigABADESCONTONOTAVENDA: TStringField
      FieldName = 'ABADESCONTONOTAVENDA'
      Size = 1
    end
    object TConfigABAROMANEIO: TStringField
      FieldName = 'ABAROMANEIO'
      Size = 1
    end
    object TConfigNMOSTRARCONTCTE: TStringField
      FieldName = 'NMOSTRARCONTCTE'
      Size = 1
    end
    object TConfigNMOSTRARREDESPCTE: TStringField
      FieldName = 'NMOSTRARREDESPCTE'
      Size = 1
    end
    object TConfigNMOSTRARCLIDOC: TStringField
      FieldName = 'NMOSTRARCLIDOC'
      Size = 1
    end
    object TConfigNMOSTRARCLIIMAGEM: TStringField
      FieldName = 'NMOSTRARCLIIMAGEM'
      Size = 1
    end
    object TConfigBLOQEXCLUIRDUPVENDA: TStringField
      FieldName = 'BLOQEXCLUIRDUPVENDA'
      Size = 1
    end
    object TConfigBLOQEXCLUIRDUPCOMPRA: TStringField
      FieldName = 'BLOQEXCLUIRDUPCOMPRA'
      Size = 1
    end
    object TConfigLIMITAREXCLUIRDUPCOMPRA: TStringField
      FieldName = 'LIMITAREXCLUIRDUPCOMPRA'
      Size = 1
    end
    object TConfigMOSTRARCUSTONAVENDA: TStringField
      FieldName = 'MOSTRARCUSTONAVENDA'
      Size = 1
    end
    object TConfigMODELOLOCACAO: TStringField
      FieldName = 'MODELOLOCACAO'
      Size = 50
    end
    object TConfigLOCACAO: TStringField
      FieldName = 'LOCACAO'
      Size = 1
    end
    object TConfigMODELOETIQUETAEXPED: TStringField
      FieldName = 'MODELOETIQUETAEXPED'
      Size = 50
    end
    object TConfigLIBDESCVARIASBAIXAS: TStringField
      FieldName = 'LIBDESCVARIASBAIXAS'
      Size = 1
    end
    object TConfigSEMPRECONSFINAL: TStringField
      FieldName = 'SEMPRECONSFINAL'
      Size = 1
    end
    object TConfigEXTORNADUPNOEDITPEDVENDA: TStringField
      FieldName = 'EXTORNADUPNOEDITPEDVENDA'
      Size = 1
    end
    object TConfigSOLCOMPRASEMVALOR: TStringField
      FieldName = 'SOLCOMPRASEMVALOR'
      Size = 1
    end
    object TConfigMOSTRARACERTO: TStringField
      FieldName = 'MOSTRARACERTO'
      Size = 1
    end
    object TConfigSOMAPESONOTACTE: TStringField
      FieldName = 'SOMAPESONOTACTE'
      Size = 1
    end
    object TConfigMODELOTELACONTRATO: TStringField
      FieldName = 'MODELOTELACONTRATO'
      Size = 50
    end
    object TConfigENVCTEPARAMESMOMAIL: TStringField
      FieldName = 'ENVCTEPARAMESMOMAIL'
      Size = 1
    end
    object TConfigCREDRECEBCOMPRAS: TStringField
      FieldName = 'CREDRECEBCOMPRAS'
      Size = 1
    end
    object TConfigMOSTRADADOSPAGFOR: TStringField
      FieldName = 'MOSTRADADOSPAGFOR'
      Size = 1
    end
    object TConfigNBLOQQTDECONT: TStringField
      FieldName = 'NBLOQQTDECONT'
      Size = 1
    end
    object TConfigPET: TStringField
      FieldName = 'PET'
      Size = 1
    end
    object TConfigABADESCONTOSNOTACOMPRA: TStringField
      FieldName = 'ABADESCONTOSNOTACOMPRA'
      Size = 1
    end
    object TConfigCASASIMPOSTOS: TIntegerField
      FieldName = 'CASASIMPOSTOS'
    end
    object TConfigCOMISSAOPROGRESSIVA: TStringField
      FieldName = 'COMISSAOPROGRESSIVA'
      Size = 1
    end
    object TConfigPERMALTCOMISACAOMKT: TStringField
      FieldName = 'PERMALTCOMISACAOMKT'
      Size = 1
    end
    object TConfigTODASCONTASRECEBER: TStringField
      FieldName = 'TODASCONTASRECEBER'
      Size = 1
    end
    object TConfigPREVLANCANATELALANC: TStringField
      FieldName = 'PREVLANCANATELALANC'
      Size = 1
    end
    object TConfigHONRA: TStringField
      FieldName = 'HONRA'
      Size = 1
    end
    object TConfigAPLICPRODGERAPED: TStringField
      FieldName = 'APLICPRODGERAPED'
      Size = 1
    end
    object TConfigTFONTEITENSDANFE: TIntegerField
      FieldName = 'TFONTEITENSDANFE'
    end
    object TConfigADDPEDNADANFE: TStringField
      FieldName = 'ADDPEDNADANFE'
      Size = 1
    end
    object TConfigAPROVDUPLAPEDCOMPRA: TStringField
      FieldName = 'APROVDUPLAPEDCOMPRA'
      Size = 1
    end
    object TConfigLIMITEAPROVTECPEDCOM: TFloatField
      FieldName = 'LIMITEAPROVTECPEDCOM'
    end
    object TConfigBLOQCONMOVBANC: TStringField
      FieldName = 'BLOQCONMOVBANC'
      Size = 1
    end
    object TConfigUSARCRITERIOCOMPRA: TStringField
      FieldName = 'USARCRITERIOCOMPRA'
      Size = 1
    end
    object TConfigTIPOCRITERIO: TStringField
      FieldName = 'TIPOCRITERIO'
      Size = 50
    end
    object TConfigNAOGERARDUPPEDVENDA: TStringField
      FieldName = 'NAOGERARDUPPEDVENDA'
      Size = 1
    end
    object TConfigNATUALIZABOLETO: TStringField
      FieldName = 'NATUALIZABOLETO'
      Size = 1
    end
    object TConfigBLOQCANCCTE: TStringField
      FieldName = 'BLOQCANCCTE'
      Size = 1
    end
    object TConfigABAIMPDADOSCLIPOTEN: TStringField
      FieldName = 'ABAIMPDADOSCLIPOTEN'
      Size = 1
    end
    object TConfigBLOQBAIXASESTTRANSF: TStringField
      FieldName = 'BLOQBAIXASESTTRANSF'
      Size = 1
    end
    object TConfigBLOQBAIXASESTAPLIC: TStringField
      FieldName = 'BLOQBAIXASESTAPLIC'
      Size = 1
    end
    object TConfigBLOQFICHATEC: TStringField
      FieldName = 'BLOQFICHATEC'
      Size = 1
    end
    object TConfigUSARESTTOTALPBLOQ: TStringField
      FieldName = 'USARESTTOTALPBLOQ'
      Size = 1
    end
    object TConfigPORTADORNANF: TStringField
      FieldName = 'PORTADORNANF'
      Size = 1
    end
    object TConfigPUXARESTTOTALNAVENDA: TStringField
      FieldName = 'PUXARESTTOTALNAVENDA'
      Size = 1
    end
    object TConfigMOSTRACONFIGPLANOCONTA: TStringField
      FieldName = 'MOSTRACONFIGPLANOCONTA'
      Size = 1
    end
    object TConfigPUXANOMEPRODIMPNOTAC: TStringField
      FieldName = 'PUXANOMEPRODIMPNOTAC'
      Size = 1
    end
    object TConfigPESONACOMPRA: TStringField
      FieldName = 'PESONACOMPRA'
      Size = 1
    end
    object TConfigMULTIPLICAPESOCOMPRA: TStringField
      FieldName = 'MULTIPLICAPESOCOMPRA'
      Size = 1
    end
    object TConfigSOLCOMPRAEMITAPROV: TStringField
      FieldName = 'SOLCOMPRAEMITAPROV'
      Size = 1
    end
    object TConfigTEMPOATUALIZACAOTIMER: TIntegerField
      FieldName = 'TEMPOATUALIZACAOTIMER'
    end
    object TConfigBLOQSOLICITANTE: TStringField
      FieldName = 'BLOQSOLICITANTE'
      Size = 1
    end
    object TConfigMOSTRARFUNCCONT: TStringField
      FieldName = 'MOSTRARFUNCCONT'
      Size = 1
    end
    object TConfigLANCCONTENORMAL: TStringField
      FieldName = 'LANCCONTENORMAL'
      Size = 1
    end
    object TConfigNSOMARSUBITENS: TStringField
      FieldName = 'NSOMARSUBITENS'
      Size = 1
    end
    object TConfigPERCVLRMIN: TFloatField
      FieldName = 'PERCVLRMIN'
    end
    object TConfigPERCVLRMAX: TFloatField
      FieldName = 'PERCVLRMAX'
    end
    object TConfigABAART: TStringField
      FieldName = 'ABAART'
      Size = 1
    end
    object TConfigRELREQCOMPRASVALOR: TStringField
      FieldName = 'RELREQCOMPRASVALOR'
      Size = 1
    end
    object TConfigBAIXAEXTGESTPEDVENDA: TStringField
      FieldName = 'BAIXAEXTGESTPEDVENDA'
      Size = 1
    end
    object TConfigPUXAROBSCLIORCAMENTO: TStringField
      FieldName = 'PUXAROBSCLIORCAMENTO'
      Size = 1
    end
    object TConfigREFPRODNOORCAMENTO: TStringField
      FieldName = 'REFPRODNOORCAMENTO'
      Size = 1
    end
    object TConfigSALARIORH: TStringField
      FieldName = 'SALARIORH'
      Size = 1
    end
    object TConfigPESONAVENDA: TStringField
      FieldName = 'PESONAVENDA'
      Size = 1
    end
    object TConfigMULTIPLICAPESOVENDA: TStringField
      FieldName = 'MULTIPLICAPESOVENDA'
      Size = 1
    end
    object TConfigIMPITENSNAVENDA: TStringField
      FieldName = 'IMPITENSNAVENDA'
      Size = 1
    end
    object TConfigCALCRENDIMENTOFICHA: TStringField
      FieldName = 'CALCRENDIMENTOFICHA'
      Size = 1
    end
    object TConfigSOMAPESOFICHA: TStringField
      FieldName = 'SOMAPESOFICHA'
      Size = 1
    end
    object TConfigSOMASOMENTECUSTO: TStringField
      FieldName = 'SOMASOMENTECUSTO'
      Size = 1
    end
    object TConfigLIBREQREPROV: TStringField
      FieldName = 'LIBREQREPROV'
      Size = 1
    end
    object TConfigCHECKFILTROCONTABANC: TStringField
      FieldName = 'CHECKFILTROCONTABANC'
      Size = 1
    end
    object TConfigMODELORELSOLCOMPRA: TStringField
      FieldName = 'MODELORELSOLCOMPRA'
      Size = 50
    end
    object TConfigMODELORELREQCOMPRA: TStringField
      FieldName = 'MODELORELREQCOMPRA'
      Size = 50
    end
    object TConfigCARREGAMENTOCONT: TStringField
      FieldName = 'CARREGAMENTOCONT'
      Size = 1
    end
    object TConfigNEMITENOTAEMP: TStringField
      FieldName = 'NEMITENOTAEMP'
      Size = 1
    end
    object TConfigABAIMPRESSAOORC: TStringField
      FieldName = 'ABAIMPRESSAOORC'
      Size = 1
    end
    object TConfigMOSTRARQTDEPENDENTREGRE: TStringField
      FieldName = 'MOSTRARQTDEPENDENTREGRE'
      Size = 1
    end
    object TConfigALTTOTALNFCOMPRA: TStringField
      FieldName = 'ALTTOTALNFCOMPRA'
      Size = 1
    end
    object TConfigALTNUMNOTASERV: TStringField
      FieldName = 'ALTNUMNOTASERV'
      Size = 1
    end
    object TConfigCAMPOSCOMERCWORKFLOW: TStringField
      FieldName = 'CAMPOSCOMERCWORKFLOW'
      Size = 1
    end
    object TConfigDOISUSUWORKFLOW: TStringField
      FieldName = 'DOISUSUWORKFLOW'
      Size = 1
    end
    object TConfigUSUWORKATUPROD2: TIntegerField
      FieldName = 'USUWORKATUPROD2'
    end
    object TConfigWORKFLOW: TStringField
      FieldName = 'WORKFLOW'
      Size = 1
    end
    object TConfigLOTECOMPRIMENTO: TStringField
      FieldName = 'LOTECOMPRIMENTO'
      Size = 1
    end
    object TConfigACRESLOTE: TFloatField
      FieldName = 'ACRESLOTE'
    end
    object TConfigTAMACRES: TFloatField
      FieldName = 'TAMACRES'
    end
    object TConfigREGRASPORNCM: TStringField
      FieldName = 'REGRASPORNCM'
      Size = 1
    end
    object TConfigIMPOSTOSORCAMENTO: TStringField
      FieldName = 'IMPOSTOSORCAMENTO'
      Size = 1
    end
    object TConfigIMPOSTOSPEDIDO: TStringField
      FieldName = 'IMPOSTOSPEDIDO'
      Size = 1
    end
    object TConfigDISTGERARVENDA: TStringField
      FieldName = 'DISTGERARVENDA'
      Size = 1
    end
    object TConfigMULTIPLICAPORPOLEGADA: TStringField
      FieldName = 'MULTIPLICAPORPOLEGADA'
      Size = 1
    end
    object TConfigPROMISSORIA: TStringField
      FieldName = 'PROMISSORIA'
      Size = 1
    end
    object TConfigTRAVAANUAL: TStringField
      FieldName = 'TRAVAANUAL'
      Size = 1
    end
    object TConfigANOTRAVA: TIntegerField
      FieldName = 'ANOTRAVA'
    end
    object TConfigMODELORELCONTASRECEB: TStringField
      FieldName = 'MODELORELCONTASRECEB'
      Size = 50
    end
    object TConfigLIBIMPVENDANACOMP: TStringField
      FieldName = 'LIBIMPVENDANACOMP'
      Size = 1
    end
    object TConfigREGIMEFORNAREQCOMPRA: TStringField
      FieldName = 'REGIMEFORNAREQCOMPRA'
      Size = 1
    end
    object TConfigNOMEFORNACONPRODUTO: TStringField
      FieldName = 'NOMEFORNACONPRODUTO'
      Size = 1
    end
    object TConfigAJUSTACOMISCTE: TStringField
      FieldName = 'AJUSTACOMISCTE'
      Size = 1
    end
    object TConfigEDITARDATACOREST: TStringField
      FieldName = 'EDITARDATACOREST'
      Size = 1
    end
    object TConfigABASETORPCPPROD: TStringField
      FieldName = 'ABASETORPCPPROD'
      Size = 1
    end
    object TConfigMODELOTELAORDEMPROD: TStringField
      FieldName = 'MODELOTELAORDEMPROD'
      Size = 50
    end
    object TConfigMODELOFICHATEC: TStringField
      FieldName = 'MODELOFICHATEC'
      Size = 50
    end
    object TConfigGERAWORKNOTAPRODLOC: TStringField
      FieldName = 'GERAWORKNOTAPRODLOC'
      Size = 1
    end
    object TConfigGERAWORKNOTASERVLOC: TStringField
      FieldName = 'GERAWORKNOTASERVLOC'
      Size = 1
    end
    object TConfigUSUWORKNOTA: TIntegerField
      FieldName = 'USUWORKNOTA'
    end
    object TConfigCODLOCALWORKNOTA: TIntegerField
      FieldName = 'CODLOCALWORKNOTA'
    end
    object TConfigDIASWORKNOTA: TIntegerField
      FieldName = 'DIASWORKNOTA'
    end
    object TConfigMOSTRARBOLETOOS: TStringField
      FieldName = 'MOSTRARBOLETOOS'
      Size = 1
    end
    object TConfigMOSTRARBOLETONOTASERV: TStringField
      FieldName = 'MOSTRARBOLETONOTASERV'
      Size = 1
    end
    object TConfigSEMDUPNOTASERV: TStringField
      FieldName = 'SEMDUPNOTASERV'
      Size = 1
    end
    object TConfigCHAMADAVOIPCRM: TStringField
      FieldName = 'CHAMADAVOIPCRM'
      Size = 1
    end
    object TConfigEMPRESAVOIP: TStringField
      FieldName = 'EMPRESAVOIP'
      Size = 50
    end
    object TConfigPEGAHISTCHAMADAVOIP: TStringField
      FieldName = 'PEGAHISTCHAMADAVOIP'
      Size = 1
    end
    object TConfigCODUSUPRINVOIP: TIntegerField
      FieldName = 'CODUSUPRINVOIP'
    end
    object TConfigABAFERIASRH: TStringField
      FieldName = 'ABAFERIASRH'
      Size = 1
    end
    object TConfigBTLIGACAOFORNEC: TStringField
      FieldName = 'BTLIGACAOFORNEC'
      Size = 1
    end
    object TConfigINTEGRACAOECOMMERCE: TStringField
      FieldName = 'INTEGRACAOECOMMERCE'
      Size = 1
    end
    object TConfigANEXARDOCSFINANC: TStringField
      FieldName = 'ANEXARDOCSFINANC'
      Size = 1
    end
    object TConfigGERARCRMAPROVREPROVORC: TStringField
      FieldName = 'GERARCRMAPROVREPROVORC'
      Size = 1
    end
    object TConfigCHAVEPIXNAOBSFINANC: TStringField
      FieldName = 'CHAVEPIXNAOBSFINANC'
      Size = 1
    end
    object TConfigNOMENCLATURAMEDIDAS: TStringField
      FieldName = 'NOMENCLATURAMEDIDAS'
      Size = 50
    end
    object TConfigACRESBENEFICIADO2: TFloatField
      FieldName = 'ACRESBENEFICIADO2'
    end
    object TConfigGERARFOLLOWAUTONOTA: TStringField
      FieldName = 'GERARFOLLOWAUTONOTA'
      Size = 1
    end
    object TConfigDIASFOLLOWAUTONOTA: TIntegerField
      FieldName = 'DIASFOLLOWAUTONOTA'
    end
    object TConfigLOTEMESMOVALORPROD: TStringField
      FieldName = 'LOTEMESMOVALORPROD'
      Size = 1
    end
    object TConfigIMAGEMLOTE: TStringField
      FieldName = 'IMAGEMLOTE'
      Size = 1
    end
    object TConfigDUPLICARLOTE: TStringField
      FieldName = 'DUPLICARLOTE'
      Size = 1
    end
    object TConfigUSARREGRAENTRADA: TStringField
      FieldName = 'USARREGRAENTRADA'
      Size = 1
    end
    object TConfigSERVPERSONALIZADO: TStringField
      FieldName = 'SERVPERSONALIZADO'
      Size = 1
    end
    object TConfigPRODPERSONALIZADOSERV: TStringField
      FieldName = 'PRODPERSONALIZADOSERV'
      Size = 1
    end
    object TConfigADICVENCNAOBSNFSE: TStringField
      FieldName = 'ADICVENCNAOBSNFSE'
      Size = 1
    end
    object TConfigCONFIRMAMAIL: TStringField
      FieldName = 'CONFIRMAMAIL'
      Size = 1
    end
    object TConfigCHECKFILTROLOCALIZADOR: TStringField
      FieldName = 'CHECKFILTROLOCALIZADOR'
      Size = 1
    end
    object TConfigINTEGRAPORTARIA: TStringField
      FieldName = 'INTEGRAPORTARIA'
      Size = 1
    end
    object TConfigLINKCOMPRASOS: TStringField
      FieldName = 'LINKCOMPRASOS'
      Size = 1
    end
    object TConfigCHECKFILTROPORTADOR: TStringField
      FieldName = 'CHECKFILTROPORTADOR'
      Size = 1
    end
    object TConfigCENTROCUSTOPROD: TStringField
      FieldName = 'CENTROCUSTOPROD'
      Size = 1
    end
    object TConfigLIMITAREXCLUIRPEDVENDA: TStringField
      FieldName = 'LIMITAREXCLUIRPEDVENDA'
      Size = 1
    end
    object TConfigLIMITARBAIXADUPVENDA: TStringField
      FieldName = 'LIMITARBAIXADUPVENDA'
      Size = 1
    end
    object TConfigCAMPOSOBRIGFUNC: TStringField
      FieldName = 'CAMPOSOBRIGFUNC'
      Size = 1
    end
    object TConfigLIBNUMPEDAPLICPROD: TStringField
      FieldName = 'LIBNUMPEDAPLICPROD'
      Size = 1
    end
    object TConfigSELOSNACOMPRA: TStringField
      FieldName = 'SELOSNACOMPRA'
      Size = 1
    end
    object TConfigSELDATACONTASPAGARRECEB: TStringField
      FieldName = 'SELDATACONTASPAGARRECEB'
      Size = 1
    end
    object TConfigABABOLETOCRECEB: TStringField
      FieldName = 'ABABOLETOCRECEB'
      Size = 1
    end
    object TConfigORIGPADRAOPROD: TIntegerField
      FieldName = 'ORIGPADRAOPROD'
    end
    object TConfigRELCONTPAGARCOBS: TStringField
      FieldName = 'RELCONTPAGARCOBS'
      Size = 1
    end
    object TConfigARMANANF: TStringField
      FieldName = 'ARMANANF'
      Size = 1
    end
    object TConfigVERCLASSIFICACAOCLI: TStringField
      FieldName = 'VERCLASSIFICACAOCLI'
      Size = 1
    end
    object TConfigMFOLLOWNOPIPE: TStringField
      FieldName = 'MFOLLOWNOPIPE'
      Size = 1
    end
    object TConfigABRIRBOLETONANF: TStringField
      FieldName = 'ABRIRBOLETONANF'
      Size = 1
    end
    object TConfigEMPRESACRM: TStringField
      FieldName = 'EMPRESACRM'
      Size = 50
    end
    object TConfigSELVARIOSPEDSIMP: TStringField
      FieldName = 'SELVARIOSPEDSIMP'
      Size = 1
    end
    object TConfigFORNECVISITA: TStringField
      FieldName = 'FORNECVISITA'
      Size = 1
    end
    object TConfigTRANSPVISITA: TStringField
      FieldName = 'TRANSPVISITA'
      Size = 1
    end
    object TConfigSERVICOPIPELINE: TStringField
      FieldName = 'SERVICOPIPELINE'
      Size = 1
    end
    object TConfigCORITEMVENDA: TStringField
      FieldName = 'CORITEMVENDA'
      Size = 1
    end
    object TConfigRELCONTPAGARPAGSCOBS: TStringField
      FieldName = 'RELCONTPAGARPAGSCOBS'
      Size = 1
    end
    object TConfigRELCONTRECEBPAGSCOBS: TStringField
      FieldName = 'RELCONTRECEBPAGSCOBS'
      Size = 1
    end
    object TConfigCONVERTEMPERSO: TStringField
      FieldName = 'CONVERTEMPERSO'
      Size = 1
    end
    object TConfigBLOQPIPELINEPORVEND: TStringField
      FieldName = 'BLOQPIPELINEPORVEND'
      Size = 1
    end
    object TConfigEMPFATPARASIMPLES: TIntegerField
      FieldName = 'EMPFATPARASIMPLES'
    end
    object TConfigSELEMPFATPARASIMPLES: TStringField
      FieldName = 'SELEMPFATPARASIMPLES'
      Size = 1
    end
    object TConfigEXCLUIRBOLETOCOMREM: TStringField
      FieldName = 'EXCLUIRBOLETOCOMREM'
      Size = 1
    end
    object TConfigIMPDESCDAOBSNFCOMPRA: TStringField
      FieldName = 'IMPDESCDAOBSNFCOMPRA'
      Size = 1
    end
    object TConfigBLOQEXCLUIRMOVBANC: TStringField
      FieldName = 'BLOQEXCLUIRMOVBANC'
      Size = 1
    end
    object TConfigBLOQPRODPERSO: TStringField
      FieldName = 'BLOQPRODPERSO'
      Size = 1
    end
    object TConfigTEXTOGERARFOLLOWAUTONOTA: TStringField
      FieldName = 'TEXTOGERARFOLLOWAUTONOTA'
      Size = 200
    end
    object TConfigMODELOGERARFOLLOWAUTONOTA: TStringField
      FieldName = 'MODELOGERARFOLLOWAUTONOTA'
      Size = 50
    end
    object TConfigUSUGERARFOLLOWAUTONOTA: TIntegerField
      FieldName = 'USUGERARFOLLOWAUTONOTA'
    end
    object TConfigADVERSIDADEPORUSU: TStringField
      FieldName = 'ADVERSIDADEPORUSU'
      Size = 1
    end
    object TConfigGERARFOLLOWAUTONOTASERV: TStringField
      FieldName = 'GERARFOLLOWAUTONOTASERV'
      Size = 1
    end
  end
  object DConfig: TDataSource
    DataSet = TConfig
    Left = 584
    Top = 56
  end
  object QBuscaMunic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'DESCRICAO'
        ParamType = ptUnknown
        Value = 'a'
      end>
    ProviderName = 'DBuscaMunic'
    RemoteServer = FDMSistema.DSPGeral
    Left = 494
    Top = 296
    object QBuscaMunicID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Required = True
    end
    object QBuscaMunicID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      Required = True
    end
    object QBuscaMunicDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QBuscaMunicSIS: TStringField
      FieldName = 'SIS'
      Size = 1
    end
    object QBuscaMunicUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QBuscaMunicCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
  end
  object DBuscaMunic: TDataSource
    DataSet = QBuscaMunic
    Left = 494
    Top = 344
  end
  object THistoEnv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '99999'
      end>
    ProviderName = 'DHistoEnv'
    RemoteServer = FDMSistema.DSPGeral
    Left = 688
    Top = 8
    object THistoEnvCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object THistoEnvDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object THistoEnvASSUNTO: TMemoField
      FieldName = 'ASSUNTO'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvNUMEMAIL: TIntegerField
      FieldName = 'NUMEMAIL'
    end
    object THistoEnvCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object THistoEnvHORA: TSQLTimeStampField
      FieldName = 'HORA'
    end
    object THistoEnvDESTINO: TMemoField
      FieldName = 'DESTINO'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvCC: TMemoField
      FieldName = 'CC'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvCCO: TMemoField
      FieldName = 'CCO'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object THistoEnvARQUIVOS: TMemoField
      FieldName = 'ARQUIVOS'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
      Size = 1
    end
    object THistoEnvPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object THistoEnvREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Size = 50
    end
    object THistoEnvCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object THistoEnvNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
  end
  object DHistoEnv: TDataSource
    DataSet = THistoEnv
    Left = 688
    Top = 56
  end
  object QConEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConEmpresa'
    RemoteServer = FDMSistema.DSPGeral
    BeforeGetRecords = QConEmpresaBeforeGetRecords
    Left = 792
    Top = 8
    object QConEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object QConEmpresaNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 200
    end
    object QConEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 50
    end
    object QConEmpresaINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 50
    end
    object QConEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object QConEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object QConEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object QConEmpresaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object QConEmpresaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object DConEmpresa: TDataSource
    DataSet = QConEmpresa
    Left = 792
    Top = 64
  end
  object QConHistoEnv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '99999'
      end>
    ProviderName = 'DHistoEnv'
    RemoteServer = FDMSistema.DSPGeral
    Left = 688
    Top = 112
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object MemoField1: TMemoField
      FieldName = 'ASSUNTO'
      BlobType = ftMemo
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUMEMAIL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODUSU'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'HORA'
    end
    object MemoField2: TMemoField
      FieldName = 'DESTINO'
      BlobType = ftMemo
      Size = 1
    end
    object MemoField3: TMemoField
      FieldName = 'CC'
      BlobType = ftMemo
      Size = 1
    end
    object MemoField4: TMemoField
      FieldName = 'CCO'
      BlobType = ftMemo
      Size = 1
    end
    object StringField1: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object MemoField5: TMemoField
      FieldName = 'ARQUIVOS'
      BlobType = ftMemo
      Size = 1
    end
    object MemoField6: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'REMETENTE'
      Size = 50
    end
  end
  object DConHistoEnv: TDataSource
    DataSet = QConHistoEnv
    Left = 688
    Top = 160
  end
  object QEmpresaPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DEmpresaPesq'
    RemoteServer = FDMSistema.DSPGeral
    BeforeGetRecords = QEmpresaPesqBeforeGetRecords
    Left = 885
    Top = 15
    object QEmpresaPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QEmpresaPesqRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 200
    end
    object QEmpresaPesqNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 200
    end
    object QEmpresaPesqSERIE: TStringField
      FieldName = 'SERIE'
      Size = 1
    end
    object QEmpresaPesqSERIECTE: TStringField
      FieldName = 'SERIECTE'
      Size = 1
    end
    object QEmpresaPesqCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object QEmpresaPesqSERIESCAN: TIntegerField
      FieldName = 'SERIESCAN'
    end
    object QEmpresaPesqSERIESERV: TStringField
      FieldName = 'SERIESERV'
      Size = 1
    end
  end
  object DEmpresaPesq: TDataSource
    DataSet = QEmpresaPesq
    Left = 885
    Top = 64
  end
  object QServPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DServPesq'
    RemoteServer = FDMSistema.DSPGeral
    Left = 304
    Top = 312
    object QServPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QServPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QServPesqVALORMEDIO: TFloatField
      FieldName = 'VALORMEDIO'
    end
    object QServPesqCODREGRAFISC: TIntegerField
      FieldName = 'CODREGRAFISC'
    end
    object QServPesqCODREGRAPIS: TIntegerField
      FieldName = 'CODREGRAPIS'
    end
    object QServPesqCODREGRACOFINS: TIntegerField
      FieldName = 'CODREGRACOFINS'
    end
  end
  object DServPesq: TDataSource
    DataSet = QServPesq
    Left = 304
    Top = 360
  end
  object QMunicPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DMunicPesq'
    RemoteServer = FDMSistema.DSPGeral
    Left = 768
    Top = 304
    object QMunicPesqID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMunicPesqID_MUNICIPIO: TIntegerField
      FieldName = 'ID_MUNICIPIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMunicPesqDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QMunicPesqUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QMunicPesqCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
  end
  object DMunicPesq: TDataSource
    DataSet = QMunicPesq
    Left = 768
    Top = 352
  end
  object QBuscaContatos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'tipo'
        ParamType = ptUnknown
        Value = 'c'
      end
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DBuscaContatos'
    RemoteServer = FDMSistema.DSPGeral
    Left = 792
    Top = 113
    object QBuscaContatosNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QBuscaContatosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object QBuscaContatossel: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'sel'
    end
  end
  object DBuscaContatos: TDataSource
    DataSet = QBuscaContatos
    Left = 792
    Top = 161
  end
end
