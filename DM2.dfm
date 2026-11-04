object FDM2: TFDM2
  OldCreateOrder = False
  Height = 561
  Width = 1071
  object TAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DAtividade'
    RemoteServer = FDMSistema.DSPGeral2
    Left = 224
    Top = 288
    object TAtividadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object TAtividadeCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TAtividadeDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TAtividadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TAtividadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TAtividadeNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DAtividade: TDataSource
    DataSet = TAtividade
    Left = 224
    Top = 352
  end
  object DPais: TDataSource
    DataSet = TPais
    Left = 136
    Top = 472
  end
  object TPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DPais'
    RemoteServer = FDMSistema.DSPGeral2
    Left = 136
    Top = 408
    object TPaisCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPaisCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object TPaisOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object TPaisSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TPaisDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object TPaisNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
  end
end
