object FDMRh: TFDMRh
  OldCreateOrder = False
  Height = 522
  Width = 825
  object TVendedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DVendedor'
    RemoteServer = FDMSistema.DSPFunc
    AfterScroll = TVendedorAfterScroll
    Left = 48
    Top = 168
    object TVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TVendedorCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TVendedorDATANASC: TSQLTimeStampField
      FieldName = 'DATANASC'
      EditMask = '!99/99/0099;1;_'
    end
    object TVendedorSALARIO: TFloatField
      FieldName = 'SALARIO'
      currency = True
    end
    object TVendedorCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '0.00%'
    end
    object TVendedorDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      OnGetText = TVendedorDATACADGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TVendedorDATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      OnGetText = TVendedorDATAALTGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TVendedorDATAREG: TSQLTimeStampField
      FieldName = 'DATAREG'
      OnGetText = TVendedorDATAREGGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TVendedorDATASAIDA: TSQLTimeStampField
      FieldName = 'DATASAIDA'
      OnGetText = TVendedorDATASAIDAGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TVendedorCRACHA: TStringField
      FieldName = 'CRACHA'
      Size = 50
    end
    object TVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TVendedorSETOR: TIntegerField
      FieldName = 'SETOR'
    end
    object TVendedorSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object TVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object TVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TVendedorNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object TVendedorNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 100
    end
    object TVendedorCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object TVendedorUF: TStringField
      FieldName = 'UF'
      Size = 3
    end
    object TVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TVendedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object TVendedorCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TVendedorCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
    end
    object TVendedorTURNO: TStringField
      FieldName = 'TURNO'
      Size = 10
    end
    object TVendedorCARGAHORA: TFloatField
      FieldName = 'CARGAHORA'
    end
    object TVendedorRG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object TVendedorCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999.-99;1;_'
      Size = 15
    end
    object TVendedorORGESP: TStringField
      FieldName = 'ORGESP'
      Size = 15
    end
    object TVendedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TVendedorESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object TVendedorNCONJU: TStringField
      FieldName = 'NCONJU'
      Size = 200
    end
    object TVendedorCARGO: TStringField
      FieldName = 'CARGO'
      Size = 100
    end
    object TVendedorESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      Size = 100
    end
    object TVendedorSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TVendedorVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 1
    end
    object TVendedorCARTEIRAHAB: TStringField
      FieldName = 'CARTEIRAHAB'
      Size = 15
    end
    object TVendedorCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99'
    end
    object TVendedorINSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object TVendedorNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 100
    end
    object TVendedorPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 50
    end
    object TVendedorFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TVendedorTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object TVendedorFONE2: TStringField
      FieldName = 'FONE2'
      Size = 25
    end
    object TVendedorFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object TVendedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
  end
  object DVendedor: TDataSource
    DataSet = TVendedor
    Left = 48
    Top = 232
  end
  object QConVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConVendedor'
    RemoteServer = FDMSistema.DSPFunc
    Left = 144
    Top = 168
    object QConVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QConVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConVendedorTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object QConVendedorFONE: TStringField
      FieldName = 'FONE'
      Size = 25
    end
    object QConVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QConVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 25
    end
    object QConVendedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QConVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 255
    end
    object QConVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConVendedorUF: TStringField
      FieldName = 'UF'
      Size = 3
    end
    object QConVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConVendedorSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object DConVendedor: TDataSource
    DataSet = QConVendedor
    Left = 144
    Top = 232
  end
  object QVendPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DVendPesq'
    RemoteServer = FDMSistema.DSPFunc
    Left = 248
    Top = 168
    object QVendPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QVendPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DVendPesq: TDataSource
    DataSet = QVendPesq
    Left = 248
    Top = 232
  end
  object DFuncPesq: TDataSource
    DataSet = QFuncPesq
    Left = 168
    Top = 80
  end
  object QFuncPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DFuncPesq'
    RemoteServer = FDMSistema.DSPFunc
    Left = 168
    Top = 16
    object QFuncPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QFuncPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object TSolicitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSolicitante'
    RemoteServer = FDMSistema.DSPFunc
    Left = 272
    Top = 16
    object TSolicitanteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TSolicitanteCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object TSolicitanteDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Required = True
      EditMask = '!99/99/0099;1;_'
    end
    object TSolicitanteNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TSolicitanteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TSolicitanteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 255
    end
    object TSolicitanteCODDEP: TIntegerField
      FieldName = 'CODDEP'
    end
    object TSolicitanteNOMEDEP: TStringField
      FieldName = 'NOMEDEP'
      Size = 200
    end
  end
  object DSolicitante: TDataSource
    DataSet = TSolicitante
    Left = 272
    Top = 80
  end
  object QBuscaVend: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODMUNIC'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'TIPO'
        ParamType = ptUnknown
        Value = 'A'
      end>
    ProviderName = 'DBuscaVend'
    RemoteServer = FDMSistema.DSPFunc
    Left = 272
    Top = 352
    object QBuscaVendCODVEND: TIntegerField
      FieldName = 'CODVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaVendNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 200
    end
  end
  object DBuscaVend: TDataSource
    DataSet = QBuscaVend
    Left = 272
    Top = 416
  end
  object QAtendPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DAtendPesq'
    RemoteServer = FDMSistema.DSPFunc
    Left = 528
    Top = 168
    object QAtendPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QAtendPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DAtendPesq: TDataSource
    DataSet = QAtendPesq
    Left = 528
    Top = 232
  end
end
