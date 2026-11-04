object FDMCRM: TFDMCRM
  OldCreateOrder = False
  Height = 789
  Width = 1178
  object QConCliPoten: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConCliPoten'
    RemoteServer = FDMSistema.DSPCRM
    OnCalcFields = QConCliPotenCalcFields
    BeforeGetRecords = QConCliPotenBeforeGetRecords
    Left = 48
    Top = 16
    object QConCliPotencpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConCliPotenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliPotenNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConCliPotenNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConCliPotenPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConCliPotenCPF: TStringField
      FieldName = 'CPF'
    end
    object QConCliPotenCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConCliPotenUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConCliPotenSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConCliPotenFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object QConCliPotenCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object QConCliPotenSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConCliPotenFONE2: TStringField
      FieldName = 'FONE2'
    end
  end
  object DConCliPoten: TDataSource
    DataSet = QConCliPoten
    Left = 48
    Top = 80
  end
  object TCliPoten: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPCliPoten'
    RemoteServer = FDMSistema.DSPCRM
    AfterScroll = TCliPotenAfterScroll
    Left = 152
    Top = 19
    object TCliPotenCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliPotenCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliPotenUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TCliPotenNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TCliPotenCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99'
    end
    object TCliPotenINSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object TCliPotenCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;1;_'
    end
    object TCliPotenRG: TStringField
      FieldName = 'RG'
    end
    object TCliPotenENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TCliPotenNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TCliPotenBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TCliPotenCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TCliPotenUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCliPotenSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TCliPotenEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object TCliPotenFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object TCliPotenNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object TCliPotenOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TCliPotenPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object TCliPotenCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TCliPotenMAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object TCliPotenPAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object TCliPotenORGAOESP: TStringField
      FieldName = 'ORGAOESP'
      Size = 100
    end
    object TCliPotenCPFAVAL: TStringField
      FieldName = 'CPFAVAL'
      EditMask = '999.999.999.-99;1;_'
      Size = 100
    end
    object TCliPotenDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      OnGetText = TCliPotenDATACADGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TCliPotenDATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      OnGetText = TCliPotenDATAALTGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TCliPotenDTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
      EditMask = '!99/99/0099;1;_'
    end
    object TCliPotenDTNASCCONJU: TSQLTimeStampField
      FieldName = 'DTNASCCONJU'
      EditMask = '!99/99/0099;1;_'
    end
    object TCliPotenRENDA: TIntegerField
      FieldName = 'RENDA'
    end
    object TCliPotenTRABALHO: TStringField
      FieldName = 'TRABALHO'
      Size = 50
    end
    object TCliPotenCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object TCliPotenTRABCONJU: TStringField
      FieldName = 'TRABCONJU'
      Size = 50
    end
    object TCliPotenFONECONJU: TStringField
      FieldName = 'FONECONJU'
      Size = 50
    end
    object TCliPotenSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object TCliPotenESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 10
    end
    object TCliPotenESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object TCliPotenSALCONJU: TFloatField
      FieldName = 'SALCONJU'
      currency = True
    end
    object TCliPotenSALARIO: TFloatField
      FieldName = 'SALARIO'
      currency = True
    end
    object TCliPotenCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object TCliPotenCODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object TCliPotenNOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object TCliPotenCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TCliPotenNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object TCliPotenCODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object TCliPotenNOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object TCliPotenLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      currency = True
    end
    object TCliPotenVALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
      EditMask = '!99/99/0099;1;_'
    end
    object TCliPotenCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object TCliPotenNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object TCliPotenCODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object TCliPotenNOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object TCliPotenULTIMANOTA: TIntegerField
      FieldName = 'ULTIMANOTA'
    end
    object TCliPotenDATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
    end
    object TCliPotenCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object TCliPotenNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object TCliPotenSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object TCliPotenCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object TCliPotenTIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object TCliPotenDESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 100
    end
    object TCliPotenCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object TCliPotenCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TCliPotenCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TCliPotenFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
    end
  end
  object DCliPoten: TDataSource
    DataSet = TCliPoten
    Left = 152
    Top = 83
  end
  object DCliPotenCont: TDataSource
    DataSet = TCliPotenCont
    Left = 248
    Top = 80
  end
  object TCliPotenCont: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLIPOTEN;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliPoten
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLIPOTEN'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPCliPotenCont'
    RemoteServer = FDMSistema.DSPCRM
    Left = 248
    Top = 16
    object TCliPotenContCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliPotenContCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliPotenContITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliPotenContNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TCliPotenContFONE1: TStringField
      FieldName = 'FONE1'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenContFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenContFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenContFONE4: TStringField
      FieldName = 'FONE4'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenContEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TCliPotenContSETOR: TStringField
      FieldName = 'SETOR'
      Size = 100
    end
    object TCliPotenContRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object TCliPotenContRAMAL3: TStringField
      FieldName = 'RAMAL3'
      Size = 5
    end
    object TCliPotenContRAMAL4: TStringField
      FieldName = 'RAMAL4'
      Size = 5
    end
    object TCliPotenContFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliPotenContRAMALFAX: TStringField
      FieldName = 'RAMALFAX'
      Size = 5
    end
    object TCliPotenContRAMAL2: TStringField
      FieldName = 'RAMAL2'
      Size = 5
    end
  end
  object QConCliBusca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pessoa'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cpf'
        ParamType = ptUnknown
      end>
    ProviderName = 'DConCliBusca'
    RemoteServer = FDMSistema.DSPCRM
    Left = 48
    Top = 184
    object QConCliBuscacpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConCliBuscaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliBuscaNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConCliBuscaNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConCliBuscaPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConCliBuscaINSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object QConCliBuscaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConCliBuscaDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object QConCliBuscaCPF: TStringField
      FieldName = 'CPF'
    end
    object QConCliBuscaRG: TStringField
      FieldName = 'RG'
    end
    object QConCliBuscaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConCliBuscaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConCliBuscaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConCliBuscaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConCliBuscaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConCliBuscaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConCliBuscaFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object QConCliBuscaCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object DConCliBusca: TDataSource
    DataSet = QConCliBusca
    Left = 48
    Top = 248
  end
  object TVisita: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'codempfat'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DVisita'
    RemoteServer = FDMSistema.DSPCRM
    Left = 448
    Top = 16
    object TVisitaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TVisitaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TVisitaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TVisitaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object TVisitaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0099;1;_'
    end
    object TVisitaHORARIO: TTimeField
      FieldName = 'HORARIO'
      EditMask = '!90:00;1;_'
    end
    object TVisitaTEMPO: TTimeField
      FieldName = 'TEMPO'
      EditMask = '!90:00;1;_'
    end
    object TVisitaFIM: TTimeField
      FieldName = 'FIM'
      EditMask = '!90:00;1;_'
    end
    object TVisitaCODOBJETIVO: TIntegerField
      FieldName = 'CODOBJETIVO'
    end
    object TVisitaNOMEOBJETIVO: TStringField
      FieldName = 'NOMEOBJETIVO'
      Size = 200
    end
    object TVisitaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object TVisitaRESULTADO: TMemoField
      FieldName = 'RESULTADO'
      BlobType = ftMemo
      Size = 1
    end
    object TVisitaESCRICAO: TMemoField
      FieldName = 'ESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object TVisitaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object TVisitaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object TVisitaCODPROJETO: TIntegerField
      FieldName = 'CODPROJETO'
    end
    object TVisitaNOMEPROJETO: TStringField
      FieldName = 'NOMEPROJETO'
      Size = 150
    end
    object TVisitaCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object TVisitaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object TVisitaCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TVisitaNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object TVisitaDATAPROX: TDateField
      FieldName = 'DATAPROX'
      EditMask = '!99/99/0099;1;_'
    end
    object TVisitaHORAPROX: TTimeField
      FieldName = 'HORAPROX'
      EditMask = '!90:00;1;_'
    end
    object TVisitaPROXVISITA: TStringField
      FieldName = 'PROXVISITA'
      Size = 1
    end
    object TVisitaGERARAUTO: TStringField
      FieldName = 'GERARAUTO'
      Size = 1
    end
    object TVisitaCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object TVisitaNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object TVisitaCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
    end
    object TVisitaNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 100
    end
    object TVisitaCONTATO: TMemoField
      FieldName = 'CONTATO'
      BlobType = ftMemo
      Size = 1
    end
    object TVisitaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
    object TVisitaCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object TVisitaNOMEFOR: TStringField
      FieldName = 'NOMEFOR'
      Size = 100
    end
    object TVisitaCODTRANS: TIntegerField
      FieldName = 'CODTRANS'
    end
    object TVisitaNOMETRANS: TStringField
      FieldName = 'NOMETRANS'
      Size = 100
    end
    object TVisitaCODCLIPOTENCONT: TIntegerField
      FieldName = 'CODCLIPOTENCONT'
    end
    object TVisitaNOMECLIPOTENCONT: TStringField
      FieldName = 'NOMECLIPOTENCONT'
      Size = 100
    end
    object TVisitaCODTRANSCONT: TIntegerField
      FieldName = 'CODTRANSCONT'
    end
    object TVisitaNOMETRANSCONT: TStringField
      FieldName = 'NOMETRANSCONT'
      Size = 100
    end
    object TVisitaCODFORCONT: TIntegerField
      FieldName = 'CODFORCONT'
    end
    object TVisitaNOMEFORCONT: TStringField
      FieldName = 'NOMEFORCONT'
      Size = 100
    end
  end
  object DVisita: TDataSource
    DataSet = TVisita
    Left = 448
    Top = 80
  end
  object QConVisita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConVisita'
    RemoteServer = FDMSistema.DSPCRM
    Left = 536
    Top = 16
    object QConVisitaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConVisitaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConVisitaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConVisitaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConVisitaDATA: TDateField
      FieldName = 'DATA'
    end
    object QConVisitaHORARIO: TTimeField
      FieldName = 'HORARIO'
    end
    object QConVisitaTEMPO: TTimeField
      FieldName = 'TEMPO'
    end
    object QConVisitaFIM: TTimeField
      FieldName = 'FIM'
    end
    object QConVisitaCODOBJETIVO: TIntegerField
      FieldName = 'CODOBJETIVO'
    end
    object QConVisitaNOMEOBJETIVO: TStringField
      FieldName = 'NOMEOBJETIVO'
      Size = 200
    end
    object QConVisitaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object QConVisitaRESULTADO: TMemoField
      FieldName = 'RESULTADO'
      BlobType = ftMemo
      Size = 1
    end
    object QConVisitaESCRICAO: TMemoField
      FieldName = 'ESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object QConVisitaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object QConVisitaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object QConVisitaCODPROJETO: TIntegerField
      FieldName = 'CODPROJETO'
    end
    object QConVisitaNOMEPROJETO: TStringField
      FieldName = 'NOMEPROJETO'
      Size = 150
    end
    object QConVisitaCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConVisitaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 100
    end
    object QConVisitaCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConVisitaNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QConVisitaDATAPROX: TDateField
      FieldName = 'DATAPROX'
    end
    object QConVisitaHORAPROX: TTimeField
      FieldName = 'HORAPROX'
    end
    object QConVisitaPROXVISITA: TStringField
      FieldName = 'PROXVISITA'
      Size = 1
    end
    object QConVisitaGERARAUTO: TStringField
      FieldName = 'GERARAUTO'
      Size = 1
    end
    object QConVisitaCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
    end
    object QConVisitaNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object QConVisitaCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
    end
    object QConVisitaNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 100
    end
    object QConVisitaCONTATO: TMemoField
      FieldName = 'CONTATO'
      BlobType = ftMemo
      Size = 1
    end
    object QConVisitaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
    object QConVisitaCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object QConVisitaNOMEFOR: TStringField
      FieldName = 'NOMEFOR'
      Size = 100
    end
    object QConVisitaCODTRANS: TIntegerField
      FieldName = 'CODTRANS'
    end
    object QConVisitaNOMETRANS: TStringField
      FieldName = 'NOMETRANS'
      Size = 100
    end
    object QConVisitaCODCLIPOTENCONT: TIntegerField
      FieldName = 'CODCLIPOTENCONT'
    end
    object QConVisitaNOMECLIPOTENCONT: TStringField
      FieldName = 'NOMECLIPOTENCONT'
      Size = 100
    end
    object QConVisitaCODTRANSCONT: TIntegerField
      FieldName = 'CODTRANSCONT'
    end
    object QConVisitaNOMETRANSCONT: TStringField
      FieldName = 'NOMETRANSCONT'
      Size = 100
    end
    object QConVisitaCODFORCONT: TIntegerField
      FieldName = 'CODFORCONT'
    end
    object QConVisitaNOMEFORCONT: TStringField
      FieldName = 'NOMEFORCONT'
      Size = 100
    end
  end
  object DConVisita: TDataSource
    DataSet = QConVisita
    Left = 536
    Top = 80
  end
  object TObjetivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DObjetivo'
    RemoteServer = FDMSistema.DSPCRM
    Left = 48
    Top = 320
    object TObjetivoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TObjetivoCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TObjetivoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TObjetivoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TObjetivoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TObjetivoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
  end
  object DObjetivo: TDataSource
    DataSet = TObjetivo
    Left = 48
    Top = 384
  end
  object QObjetivoPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DObjetivoPesq'
    RemoteServer = FDMSistema.DSPCRM
    Left = 147
    Top = 320
    object QObjetivoPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QObjetivoPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DObjetivoPesq: TDataSource
    DataSet = QObjetivoPesq
    Left = 147
    Top = 384
  end
  object QCliPotenPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliPotenPesq'
    RemoteServer = FDMSistema.DSPCRM
    Left = 251
    Top = 472
    object QCliPotenPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QCliPotenPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DCliPotenPesq: TDataSource
    DataSet = QCliPotenPesq
    Left = 251
    Top = 536
  end
  object QCliPotenContPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliPotenContPesq'
    RemoteServer = FDMSistema.DSPCRM
    Left = 355
    Top = 472
    object QCliPotenContPesqCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
      Required = True
    end
    object QCliPotenContPesqITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QCliPotenContPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object DCliPotenContPesq: TDataSource
    DataSet = QCliPotenContPesq
    Left = 355
    Top = 536
  end
  object QProjetoPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DProjetoPesq'
    RemoteServer = FDMSistema.DSPCRM
    Left = 467
    Top = 320
    object QProjetoPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QProjetoPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DProjetoPesq: TDataSource
    DataSet = QProjetoPesq
    Left = 467
    Top = 384
  end
  object QConAgendaVend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConAgendaVend'
    RemoteServer = FDMSistema.DSPCRM
    Left = 891
    Top = 472
    object QConAgendaVendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConAgendaVendCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConAgendaVendCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConAgendaVendNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QConAgendaVendCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object QConAgendaVendHORARIO: TSQLTimeStampField
      FieldName = 'HORARIO'
    end
    object QConAgendaVendCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object QConAgendaVendNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object QConAgendaVendCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
    end
    object QConAgendaVendNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 200
    end
    object QConAgendaVendDATE: TDateField
      FieldName = 'DATE'
    end
    object QConAgendaVendSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConAgendaVendCODPROCEDIMENTO: TIntegerField
      FieldName = 'CODPROCEDIMENTO'
    end
    object QConAgendaVendNOMEPROCEDIMENTO: TStringField
      FieldName = 'NOMEPROCEDIMENTO'
      Size = 100
    end
    object QConAgendaVendOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object QConAgendaVendHORARIOCHEGADA: TTimeField
      FieldName = 'HORARIOCHEGADA'
    end
    object QConAgendaVendDATAREM: TDateField
      FieldName = 'DATAREM'
    end
    object QConAgendaVendHORAREM: TTimeField
      FieldName = 'HORAREM'
    end
    object QConAgendaVendNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConAgendaVendHORARIOFIM: TSQLTimeStampField
      FieldName = 'HORARIOFIM'
    end
    object QConAgendaVendHORAATEND: TTimeField
      FieldName = 'HORAATEND'
    end
    object QConAgendaVendAGENDEXISTENTE: TStringField
      FieldName = 'AGENDEXISTENTE'
      Size = 50
    end
    object QConAgendaVendQTDEAGEND: TIntegerField
      FieldName = 'QTDEAGEND'
    end
    object QConAgendaVendPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 50
    end
    object QConAgendaVendDIADOMES: TIntegerField
      FieldName = 'DIADOMES'
    end
    object QConAgendaVendDIASEMANA: TStringField
      FieldName = 'DIASEMANA'
      Size = 50
    end
    object QConAgendaVendRECORRENTE: TStringField
      FieldName = 'RECORRENTE'
      Size = 1
    end
    object QConAgendaVendDIATODO: TStringField
      FieldName = 'DIATODO'
      Size = 1
    end
    object QConAgendaVendLEMBRAR: TStringField
      FieldName = 'LEMBRAR'
      Size = 1
    end
    object QConAgendaVendLEMBRARDIA: TDateField
      FieldName = 'LEMBRARDIA'
    end
    object QConAgendaVendLEMBRARMINUTO: TIntegerField
      FieldName = 'LEMBRARMINUTO'
    end
    object QConAgendaVendCOR: TIntegerField
      FieldName = 'COR'
    end
    object QConAgendaVendCODCAMPANHA: TIntegerField
      FieldName = 'CODCAMPANHA'
    end
    object QConAgendaVendNOMECAMPANHA: TStringField
      FieldName = 'NOMECAMPANHA'
      Size = 100
    end
    object QConAgendaVendTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object QConAgendaVendOPCAO: TIntegerField
      FieldName = 'OPCAO'
    end
    object QConAgendaVendCODRECORRENCIA: TIntegerField
      FieldName = 'CODRECORRENCIA'
    end
    object QConAgendaVendESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QConAgendaVendHORAFIMATEND: TTimeField
      FieldName = 'HORAFIMATEND'
    end
    object QConAgendaVendMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 300
    end
    object QConAgendaVendCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      Size = 1
    end
  end
  object DConAgendaVend: TDataSource
    DataSet = QConAgendaVend
    Left = 891
    Top = 536
  end
  object QConAgendaUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConAgendaUser'
    RemoteServer = FDMSistema.DSPCRM
    Left = 987
    Top = 472
    object QConAgendaUserCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConAgendaUserCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConAgendaUserNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Size = 100
    end
    object QConAgendaUserCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object QConAgendaUserHORARIO: TSQLTimeStampField
      FieldName = 'HORARIO'
    end
    object QConAgendaUserCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object QConAgendaUserNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object QConAgendaUserCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
    end
    object QConAgendaUserNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 200
    end
    object QConAgendaUserDATE: TDateField
      FieldName = 'DATE'
    end
    object QConAgendaUserSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConAgendaUserCODPROCEDIMENTO: TIntegerField
      FieldName = 'CODPROCEDIMENTO'
    end
    object QConAgendaUserNOMEPROCEDIMENTO: TStringField
      FieldName = 'NOMEPROCEDIMENTO'
      Size = 100
    end
    object QConAgendaUserOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object QConAgendaUserHORARIOCHEGADA: TTimeField
      FieldName = 'HORARIOCHEGADA'
    end
    object QConAgendaUserDATAREM: TDateField
      FieldName = 'DATAREM'
    end
    object QConAgendaUserHORAREM: TTimeField
      FieldName = 'HORAREM'
    end
    object QConAgendaUserNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConAgendaUserHORARIOFIM: TSQLTimeStampField
      FieldName = 'HORARIOFIM'
    end
    object QConAgendaUserHORAATEND: TTimeField
      FieldName = 'HORAATEND'
    end
    object QConAgendaUserAGENDEXISTENTE: TStringField
      FieldName = 'AGENDEXISTENTE'
      Size = 50
    end
    object QConAgendaUserQTDEAGEND: TIntegerField
      FieldName = 'QTDEAGEND'
    end
    object QConAgendaUserPERIODICIDADE: TStringField
      FieldName = 'PERIODICIDADE'
      Size = 50
    end
    object QConAgendaUserDIADOMES: TIntegerField
      FieldName = 'DIADOMES'
    end
    object QConAgendaUserDIASEMANA: TStringField
      FieldName = 'DIASEMANA'
      Size = 50
    end
    object QConAgendaUserRECORRENTE: TStringField
      FieldName = 'RECORRENTE'
      Size = 1
    end
    object QConAgendaUserDIATODO: TStringField
      FieldName = 'DIATODO'
      Size = 1
    end
    object QConAgendaUserLEMBRAR: TStringField
      FieldName = 'LEMBRAR'
      Size = 1
    end
    object QConAgendaUserLEMBRARDIA: TDateField
      FieldName = 'LEMBRARDIA'
    end
    object QConAgendaUserLEMBRARMINUTO: TIntegerField
      FieldName = 'LEMBRARMINUTO'
    end
    object QConAgendaUserCOR: TIntegerField
      FieldName = 'COR'
    end
    object QConAgendaUserCODCAMPANHA: TIntegerField
      FieldName = 'CODCAMPANHA'
    end
    object QConAgendaUserNOMECAMPANHA: TStringField
      FieldName = 'NOMECAMPANHA'
      Size = 100
    end
    object QConAgendaUserTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object QConAgendaUserOPCAO: TIntegerField
      FieldName = 'OPCAO'
    end
    object QConAgendaUserCODRECORRENCIA: TIntegerField
      FieldName = 'CODRECORRENCIA'
    end
    object QConAgendaUserESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object QConAgendaUserHORAFIMATEND: TTimeField
      FieldName = 'HORAFIMATEND'
    end
    object QConAgendaUserMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 300
    end
    object QConAgendaUserCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      Size = 1
    end
  end
  object DConAGendaUser: TDataSource
    DataSet = QConAgendaUser
    Left = 987
    Top = 536
  end
  object TConfigAgendaVend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConfigAgendaVend'
    RemoteServer = FDMSistema.DSPCRM
    Left = 963
    Top = 312
    object TConfigAgendaVendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TConfigAgendaVendINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object TConfigAgendaVendSOMENTEHORATRAB: TStringField
      FieldName = 'SOMENTEHORATRAB'
      Size = 1
    end
    object TConfigAgendaVendINTERVALONPRESENCA: TIntegerField
      FieldName = 'INTERVALONPRESENCA'
    end
    object TConfigAgendaVendVENDPORPAGINA: TIntegerField
      FieldName = 'VENDPORPAGINA'
    end
    object TConfigAgendaVendHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object TConfigAgendaVendHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object TConfigAgendaVendSEGUNDA: TStringField
      FieldName = 'SEGUNDA'
      Size = 1
    end
    object TConfigAgendaVendTERCA: TStringField
      FieldName = 'TERCA'
      Size = 1
    end
    object TConfigAgendaVendQUARTA: TStringField
      FieldName = 'QUARTA'
      Size = 1
    end
    object TConfigAgendaVendQUINTA: TStringField
      FieldName = 'QUINTA'
      Size = 1
    end
    object TConfigAgendaVendSEXTA: TStringField
      FieldName = 'SEXTA'
      Size = 1
    end
    object TConfigAgendaVendSABADO: TStringField
      FieldName = 'SABADO'
      Size = 1
    end
    object TConfigAgendaVendDOMINGO: TStringField
      FieldName = 'DOMINGO'
      Size = 1
    end
    object TConfigAgendaVendCALENDARIOS: TStringField
      FieldName = 'CALENDARIOS'
      Size = 1
    end
    object TConfigAgendaVendCORPRESENCA: TIntegerField
      FieldName = 'CORPRESENCA'
    end
    object TConfigAgendaVendCORATRASO: TIntegerField
      FieldName = 'CORATRASO'
    end
    object TConfigAgendaVendCORATENDIMENTO: TIntegerField
      FieldName = 'CORATENDIMENTO'
    end
    object TConfigAgendaVendCORCONFIRMADO: TIntegerField
      FieldName = 'CORCONFIRMADO'
    end
    object TConfigAgendaVendCORFINALIZADO: TIntegerField
      FieldName = 'CORFINALIZADO'
    end
    object TConfigAgendaVendDATAINICIALPADRAO: TDateField
      FieldName = 'DATAINICIALPADRAO'
    end
    object TConfigAgendaVendDATAFINALPADRAO: TDateField
      FieldName = 'DATAFINALPADRAO'
    end
    object TConfigAgendaVendBLOQUEIACARGAHORARIA: TStringField
      FieldName = 'BLOQUEIACARGAHORARIA'
      Size = 1
    end
    object TConfigAgendaVendCODAGENDAMENTO: TIntegerField
      FieldName = 'CODAGENDAMENTO'
    end
    object TConfigAgendaVendCORDESMARCADO: TIntegerField
      FieldName = 'CORDESMARCADO'
    end
  end
  object DConfigAgendaVend: TDataSource
    DataSet = TConfigAgendaVend
    Left = 963
    Top = 376
  end
  object TConfigAgendaUser: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConfigAgendaUser'
    RemoteServer = FDMSistema.DSPCRM
    Left = 1075
    Top = 312
    object TConfigAgendaUserCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TConfigAgendaUserINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
    end
    object TConfigAgendaUserSOMENTEHORATRAB: TStringField
      FieldName = 'SOMENTEHORATRAB'
      Size = 1
    end
    object TConfigAgendaUserINTERVALONPRESENCA: TIntegerField
      FieldName = 'INTERVALONPRESENCA'
    end
    object TConfigAgendaUserHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object TConfigAgendaUserHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object TConfigAgendaUserSEGUNDA: TStringField
      FieldName = 'SEGUNDA'
      Size = 1
    end
    object TConfigAgendaUserTERCA: TStringField
      FieldName = 'TERCA'
      Size = 1
    end
    object TConfigAgendaUserQUARTA: TStringField
      FieldName = 'QUARTA'
      Size = 1
    end
    object TConfigAgendaUserQUINTA: TStringField
      FieldName = 'QUINTA'
      Size = 1
    end
    object TConfigAgendaUserSEXTA: TStringField
      FieldName = 'SEXTA'
      Size = 1
    end
    object TConfigAgendaUserSABADO: TStringField
      FieldName = 'SABADO'
      Size = 1
    end
    object TConfigAgendaUserDOMINGO: TStringField
      FieldName = 'DOMINGO'
      Size = 1
    end
    object TConfigAgendaUserCALENDARIOS: TStringField
      FieldName = 'CALENDARIOS'
      Size = 1
    end
    object TConfigAgendaUserCORPRESENCA: TIntegerField
      FieldName = 'CORPRESENCA'
    end
    object TConfigAgendaUserCORATRASO: TIntegerField
      FieldName = 'CORATRASO'
    end
    object TConfigAgendaUserCORATENDIMENTO: TIntegerField
      FieldName = 'CORATENDIMENTO'
    end
    object TConfigAgendaUserCORCONFIRMADO: TIntegerField
      FieldName = 'CORCONFIRMADO'
    end
    object TConfigAgendaUserCORFINALIZADO: TIntegerField
      FieldName = 'CORFINALIZADO'
    end
    object TConfigAgendaUserDATAINICIALPADRAO: TDateField
      FieldName = 'DATAINICIALPADRAO'
    end
    object TConfigAgendaUserDATAFINALPADRAO: TDateField
      FieldName = 'DATAFINALPADRAO'
    end
    object TConfigAgendaUserBLOQUEIACARGAHORARIA: TStringField
      FieldName = 'BLOQUEIACARGAHORARIA'
      Size = 1
    end
    object TConfigAgendaUserCODAGENDAMENTO: TIntegerField
      FieldName = 'CODAGENDAMENTO'
    end
    object TConfigAgendaUserCORDESMARCADO: TIntegerField
      FieldName = 'CORDESMARCADO'
    end
  end
  object DConfigAgendaUser: TDataSource
    DataSet = TConfigAgendaUser
    Left = 1075
    Top = 376
  end
  object TMalaDireta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DMalaDireta'
    RemoteServer = FDMSistema.DSPCRM
    Left = 579
    Top = 312
    object TMalaDiretaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 50
    end
    object TMalaDiretaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TMalaDiretaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object TMalaDiretaTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
      Size = 1
    end
    object TMalaDiretaANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftMemo
      Size = 1
    end
    object TMalaDiretaASSUNTO: TMemoField
      FieldName = 'ASSUNTO'
      BlobType = ftMemo
      Size = 1
    end
    object TMalaDiretaPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object TMalaDiretaREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Size = 50
    end
    object TMalaDiretaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object TMalaDiretaDATAENV: TDateField
      FieldName = 'DATAENV'
    end
    object TMalaDiretaHORAENV: TTimeField
      FieldName = 'HORAENV'
    end
    object TMalaDiretaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object TMalaDiretaCODCAMPANHA: TIntegerField
      FieldName = 'CODCAMPANHA'
    end
    object TMalaDiretaNOMECAMPANHA: TStringField
      FieldName = 'NOMECAMPANHA'
      Size = 200
    end
    object TMalaDiretaNUMEMAILENV: TIntegerField
      FieldName = 'NUMEMAILENV'
    end
    object TMalaDiretaESPACOTEMPO: TIntegerField
      FieldName = 'ESPACOTEMPO'
    end
    object TMalaDiretaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object DMalaDireta: TDataSource
    DataSet = TMalaDireta
    Left = 579
    Top = 376
  end
  object TMalaDiretaIt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODMALA'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'CODUSU'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DMalaDiretaIt'
    RemoteServer = FDMSistema.DSPCRM
    Left = 675
    Top = 312
    object TMalaDiretaItCODMALA: TIntegerField
      FieldName = 'CODMALA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMalaDiretaItNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 100
    end
    object TMalaDiretaItNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 100
    end
    object TMalaDiretaItEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object TMalaDiretaItTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
  end
  object DMalaDiretaIt: TDataSource
    DataSet = TMalaDiretaIt
    Left = 675
    Top = 376
  end
  object QConMalaDireta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConMalaDireta'
    RemoteServer = FDMSistema.DSPCRM
    Left = 771
    Top = 312
    object QConMalaDiretaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConMalaDiretaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConMalaDiretaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConMalaDiretaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 50
    end
    object QConMalaDiretaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConMalaDiretaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object QConMalaDiretaTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
      Size = 1
    end
    object QConMalaDiretaANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftMemo
      Size = 1
    end
    object QConMalaDiretaASSUNTO: TMemoField
      FieldName = 'ASSUNTO'
      BlobType = ftMemo
      Size = 1
    end
    object QConMalaDiretaPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConMalaDiretaREMETENTE: TStringField
      FieldName = 'REMETENTE'
      Size = 50
    end
    object QConMalaDiretaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConMalaDiretaDATAENV: TDateField
      FieldName = 'DATAENV'
    end
    object QConMalaDiretaHORAENV: TTimeField
      FieldName = 'HORAENV'
    end
    object QConMalaDiretaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object QConMalaDiretaCODCAMPANHA: TIntegerField
      FieldName = 'CODCAMPANHA'
    end
    object QConMalaDiretaNOMECAMPANHA: TStringField
      FieldName = 'NOMECAMPANHA'
      Size = 200
    end
    object QConMalaDiretaNUMEMAILENV: TIntegerField
      FieldName = 'NUMEMAILENV'
    end
    object QConMalaDiretaESPACOTEMPO: TIntegerField
      FieldName = 'ESPACOTEMPO'
    end
    object QConMalaDiretaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
  object DConMalaDireta: TDataSource
    DataSet = QConMalaDireta
    Left = 771
    Top = 376
  end
  object TCliFullow: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLIPOTEN'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'LANCAMENTO'
        ParamType = ptUnknown
        Value = 'N'
      end>
    ProviderName = 'DCliFullow'
    RemoteServer = FDMSistema.DSPCRM
    Left = 744
    Top = 24
    object TCliFullowCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFullowTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object TCliFullowCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFullowCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFullowNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object TCliFullowCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object TCliFullowTIPODUP: TStringField
      FieldName = 'TIPODUP'
      Size = 1
    end
    object TCliFullowNUMDUP: TStringField
      FieldName = 'NUMDUP'
      Size = 50
    end
    object TCliFullowDATA: TDateField
      FieldName = 'DATA'
    end
    object TCliFullowHORA: TTimeField
      FieldName = 'HORA'
    end
    object TCliFullowTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 800
    end
    object TCliFullowUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object TCliFullowNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Size = 50
    end
    object TCliFullowINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object TCliFullowFIM: TTimeField
      FieldName = 'FIM'
    end
    object TCliFullowHORAS: TFloatField
      FieldName = 'HORAS'
    end
    object TCliFullowOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 800
    end
    object TCliFullowREMARCAR: TStringField
      FieldName = 'REMARCAR'
      Size = 1
    end
    object TCliFullowDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object TCliFullowDATAREM: TDateField
      FieldName = 'DATAREM'
    end
    object TCliFullowHORAREM: TTimeField
      FieldName = 'HORAREM'
    end
    object TCliFullowTIPOCONTATO: TStringField
      FieldName = 'TIPOCONTATO'
      Size = 50
    end
    object TCliFullowPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object TCliFullowNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object TCliFullowCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object TCliFullowNOMEFUND: TStringField
      FieldName = 'NOMEFUND'
      Size = 100
    end
    object TCliFullowORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
    end
    object TCliFullowPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
  end
  object DCliFullow: TDataSource
    DataSet = TCliFullow
    Left = 744
    Top = 88
  end
  object QConCliFullow: TClientDataSet
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
        Name = 'TIPO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConCliFullow'
    RemoteServer = FDMSistema.DSPCRM
    Left = 856
    Top = 24
    object QConCliFullowCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliFullowTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QConCliFullowCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliFullowCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliFullowNUMDOC: TIntegerField
      FieldName = 'NUMDOC'
    end
    object QConCliFullowCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
    end
    object QConCliFullowTIPODUP: TStringField
      FieldName = 'TIPODUP'
      Size = 1
    end
    object QConCliFullowNUMDUP: TStringField
      FieldName = 'NUMDUP'
      Size = 50
    end
    object QConCliFullowDATA: TDateField
      FieldName = 'DATA'
    end
    object QConCliFullowHORA: TTimeField
      FieldName = 'HORA'
    end
    object QConCliFullowTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 800
    end
    object QConCliFullowUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object QConCliFullowNOMEUSU: TStringField
      FieldName = 'NOMEUSU'
      Size = 50
    end
    object QConCliFullowINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object QConCliFullowFIM: TTimeField
      FieldName = 'FIM'
    end
    object QConCliFullowHORAS: TFloatField
      FieldName = 'HORAS'
    end
    object QConCliFullowOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 800
    end
    object QConCliFullowREMARCAR: TStringField
      FieldName = 'REMARCAR'
      Size = 1
    end
    object QConCliFullowDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object QConCliFullowDATAREM: TDateField
      FieldName = 'DATAREM'
    end
    object QConCliFullowHORAREM: TTimeField
      FieldName = 'HORAREM'
    end
    object QConCliFullowTIPOCONTATO: TStringField
      FieldName = 'TIPOCONTATO'
      Size = 50
    end
    object QConCliFullowPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 50
    end
    object QConCliFullowNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 100
    end
    object QConCliFullowCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object QConCliFullowNOMEFUND: TStringField
      FieldName = 'NOMEFUND'
      Size = 100
    end
    object QConCliFullowORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
    end
    object QConCliFullowPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
    end
  end
  object DConCliFullow: TDataSource
    DataSet = QConCliFullow
    Left = 856
    Top = 88
  end
  object QConCliPoten3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConCliPoten3'
    RemoteServer = FDMSistema.DSPCRM
    AfterScroll = QConCliPoten3AfterScroll
    OnCalcFields = QConCliPoten3CalcFields
    Left = 968
    Top = 24
    object QConCliPoten3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConCliPoten3NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConCliPoten3NOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConCliPoten3PESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConCliPoten3INSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object QConCliPoten3CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConCliPoten3DATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      OnGetText = QConCliPoten3DATACADGetText
    end
    object QConCliPoten3CPF: TStringField
      FieldName = 'CPF'
    end
    object QConCliPoten3RG: TStringField
      FieldName = 'RG'
    end
    object QConCliPoten3ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConCliPoten3NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConCliPoten3BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConCliPoten3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConCliPoten3UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConCliPoten3STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConCliPoten3FONE: TStringField
      FieldName = 'FONE'
    end
    object QConCliPoten3CNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object QConCliPoten3DESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 100
    end
    object QConCliPoten3TIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object QConCliPoten3CODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConCliPoten3NOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QConCliPoten3CODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object QConCliPoten3NOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object QConCliPoten3CODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object QConCliPoten3NOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object QConCliPoten3CODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object QConCliPoten3NOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object QConCliPoten3CODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QConCliPoten3CODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object QConCliPoten3CODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QConCliPoten3CODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConCliPoten3NOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object QConCliPoten3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object QConCliPoten3EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QConCliPoten3CODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object QConCliPoten3NOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object QConCliPoten3DATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      OnGetText = QConCliPoten3DATAALTGetText
    end
    object QConCliPoten3USUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object QConCliPoten3DTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
      OnGetText = QConCliPoten3DTNASCGetText
    end
    object QConCliPoten3CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConCliPoten3cpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Calculated = True
    end
    object QConCliPoten3inscrg: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscrg'
      Calculated = True
    end
  end
  object DConCliPoten3: TDataSource
    DataSet = QConCliPoten3
    Left = 968
    Top = 88
  end
  object TPipelineVenda: TClientDataSet
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
    ProviderName = 'DPipelineVenda'
    RemoteServer = FDMSistema.DSPCRM
    AfterScroll = TPipelineVendaAfterScroll
    Left = 43
    Top = 624
    object TPipelineVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TPipelineVendaNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 200
    end
    object TPipelineVendaCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object TPipelineVendaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object TPipelineVendaCODCLIPOTEN: TIntegerField
      FieldName = 'CODCLIPOTEN'
    end
    object TPipelineVendaNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 200
    end
    object TPipelineVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object TPipelineVendaTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
      currency = True
    end
    object TPipelineVendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object TPipelineVendaTOTCDESC: TFloatField
      FieldName = 'TOTCDESC'
    end
    object TPipelineVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object TPipelineVendaSTATUS: TFloatField
      FieldName = 'STATUS'
      DisplayFormat = '0.00%'
    end
    object TPipelineVendaDATAALT: TDateField
      FieldName = 'DATAALT'
      EditMask = '!99/99/0099;1;_'
    end
    object TPipelineVendaDATACAD: TDateField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0099;1;_'
    end
    object TPipelineVendaUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TPipelineVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TPipelineVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TPipelineVendaCODCONT: TIntegerField
      FieldName = 'CODCONT'
    end
    object TPipelineVendaNOMECONT: TStringField
      FieldName = 'NOMECONT'
      Size = 200
    end
    object TPipelineVendaCODCONTPOTEN: TIntegerField
      FieldName = 'CODCONTPOTEN'
    end
    object TPipelineVendaNOMECONTPOTEN: TStringField
      FieldName = 'NOMECONTPOTEN'
      Size = 200
    end
    object TPipelineVendaDTINICIO: TDateField
      FieldName = 'DTINICIO'
      EditMask = '!99/99/0099;1;_'
    end
    object TPipelineVendaDTFIM: TDateField
      FieldName = 'DTFIM'
      EditMask = '!99/99/0099;1;_'
    end
    object TPipelineVendaTOTSERV: TFloatField
      FieldName = 'TOTSERV'
      currency = True
    end
    object TPipelineVendaTOTPROD: TFloatField
      FieldName = 'TOTPROD'
      currency = True
    end
    object TPipelineVendaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 200
    end
    object TPipelineVendaSTATUSDESC: TStringField
      FieldName = 'STATUSDESC'
      Size = 50
    end
  end
  object DPipelineVenda: TDataSource
    DataSet = TPipelineVenda
    Left = 43
    Top = 688
  end
  object TPipelineVendaIt: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODPIPE;CODEMPFAT;CODUSU;ITEM'
    MasterFields = 'CODIGO;CODEMPFAT;CODUSU'
    MasterSource = DPipelineVenda
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DPipelineVendaIt'
    RemoteServer = FDMSistema.DSPCRM
    Left = 147
    Top = 624
    object TPipelineVendaItCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaItCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaItCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaItCODPROD: TIntegerField
      FieldName = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaItNOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 200
    end
    object TPipelineVendaItQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TPipelineVendaItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      currency = True
    end
    object TPipelineVendaItTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object TPipelineVendaItDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      currency = True
    end
    object TPipelineVendaItTOTCDESC: TFloatField
      FieldName = 'TOTCDESC'
      currency = True
    end
    object TPipelineVendaItCUSTO: TFloatField
      FieldName = 'CUSTO'
      currency = True
    end
    object TPipelineVendaItTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
      currency = True
    end
  end
  object DPipelineVendaIt: TDataSource
    DataSet = TPipelineVendaIt
    Left = 147
    Top = 688
  end
  object TPipelineVendaServ: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODPIPE;CODEMPFAT;CODUSU;ITEM'
    MasterFields = 'CODIGO;CODEMPFAT;CODUSU'
    MasterSource = DPipelineVenda
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DPipelineVendaServ'
    RemoteServer = FDMSistema.DSPCRM
    Left = 259
    Top = 624
    object TPipelineVendaServCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaServCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaServCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaServCODSERV: TIntegerField
      FieldName = 'CODSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaServITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaServNOMESERV: TStringField
      FieldName = 'NOMESERV'
      Size = 200
    end
    object TPipelineVendaServQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object TPipelineVendaServVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      currency = True
    end
    object TPipelineVendaServTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object TPipelineVendaServCUSTO: TFloatField
      FieldName = 'CUSTO'
      currency = True
    end
    object TPipelineVendaServTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
      currency = True
    end
    object TPipelineVendaServTOTCDESC: TFloatField
      FieldName = 'TOTCDESC'
      currency = True
    end
    object TPipelineVendaServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      currency = True
    end
    object TPipelineVendaServCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 1
    end
    object TPipelineVendaServVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object TPipelineVendaServPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
  end
  object DPipelineVendaServ: TDataSource
    DataSet = TPipelineVendaServ
    Left = 259
    Top = 688
  end
  object TPipelineVendaHist: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODPIPE;CODEMPFAT;CODUSU;ITEM'
    MasterFields = 'CODIGO;CODEMPFAT;CODUSU'
    MasterSource = DPipelineVenda
    PacketRecords = 0
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DPipelineVendaHist'
    RemoteServer = FDMSistema.DSPCRM
    Left = 355
    Top = 624
    object TPipelineVendaHistCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaHistCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaHistCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaHistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPipelineVendaHistDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0099;1;_'
    end
    object TPipelineVendaHistDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TPipelineVendaHistOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
  end
  object DPipelineVendaHist: TDataSource
    DataSet = TPipelineVendaHist
    Left = 355
    Top = 688
  end
  object QConPipelineVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConPipelineVenda'
    RemoteServer = FDMSistema.DSPCRM
    BeforeGetRecords = QConPipelineVendaBeforeGetRecords
    Left = 467
    Top = 624
    object QConPipelineVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConPipelineVendaCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      Required = True
    end
    object QConPipelineVendaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConPipelineVendaNOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 200
    end
    object QConPipelineVendaNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 200
    end
    object QConPipelineVendaNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 200
    end
    object QConPipelineVendaNOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object QConPipelineVendaNOMECONT: TStringField
      FieldName = 'NOMECONT'
      Size = 200
    end
    object QConPipelineVendaNOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 200
    end
    object QConPipelineVendaNOMECONTPOTEN: TStringField
      FieldName = 'NOMECONTPOTEN'
      Size = 200
    end
    object QConPipelineVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QConPipelineVendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConPipelineVendaORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
    end
    object QConPipelineVendaNOMEETAPA: TStringField
      FieldName = 'NOMEETAPA'
      Size = 200
    end
    object QConPipelineVendaSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object QConPipelineVendaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object QConPipelineVendaDTFIM: TDateField
      FieldName = 'DTFIM'
    end
    object QConPipelineVendaTOTSERV: TFloatField
      FieldName = 'TOTSERV'
      currency = True
    end
    object QConPipelineVendaTOTPROD: TFloatField
      FieldName = 'TOTPROD'
      currency = True
    end
    object QConPipelineVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QConPipelineVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object QConPipelineVendaNOMEMEIOCONTATO: TStringField
      FieldName = 'NOMEMEIOCONTATO'
      Size = 200
    end
  end
  object DConPipelineVenda: TDataSource
    DataSet = QConPipelineVenda
    Left = 467
    Top = 688
  end
  object QConPipelineVendaIt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DConPipelineVendaIt'
    RemoteServer = FDMSistema.DSPCRM
    Left = 571
    Top = 624
    object QConPipelineVendaItCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaItCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaItCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaItCODPROD: TIntegerField
      FieldName = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaItITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaItNOMEPROD: TStringField
      FieldName = 'NOMEPROD'
      Size = 200
    end
    object QConPipelineVendaItQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QConPipelineVendaItVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
    end
    object QConPipelineVendaItTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QConPipelineVendaItDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QConPipelineVendaItTOTCDESC: TFloatField
      FieldName = 'TOTCDESC'
    end
    object QConPipelineVendaItCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object QConPipelineVendaItTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
    end
  end
  object DConPipelineVendaIt: TDataSource
    DataSet = QConPipelineVendaIt
    Left = 571
    Top = 688
  end
  object QConPipelineVendaServ: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DConPipelineVendaServ'
    RemoteServer = FDMSistema.DSPCRM
    Left = 683
    Top = 624
    object QConPipelineVendaServCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaServCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaServCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaServCODSERV: TIntegerField
      FieldName = 'CODSERV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaServITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaServNOMESERV: TStringField
      FieldName = 'NOMESERV'
      Size = 200
    end
    object QConPipelineVendaServQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QConPipelineVendaServVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
    end
    object QConPipelineVendaServTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QConPipelineVendaServCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object QConPipelineVendaServTOTCUSTO: TFloatField
      FieldName = 'TOTCUSTO'
    end
    object QConPipelineVendaServTOTCDESC: TFloatField
      FieldName = 'TOTCDESC'
    end
    object QConPipelineVendaServDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QConPipelineVendaServCOMISSAO: TStringField
      FieldName = 'COMISSAO'
      Size = 1
    end
    object QConPipelineVendaServVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
    end
    object QConPipelineVendaServPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
  end
  object DConPipelineVendaServ: TDataSource
    DataSet = QConPipelineVendaServ
    Left = 683
    Top = 688
  end
  object QConPipelineVendaHist: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODPIPE'
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
    ProviderName = 'DConPipelineVendaHist'
    RemoteServer = FDMSistema.DSPCRM
    Left = 811
    Top = 624
    object QConPipelineVendaHistCODPIPE: TIntegerField
      FieldName = 'CODPIPE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaHistCODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaHistCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaHistITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConPipelineVendaHistDATA: TDateField
      FieldName = 'DATA'
    end
    object QConPipelineVendaHistDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QConPipelineVendaHistOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
  end
  object DConPipelineVendaHist: TDataSource
    DataSet = QConPipelineVendaHist
    Left = 811
    Top = 688
  end
  object QConPipelineVenda2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConPipelineVenda2'
    RemoteServer = FDMSistema.DSPCRM
    AfterScroll = QConPipelineVenda2AfterScroll
    BeforeGetRecords = QConPipelineVenda2BeforeGetRecords
    Left = 939
    Top = 624
    object QConPipelineVenda2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConPipelineVenda2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConPipelineVenda2CODEMPFAT: TIntegerField
      FieldName = 'CODEMPFAT'
      Required = True
    end
    object QConPipelineVenda2DATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object QConPipelineVenda2NOMEEMPFAT: TStringField
      FieldName = 'NOMEEMPFAT'
      Size = 200
    end
    object QConPipelineVenda2NOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 200
    end
    object QConPipelineVenda2NOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 200
    end
    object QConPipelineVenda2NOMECLI: TStringField
      FieldName = 'NOMECLI'
      Size = 200
    end
    object QConPipelineVenda2NOMECONT: TStringField
      FieldName = 'NOMECONT'
      Size = 200
    end
    object QConPipelineVenda2NOMECLIPOTEN: TStringField
      FieldName = 'NOMECLIPOTEN'
      Size = 200
    end
    object QConPipelineVenda2NOMECONTPOTEN: TStringField
      FieldName = 'NOMECONTPOTEN'
      Size = 200
    end
    object QConPipelineVenda2TOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QConPipelineVenda2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object QConPipelineVenda2ORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
    end
    object QConPipelineVenda2NOMEETAPA: TStringField
      FieldName = 'NOMEETAPA'
      Size = 200
    end
    object QConPipelineVenda2STATUS: TFloatField
      FieldName = 'STATUS'
    end
    object QConPipelineVenda2DTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object QConPipelineVenda2DTFIM: TDateField
      FieldName = 'DTFIM'
    end
    object QConPipelineVenda2TOTSERV: TFloatField
      FieldName = 'TOTSERV'
      currency = True
    end
    object QConPipelineVenda2TOTPROD: TFloatField
      FieldName = 'TOTPROD'
      currency = True
    end
    object QConPipelineVenda2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object QConPipelineVenda2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object QConPipelineVenda2NOMEMEIOCONTATO: TStringField
      FieldName = 'NOMEMEIOCONTATO'
      Size = 200
    end
  end
  object DConPipelineVenda2: TDataSource
    DataSet = QConPipelineVenda2
    Left = 939
    Top = 688
  end
  object QSomaPipelineVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSomaPipelineVenda'
    RemoteServer = FDMSistema.DSPCRM
    AfterScroll = QConPipelineVenda2AfterScroll
    BeforeGetRecords = QSomaPipelineVendaBeforeGetRecords
    Left = 1067
    Top = 624
    object QSomaPipelineVendaTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QSomaPipelineVendaTOTPROD: TFloatField
      FieldName = 'TOTPROD'
      currency = True
    end
    object QSomaPipelineVendaTOTSERV: TFloatField
      FieldName = 'TOTSERV'
      currency = True
    end
  end
  object DSomaPipelineVenda: TDataSource
    DataSet = QSomaPipelineVenda
    Left = 1067
    Top = 688
  end
end
