object FDMCliente: TFDMCliente
  OldCreateOrder = False
  Height = 479
  Width = 1009
  object QConCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPConCliente'
    RemoteServer = FDMSistema.DSPCliente
    OnCalcFields = QConClienteCalcFields
    BeforeGetRecords = QConClienteBeforeGetRecords
    Left = 48
    Top = 16
    object QConClientecpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConClienteNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConClientePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConClienteCPF: TStringField
      FieldName = 'CPF'
    end
    object QConClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConClienteFONE: TStringField
      FieldName = 'FONE'
      OnGetText = QConClienteFONEGetText
      Size = 10
    end
    object QConClienteCNPJ: TStringField
      FieldName = 'CNPJ'
    end
  end
  object DConCliente: TDataSource
    DataSet = QConCliente
    Left = 48
    Top = 80
  end
  object TCliCont: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DSPCliCont'
    RemoteServer = FDMSistema.DSPCliente
    Left = 144
    Top = 328
    object TCliContCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliContCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliContITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliContNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TCliContFONE1: TStringField
      FieldName = 'FONE1'
      OnGetText = TCliContFONE1GetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliContFONE2: TStringField
      FieldName = 'FONE2'
      OnGetText = TCliContFONE2GetText
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object TCliContFONE3: TStringField
      FieldName = 'FONE3'
      OnGetText = TCliContFONE3GetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliContFONE4: TStringField
      FieldName = 'FONE4'
      OnGetText = TCliContFONE4GetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliContEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object TCliContSETOR: TStringField
      FieldName = 'SETOR'
      Size = 100
    end
    object TCliContRAMAL: TStringField
      FieldName = 'RAMAL'
      Size = 5
    end
    object TCliContRAMAL3: TStringField
      FieldName = 'RAMAL3'
      Size = 5
    end
    object TCliContRAMAL4: TStringField
      FieldName = 'RAMAL4'
      Size = 5
    end
    object TCliContFAX: TStringField
      FieldName = 'FAX'
      OnGetText = TCliContFAXGetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliContRAMALFAX: TStringField
      FieldName = 'RAMALFAX'
      Size = 5
    end
    object TCliContRAMAL2: TStringField
      FieldName = 'RAMAL2'
      Size = 5
    end
  end
  object DCliCont: TDataSource
    DataSet = TCliCont
    Left = 144
    Top = 392
  end
  object TCliRefBanc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DSPCliRefBanc'
    RemoteServer = FDMSistema.DSPCliente
    Left = 224
    Top = 328
    object TCliRefBancCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefBancCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefBancITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefBancNBANCO: TStringField
      FieldName = 'NBANCO'
      Size = 50
    end
    object TCliRefBancAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 50
    end
    object TCliRefBancCONTA: TStringField
      FieldName = 'CONTA'
      Size = 50
    end
    object TCliRefBancFONE: TStringField
      FieldName = 'FONE'
      OnGetText = TCliRefBancFONEGetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliRefBancCODBANC: TStringField
      FieldName = 'CODBANC'
      Size = 10
    end
  end
  object DCliRefBanc: TDataSource
    DataSet = TCliRefBanc
    Left = 224
    Top = 392
  end
  object TCliRefCom: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DSPCliRefCom'
    RemoteServer = FDMSistema.DSPCliente
    Left = 304
    Top = 328
    object TCliRefComCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefComCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefComITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefComEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object TCliRefComRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 100
    end
    object TCliRefComCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TCliRefComUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCliRefComTELEFONE: TStringField
      FieldName = 'TELEFONE'
      OnGetText = TCliRefComTELEFONEGetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
  end
  object DCliRefCom: TDataSource
    DataSet = TCliRefCom
    Left = 304
    Top = 392
  end
  object TCliFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DCliFilial'
    RemoteServer = FDMSistema.DSPCliente
    Left = 464
    Top = 328
    object TCliFilialCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFilialCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFilialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TCliFilialCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
    end
    object TCliFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TCliFilialFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
    end
    object TCliFilialCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TCliFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TCliFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TCliFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCliFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object TCliFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object TCliFilialCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TCliFilialCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TCliFilialCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
  end
  object DCliFilial: TDataSource
    DataSet = TCliFilial
    Left = 464
    Top = 392
  end
  object QCliPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliPesq'
    RemoteServer = FDMSistema.DSPCliente
    Left = 136
    Top = 16
    object QCliPesqCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QCliPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DCliPesq: TDataSource
    DataSet = QCliPesq
    Left = 136
    Top = 80
  end
  object QVerificaCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DVerificaCliente'
    RemoteServer = FDMSistema.DSPCliente
    BeforeGetRecords = QConClienteBeforeGetRecords
    Left = 352
    Top = 16
    object QVerificaClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object DVerificaCliente: TDataSource
    DataSet = QVerificaCliente
    Left = 352
    Top = 80
  end
  object QCliContPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliContPesq'
    RemoteServer = FDMSistema.DSPCliente
    Left = 224
    Top = 16
    object QCliContPesqITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCliContPesqNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QCliContPesqCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
  end
  object DCliContPesq: TDataSource
    DataSet = QCliContPesq
    Left = 224
    Top = 80
  end
  object QConContatos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODCLI'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DConContatos'
    RemoteServer = FDMSistema.DSPCliente
    BeforeGetRecords = QConClienteBeforeGetRecords
    Left = 48
    Top = 160
    object QConContatosCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConContatosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConContatosITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 48
    Top = 224
  end
  object TTipoCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DTipoCliente'
    RemoteServer = FDMSistema.DSPCliente
    Left = 448
    Top = 16
    object TTipoClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object TTipoClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
    object TTipoClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TTipoClienteDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object TTipoClienteCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object TTipoClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DTipoCliente: TDataSource
    DataSet = TTipoCliente
    Left = 448
    Top = 80
  end
  object QCliFilialPesq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliFilialPesq'
    RemoteServer = FDMSistema.DSPCliente
    Left = 160
    Top = 160
    object IntegerField1: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object DCliFilialPesq: TDataSource
    DataSet = QCliFilialPesq
    Left = 160
    Top = 224
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
    RemoteServer = FDMSistema.DSPCliente
    Left = 264
    Top = 160
    object QConFilialCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConFilialCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConFilialITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 264
    Top = 224
  end
  object TCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPCliente'
    RemoteServer = FDMSistema.DSPCliente
    AfterScroll = TClienteAfterScroll
    OnReconcileError = TClienteReconcileError
    Left = 48
    Top = 331
    object TClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TClienteCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TClienteUSUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object TClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object TClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;1;_'
      Size = 25
    end
    object TClienteINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 25
    end
    object TClienteCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\-000\-000-00;1;_'
    end
    object TClienteRG: TStringField
      FieldName = 'RG'
    end
    object TClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object TClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object TClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object TClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TClienteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object TClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object TClienteFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TClienteFONE2: TStringField
      FieldName = 'FONE2'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 25
    end
    object TClienteSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object TClienteNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object TClientePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object TClienteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object TClienteMAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object TClientePAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object TClienteORGAOESP: TStringField
      FieldName = 'ORGAOESP'
      Size = 100
    end
    object TClienteCPFAVAL: TStringField
      FieldName = 'CPFAVAL'
      Size = 100
    end
    object TClienteDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteDATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteDTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteDTNASCCONJU: TSQLTimeStampField
      FieldName = 'DTNASCCONJU'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteRENDA: TIntegerField
      FieldName = 'RENDA'
    end
    object TClienteTRABALHO: TStringField
      FieldName = 'TRABALHO'
      Size = 50
    end
    object TClienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object TClienteTRABCONJU: TStringField
      FieldName = 'TRABCONJU'
      Size = 50
    end
    object TClienteFONECONJU: TStringField
      FieldName = 'FONECONJU'
      Size = 50
    end
    object TClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object TClienteESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 10
    end
    object TClienteESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object TClienteSALCONJU: TFloatField
      FieldName = 'SALCONJU'
    end
    object TClienteSALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object TClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object TClienteCODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object TClienteNOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object TClienteCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object TClienteNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object TClienteCODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object TClienteNOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object TClienteLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object TClienteVALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
    end
    object TClienteCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object TClienteNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object TClienteCODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object TClienteNOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object TClienteULTIMANOTA: TIntegerField
      FieldName = 'ULTIMANOTA'
    end
    object TClienteDATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object TClienteNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object TClienteCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object TClienteCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object TClienteTIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object TClienteDESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 50
    end
    object TClienteFONE3: TStringField
      FieldName = 'FONE3'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TClienteFAX: TStringField
      FieldName = 'FAX'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object TClienteCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object TClienteCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object TClienteNOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object TClienteDATACREDITO: TDateField
      FieldName = 'DATACREDITO'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 1
    end
    object TClienteCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object TClienteDATAADMIS: TDateField
      FieldName = 'DATAADMIS'
      EditMask = '!99/99/0099;1;_'
    end
    object TClienteFONEEMPRESA: TStringField
      FieldName = 'FONEEMPRESA'
    end
    object TClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object TClienteSEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object TClienteQTDEETIQ: TIntegerField
      FieldName = 'QTDEETIQ'
    end
    object TClienteCODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object TClienteNOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 200
    end
    object TClienteCADPRO: TStringField
      FieldName = 'CADPRO'
      Size = 50
    end
    object TClienteSUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object TClienteCODSUBSETOR: TIntegerField
      FieldName = 'CODSUBSETOR'
    end
    object TClienteNOMSUBSETOR: TStringField
      FieldName = 'NOMSUBSETOR'
      Size = 100
    end
    object TClienteTRABALHO2: TStringField
      FieldName = 'TRABALHO2'
      Size = 100
    end
    object TClienteSALARIO2: TFloatField
      FieldName = 'SALARIO2'
    end
    object TClienteOUTRARENDA: TStringField
      FieldName = 'OUTRARENDA'
      Size = 1
    end
    object TClienteENDTRABALHO: TStringField
      FieldName = 'ENDTRABALHO'
      Size = 100
    end
    object TClienteNUMTRABALHO: TStringField
      FieldName = 'NUMTRABALHO'
      Size = 50
    end
    object TClienteBAIRROTRABALHO: TStringField
      FieldName = 'BAIRROTRABALHO'
      Size = 100
    end
    object TClienteCIDADETRABALHO: TStringField
      FieldName = 'CIDADETRABALHO'
      Size = 100
    end
    object TClienteUFTRABALHO: TStringField
      FieldName = 'UFTRABALHO'
      Size = 3
    end
    object TClienteCEPTRABALHO: TStringField
      FieldName = 'CEPTRABALHO'
      Size = 10
    end
    object TClienteCOMPLEMENTOTRAB: TStringField
      FieldName = 'COMPLEMENTOTRAB'
      Size = 100
    end
    object TClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
    object TClienteINSCMUN: TStringField
      FieldName = 'INSCMUN'
    end
    object TClienteREGIMETRIBUT: TStringField
      FieldName = 'REGIMETRIBUT'
      Size = 50
    end
    object TClienteDTEMISSAORG: TDateField
      FieldName = 'DTEMISSAORG'
    end
    object TClienteCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object TClienteNOMEPAIS: TStringField
      FieldName = 'NOMEPAIS'
      Size = 100
    end
    object TClienteUFEMISSORRG: TStringField
      FieldName = 'UFEMISSORRG'
      Size = 3
    end
    object TClienteNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 100
    end
    object TClienteUFNATURALIDADE: TStringField
      FieldName = 'UFNATURALIDADE'
      Size = 3
    end
    object TClienteNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 100
    end
    object TClienteTEMPORESANO: TIntegerField
      FieldName = 'TEMPORESANO'
    end
    object TClienteTEMPORESMES: TIntegerField
      FieldName = 'TEMPORESMES'
    end
    object TClienteSITUACAORESIDENCIA: TStringField
      FieldName = 'SITUACAORESIDENCIA'
      Size = 50
    end
    object TClienteVALORALUGUEL: TFloatField
      FieldName = 'VALORALUGUEL'
    end
    object TClienteDTADMISCONJU: TDateField
      FieldName = 'DTADMISCONJU'
    end
    object TClienteOCUPACAO: TStringField
      FieldName = 'OCUPACAO'
      Size = 100
    end
  end
  object DCliente: TDataSource
    DataSet = TCliente
    Left = 48
    Top = 395
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
    RemoteServer = FDMSistema.DSPCliente
    Left = 352
    Top = 160
    object QConEndEntregaCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConEndEntregaCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConEndEntregaITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object DConEndEntrega: TDataSource
    DataSet = QConEndEntrega
    Left = 352
    Top = 224
  end
  object QCliFilialPesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliFilialPesq2'
    RemoteServer = FDMSistema.DSPCliente
    Left = 456
    Top = 160
    object QCliFilialPesq2CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object QCliFilialPesq2ITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object QCliFilialPesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
  end
  object DCliFilialPesq2: TDataSource
    DataSet = QCliFilialPesq2
    Left = 456
    Top = 224
  end
  object QCliContPesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliContPesq2'
    RemoteServer = FDMSistema.DSPCliente
    Left = 560
    Top = 160
    object QCliContPesq2ITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCliContPesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object QCliContPesq2CODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
  end
  object DCliContPesq2: TDataSource
    DataSet = QCliContPesq2
    Left = 560
    Top = 224
  end
  object QCliPesq2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliPesq2'
    RemoteServer = FDMSistema.DSPCliente
    Left = 560
    Top = 16
    object QCliPesq2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QCliPesq2NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object DCliPesq2: TDataSource
    DataSet = QCliPesq2
    Left = 560
    Top = 80
  end
  object QCliListaConf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DCliListaConf'
    RemoteServer = FDMSistema.DSPCliente
    OnCalcFields = QConClienteCalcFields
    BeforeGetRecords = QConClienteBeforeGetRecords
    Left = 664
    Top = 16
    object QCliListaConfCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCliListaConfNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QCliListaConfNOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QCliListaConfPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QCliListaConfINSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 25
    end
    object QCliListaConfCEP: TStringField
      FieldName = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 10
    end
    object QCliListaConfDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object QCliListaConfCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;1;_'
    end
    object QCliListaConfRG: TStringField
      FieldName = 'RG'
    end
    object QCliListaConfENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QCliListaConfNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QCliListaConfBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QCliListaConfCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QCliListaConfUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QCliListaConfSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QCliListaConfFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 25
    end
    object QCliListaConfCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99'
      Size = 25
    end
    object QCliListaConfDESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 50
    end
    object QCliListaConfTIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object QCliListaConfCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QCliListaConfNOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QCliListaConfCODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object QCliListaConfNOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object QCliListaConfCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object QCliListaConfNOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object QCliListaConfCODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object QCliListaConfNOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object QCliListaConfCODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QCliListaConfCODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object QCliListaConfCODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QCliListaConfCODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QCliListaConfNOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object QCliListaConfCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object QCliListaConfEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QCliListaConfCODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object QCliListaConfNOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
  end
  object DCliListaConf: TDataSource
    DataSet = QCliListaConf
    Left = 664
    Top = 80
  end
  object TCliRefPes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DCliRefPes'
    RemoteServer = FDMSistema.DSPCliente
    Left = 608
    Top = 328
    object TCliRefPesCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefPesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefPesITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliRefPesRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 100
    end
    object TCliRefPesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object TCliRefPesUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object TCliRefPesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      OnGetText = TCliRefComTELEFONEGetText
      EditMask = '!\(99\)0000-0000;1;_'
    end
  end
  object DCliRefPes: TDataSource
    DataSet = TCliRefPes
    Left = 608
    Top = 392
  end
  object TCliObs: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DCliObs'
    RemoteServer = FDMSistema.DSPCliente
    Left = 832
    Top = 328
    object TCliObsCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliObsITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliObsCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliObsOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      OnGetText = TCliObsOBSERVACAOGetText
      BlobType = ftMemo
      Size = 1
    end
    object TCliObsDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0099;1;_'
    end
  end
  object DCliObs: TDataSource
    DataSet = TCliObs
    Left = 832
    Top = 384
  end
  object QConCliente2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DConCliente2'
    RemoteServer = FDMSistema.DSPCliente
    OnCalcFields = QConCliente2CalcFields
    BeforeGetRecords = QConCliente2BeforeGetRecords
    Left = 744
    Top = 16
    object QConCliente2cpfcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cpfcnpj'
      Size = 50
      Calculated = True
    end
    object QConCliente2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConCliente2NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object QConCliente2NOMEFANTA: TStringField
      FieldName = 'NOMEFANTA'
      Size = 150
    end
    object QConCliente2PESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 10
    end
    object QConCliente2INSCEST: TStringField
      FieldName = 'INSCEST'
      Size = 25
    end
    object QConCliente2CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QConCliente2DATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
    end
    object QConCliente2CPF: TStringField
      FieldName = 'CPF'
    end
    object QConCliente2RG: TStringField
      FieldName = 'RG'
    end
    object QConCliente2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object QConCliente2NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QConCliente2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object QConCliente2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object QConCliente2UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QConCliente2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object QConCliente2FONE: TStringField
      FieldName = 'FONE'
      Size = 25
    end
    object QConCliente2CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QConCliente2CODUSU: TIntegerField
      FieldName = 'CODUSU'
      Required = True
    end
    object QConCliente2USUALT: TIntegerField
      FieldName = 'USUALT'
    end
    object QConCliente2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QConCliente2FONE2: TStringField
      FieldName = 'FONE2'
      Size = 25
    end
    object QConCliente2SITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object QConCliente2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 255
    end
    object QConCliente2MAE: TStringField
      FieldName = 'MAE'
      Size = 100
    end
    object QConCliente2PAI: TStringField
      FieldName = 'PAI'
      Size = 100
    end
    object QConCliente2ORGAOESP: TStringField
      FieldName = 'ORGAOESP'
      Size = 100
    end
    object QConCliente2CPFAVAL: TStringField
      FieldName = 'CPFAVAL'
      Size = 100
    end
    object QConCliente2DATAALT: TSQLTimeStampField
      FieldName = 'DATAALT'
    end
    object QConCliente2DTNASC: TSQLTimeStampField
      FieldName = 'DTNASC'
    end
    object QConCliente2DTNASCCONJU: TSQLTimeStampField
      FieldName = 'DTNASCCONJU'
    end
    object QConCliente2RENDA: TIntegerField
      FieldName = 'RENDA'
    end
    object QConCliente2TRABALHO: TStringField
      FieldName = 'TRABALHO'
      Size = 50
    end
    object QConCliente2CONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 50
    end
    object QConCliente2TRABCONJU: TStringField
      FieldName = 'TRABCONJU'
      Size = 50
    end
    object QConCliente2FONECONJU: TStringField
      FieldName = 'FONECONJU'
      Size = 50
    end
    object QConCliente2SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object QConCliente2ESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 10
    end
    object QConCliente2ESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object QConCliente2SALCONJU: TFloatField
      FieldName = 'SALCONJU'
    end
    object QConCliente2SALARIO: TFloatField
      FieldName = 'SALARIO'
    end
    object QConCliente2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 255
    end
    object QConCliente2CODATIV: TIntegerField
      FieldName = 'CODATIV'
    end
    object QConCliente2NOMEATIV: TStringField
      FieldName = 'NOMEATIV'
      Size = 100
    end
    object QConCliente2CODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object QConCliente2NOMEVEND: TStringField
      FieldName = 'NOMEVEND'
      Size = 100
    end
    object QConCliente2CODVEND2: TIntegerField
      FieldName = 'CODVEND2'
    end
    object QConCliente2NOMEVEND2: TStringField
      FieldName = 'NOMEVEND2'
      Size = 100
    end
    object QConCliente2LIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
    end
    object QConCliente2VALIDADE: TSQLTimeStampField
      FieldName = 'VALIDADE'
    end
    object QConCliente2CODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object QConCliente2NOMEATEND: TStringField
      FieldName = 'NOMEATEND'
      Size = 100
    end
    object QConCliente2CODATEND2: TIntegerField
      FieldName = 'CODATEND2'
    end
    object QConCliente2NOMEATEND2: TStringField
      FieldName = 'NOMEATEND2'
      Size = 100
    end
    object QConCliente2ULTIMANOTA: TIntegerField
      FieldName = 'ULTIMANOTA'
    end
    object QConCliente2DATAULTNOTA: TSQLTimeStampField
      FieldName = 'DATAULTNOTA'
    end
    object QConCliente2CODLOCAL: TIntegerField
      FieldName = 'CODLOCAL'
    end
    object QConCliente2NOMELOCAL: TStringField
      FieldName = 'NOMELOCAL'
      Size = 200
    end
    object QConCliente2CODESTADO: TIntegerField
      FieldName = 'CODESTADO'
    end
    object QConCliente2CODMUNIC: TIntegerField
      FieldName = 'CODMUNIC'
    end
    object QConCliente2TIPOCLI: TIntegerField
      FieldName = 'TIPOCLI'
    end
    object QConCliente2DESCTIPOCLI: TStringField
      FieldName = 'DESCTIPOCLI'
      Size = 50
    end
    object QConCliente2FONE3: TStringField
      FieldName = 'FONE3'
      Size = 25
    end
    object QConCliente2FAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object QConCliente2CONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object QConCliente2CODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object QConCliente2NOMESETOR: TStringField
      FieldName = 'NOMESETOR'
      Size = 100
    end
    object QConCliente2DATACREDITO: TDateField
      FieldName = 'DATACREDITO'
    end
    object QConCliente2CONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 1
    end
    object QConCliente2CODMUNICUF: TIntegerField
      FieldName = 'CODMUNICUF'
    end
    object QConCliente2FONEEMPRESA: TStringField
      FieldName = 'FONEEMPRESA'
    end
    object QConCliente2DATAADMIS: TDateField
      FieldName = 'DATAADMIS'
    end
    object QConCliente2SEL: TStringField
      FieldName = 'SEL'
      Size = 1
    end
    object QConCliente2QTDEETIQ: TIntegerField
      FieldName = 'QTDEETIQ'
    end
    object QConCliente2CODLISTA: TIntegerField
      FieldName = 'CODLISTA'
    end
    object QConCliente2NOMELISTA: TStringField
      FieldName = 'NOMELISTA'
      Size = 200
    end
    object QConCliente2CADPRO: TStringField
      FieldName = 'CADPRO'
      Size = 50
    end
    object QConCliente2SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 50
    end
    object QConCliente2inscrg: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscrg'
      Calculated = True
    end
    object QConCliente2TRABALHO2: TStringField
      FieldName = 'TRABALHO2'
      Size = 100
    end
    object QConCliente2SALARIO2: TFloatField
      FieldName = 'SALARIO2'
    end
    object QConCliente2OUTRARENDA: TStringField
      FieldName = 'OUTRARENDA'
      Size = 1
    end
    object QConCliente2ENDTRABALHO: TStringField
      FieldName = 'ENDTRABALHO'
      Size = 100
    end
    object QConCliente2NUMTRABALHO: TStringField
      FieldName = 'NUMTRABALHO'
      Size = 50
    end
    object QConCliente2BAIRROTRABALHO: TStringField
      FieldName = 'BAIRROTRABALHO'
      Size = 100
    end
    object QConCliente2CIDADETRABALHO: TStringField
      FieldName = 'CIDADETRABALHO'
      Size = 100
    end
    object QConCliente2UFTRABALHO: TStringField
      FieldName = 'UFTRABALHO'
      Size = 3
    end
    object QConCliente2CEPTRABALHO: TStringField
      FieldName = 'CEPTRABALHO'
      Size = 10
    end
    object QConCliente2COMPLEMENTOTRAB: TStringField
      FieldName = 'COMPLEMENTOTRAB'
      Size = 100
    end
    object QConCliente2CODSUBSETOR: TIntegerField
      FieldName = 'CODSUBSETOR'
    end
    object QConCliente2NOMSUBSETOR: TStringField
      FieldName = 'NOMSUBSETOR'
      Size = 100
    end
    object QConCliente2PROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 100
    end
  end
  object DConCliente2: TDataSource
    DataSet = QConCliente2
    Left = 744
    Top = 80
  end
  object TCliDoc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODCLI;CODUSU'
    MasterFields = 'CODIGO;CODUSU'
    MasterSource = DCliente
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
    ProviderName = 'DCliDoc'
    RemoteServer = FDMSistema.DSPCliente
    Left = 760
    Top = 328
    object TCliDocCODCLI: TIntegerField
      FieldName = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliDocCODUSU: TIntegerField
      FieldName = 'CODUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliDocITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCliDocTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 50
    end
    object TCliDocDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object TCliDocLOCALARQ: TStringField
      FieldName = 'LOCALARQ'
      Size = 300
    end
    object TCliDocVALIDADE: TDateField
      FieldName = 'VALIDADE'
      EditMask = '!99/99/0099;1;_'
    end
  end
  object DCliDoc: TDataSource
    DataSet = TCliDoc
    Left = 760
    Top = 392
  end
end
