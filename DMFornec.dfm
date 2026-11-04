object FDMFornec: TFDMFornec
  OldCreateOrder = False
  Height = 574
  Width = 638
  object QConFornec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConFornec'
    RemoteServer = FDMSistema.DSPFornec
    OnCalcFields = QConFornecCalcFields
    BeforeGetRecords = QConFornecBeforeGetRecords
    Left = 48
    Top = 16
    object QConForneccpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConFornecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConFornecNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConFornecPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConFornecCPF: TStringField
      FieldName = 'CPF'
    end
    object QConFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConFornecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConFornecSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConFornecFONE: TStringField
      FieldName = 'FONE'
      OnGetText = QConFornecFONEGetText
      Size = 10
    end
    object QConFornecCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object DConFornec: TDataSource
    DataSet = QConFornec
    Left = 48
    Top = 80
  end
  object TFornec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPFornec'
    RemoteServer = FDMSistema.DSPFornec
    AfterScroll = TFornecAfterScroll
    Left = 48
    Top = 392
    object TFornecCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TFornecCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99'
    end
    object TFornecCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999.-99;1;_'
    end
    object TFornecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TFornecINSCEST: TStringField
      FieldName = 'INSCEST'
    end
    object TFornecRG: TStringField
      FieldName = 'RG'
    end
    object TFornecENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TFornecNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TFornecBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TFornecCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TFornecUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TFornecSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TFornecEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object TFornecSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object TFornecNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object TFornecOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TFornecPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object TFornecDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      OnGetText = TFornecDATACADGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TFornecDATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      OnGetText = TFornecDATAALTGetText
      EditMask = '!99/99/0099;1;_'
    end
    object TFornecCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TFornecUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TFornecNOSSONUM: TStringField
      FieldName = 'NOSSONUM'
      Size = 50
    end
    object TFornecCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object TFornecFONE: TStringField
      FieldName = 'FONE'
      OnGetText = TFornecFONEGetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TFornecCODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object TFornecNOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object TFornecULTNOTA: TIntegerField
      FieldName = 'ULTNOTA'
    end
    object TFornecDATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
    end
    object TFornecCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TFornecCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object TFornecFONE2: TStringField
      FieldName = 'FONE2'
      Size = 25
    end
    object TFornecFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object TFornecCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TFornecFONE3: TStringField
      FieldName = 'FONE3'
    end
    object TFornecFONE4: TStringField
      FieldName = 'FONE4'
    end
    object TFornecCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object TFornecCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
  end
  object DFornec: TDataSource
    DataSet = TFornec
    Left = 48
    Top = 456
  end
  object QForPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DForPesq'
    RemoteServer = FDMSistema.DSPFornec
    Left = 240
    Top = 16
    object QForPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QForPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DForPesq: TDataSource
    DataSet = QForPesq
    Left = 240
    Top = 80
  end
  object QVerificaFornec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CNPJ'
        ParamType = ptUnknown
        Value = '123a12'
      end>
    ProviderName = 'DVerificaFornec'
    RemoteServer = FDMSistema.DSPFornec
    Left = 440
    Top = 16
    object QVerificaFornecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object DVerificaFornec: TDataSource
    DataSet = QVerificaFornec
    Left = 440
    Top = 80
  end
end
