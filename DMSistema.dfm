object FDMSistema: TFDMSistema
  OldCreateOrder = False
  Height = 544
  Width = 721
  object etechserver: TSQLConnection
    ConnectionName = 'etechserver'
    DriverName = 'DATASNAP'
    LoginPrompt = False
    Params.Strings = (
      'drivername=DATASNAP'
      'User_Name=ETECH'
      'Password=1234'
      'DSAuthenticationUser=ETECH'
      'DSAuthenticationPassword=1234')
    BeforeConnect = etechserverBeforeConnect
    Connected = True
    Left = 50
    Top = 26
  end
  object DSPServerMethods: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = etechserver
    Left = 48
    Top = 80
  end
  object DSPCliente: TDSProviderConnection
    ServerClassName = 'TFSDMCliente'
    Connected = True
    SQLConnection = etechserver
    Left = 144
    Top = 80
  end
  object Ultimo: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'tabela'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'campo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.ultimo'
    Left = 48
    Top = 288
  end
  object ExecuteSQL: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'script'
        ParamType = ptInput
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.executeSQL'
    Left = 136
    Top = 288
  end
  object DSPProd: TDSProviderConnection
    ServerClassName = 'TFSDMProd'
    Connected = True
    SQLConnection = etechserver
    Left = 240
    Top = 80
  end
  object DSPFunc: TDSProviderConnection
    ServerClassName = 'TFSDMFunc'
    Connected = True
    SQLConnection = etechserver
    Left = 328
    Top = 80
  end
  object DSPFornec: TDSProviderConnection
    ServerClassName = 'TFSDMFornec'
    Connected = True
    SQLConnection = etechserver
    Left = 416
    Top = 80
  end
  object DSPGeral: TDSProviderConnection
    ServerClassName = 'TFSDMGeral'
    Connected = True
    SQLConnection = etechserver
    Left = 328
    Top = 144
  end
  object DSPUsuario: TDSProviderConnection
    ServerClassName = 'TFSDMUsuario'
    Connected = True
    SQLConnection = etechserver
    Left = 416
    Top = 144
  end
  object ConsultaCEP: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'strcep'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.consultaCEP'
    Left = 216
    Top = 288
  end
  object DSPLucroCusto: TDSProviderConnection
    ServerClassName = 'TFDMLucroCusto'
    Connected = True
    SQLConnection = etechserver
    Left = 48
    Top = 208
  end
  object RecuperaSenha: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'login'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.recuperaSenha'
    Left = 48
    Top = 368
  end
  object EnviaMail: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'emaildeenv'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'senhaenv'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'para'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'cc'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'cco'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'prioridade'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'mensagem'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'assunto'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'arquivo'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'clientserv'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'confirmacao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'codempfat'
        ParamType = ptInput
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.enviaMail'
    Left = 136
    Top = 368
  end
  object IPServidor: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.IpAddress'
    Left = 216
    Top = 368
  end
  object PastaServ: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.retornaPastaServ'
    Left = 312
    Top = 368
  end
  object getFile: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftVariant
        Precision = 8000
        Name = 'arquiv'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'nome'
        ParamType = ptInput
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.getfile'
    Left = 400
    Top = 368
  end
  object AtualizaExe: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'versaocli'
        ParamType = ptInput
      end
      item
        DataType = ftVariant
        Precision = 8000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 8000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.atualizaexe'
    Left = 480
    Top = 368
  end
  object GetVersaoServ: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'APLIC'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.versaoServidor'
    Left = 508
    Top = 288
  end
  object copiaarquivo: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'origem'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'destino'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'pastaserv'
        ParamType = ptInput
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.copiaArquivo'
    Left = 584
    Top = 368
  end
  object DeletaArq: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'nomefile'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.deletaarq'
    Left = 48
    Top = 432
  end
  object EnviaArq: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'nomefile'
        ParamType = ptInput
      end
      item
        DataType = ftVariant
        Precision = 8000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 8000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.enviaarq'
    Left = 136
    Top = 432
  end
  object DSPCRM: TDSProviderConnection
    ServerClassName = 'TFSDMCRM'
    Connected = True
    SQLConnection = etechserver
    Left = 48
    Top = 136
  end
  object UltimoDuplic: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.ultimoduplic'
    Left = 336
    Top = 432
  end
  object DSGerLicitacao: TDSProviderConnection
    ServerClassName = 'TFSDMGerLicitacao'
    Connected = True
    SQLConnection = etechserver
    Left = 240
    Top = 136
  end
  object DSPGeral2: TDSProviderConnection
    ServerClassName = 'TFSDMGeral2'
    Connected = True
    SQLConnection = etechserver
    Left = 144
    Top = 136
  end
  object UltimoEmp: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'tabela'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'campo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'CODEMPFAT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.ultimoEmp'
    Left = 448
    Top = 424
  end
  object VerificaPendencia: TSqlServerMethod
    GetMetadata = False
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'codempfat'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 2000
      end>
    SQLConnection = etechserver
    ServerMethodName = 'TServerMethods1.validapendencia'
    Left = 568
    Top = 440
  end
end
