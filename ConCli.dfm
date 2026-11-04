object FConCli: TFConCli
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consulta de Dados do Cliente'
  ClientHeight = 455
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 977
    Height = 241
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 209
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Nome / Raz'#227'o Social'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label3: TLabel
      Left = 112
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Pessoa'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label5: TLabel
      Left = 112
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label8: TLabel
      Left = 429
      Top = 48
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label11: TLabel
      Left = 544
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit9
      Transparent = True
    end
    object Label20: TLabel
      Left = 8
      Top = 48
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit15
      Transparent = True
    end
    object Label23: TLabel
      Left = 544
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Nome Fantasia'
      FocusControl = DBEdit18
      Transparent = True
    end
    object Label34: TLabel
      Left = 281
      Top = 88
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit29
      Transparent = True
    end
    object Label38: TLabel
      Left = 712
      Top = 89
      Width = 18
      Height = 13
      Caption = 'Site'
      FocusControl = DBEdit33
      Transparent = True
    end
    object Label42: TLabel
      Left = 429
      Top = 88
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit37
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 88
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label16: TLabel
      Left = 8
      Top = 131
      Width = 90
      Height = 13
      Caption = 'Ramo de Atividade'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label19: TLabel
      Left = 429
      Top = 131
      Width = 46
      Height = 13
      Caption = 'Vendedor'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label21: TLabel
      Left = 712
      Top = 131
      Width = 90
      Height = 13
      Caption = 'Vendedor Indicado'
      FocusControl = DBEdit16
      Transparent = True
    end
    object Label22: TLabel
      Left = 8
      Top = 172
      Width = 51
      Height = 13
      Caption = 'Atendente'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label30: TLabel
      Left = 281
      Top = 172
      Width = 95
      Height = 13
      Caption = 'Atendente Indicado'
      FocusControl = DBEdit17
      Transparent = True
    end
    object Label18: TLabel
      Left = 281
      Top = 131
      Width = 90
      Height = 13
      Caption = 'Situa'#231#227'o Tribut'#225'ria'
      FocusControl = DBEdit14
      Transparent = True
    end
    object Label7: TLabel
      Left = 429
      Top = 172
      Width = 53
      Height = 13
      Caption = 'Localizador'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label9: TLabel
      Left = 566
      Top = 172
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label10: TLabel
      Left = 679
      Top = 48
      Width = 59
      Height = 13
      Caption = 'C'#243'digo IBGE'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label14: TLabel
      Left = 776
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit12
      Transparent = True
    end
    object Label17: TLabel
      Left = 915
      Top = 48
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label24: TLabel
      Left = 712
      Top = 172
      Width = 70
      Height = 13
      Caption = 'Data Cadastro'
      FocusControl = DBEdit19
      Transparent = True
    end
    object Label25: TLabel
      Left = 839
      Top = 172
      Width = 72
      Height = 13
      Caption = 'Data Altera'#231#227'o'
      FocusControl = DBEdit20
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 23
      Width = 97
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = FDMCliente.DCliente
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Tag = 1
      Left = 209
      Top = 23
      Width = 328
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Tag = 1
      Left = 112
      Top = 63
      Width = 312
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Tag = 1
      Left = 430
      Top = 63
      Width = 107
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Tag = 1
      Left = 544
      Top = 63
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 4
    end
    object DBEdit15: TDBEdit
      Tag = 1
      Left = 8
      Top = 63
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 5
    end
    object DBEdit18: TDBEdit
      Left = 544
      Top = 23
      Width = 329
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFANTA'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 6
    end
    object DBEdit29: TDBEdit
      Tag = 1
      Left = 281
      Top = 103
      Width = 143
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 13
      TabOrder = 7
    end
    object DBEdit33: TDBEdit
      Left = 712
      Top = 103
      Width = 249
      Height = 21
      DataField = 'SITE'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 8
    end
    object DBEdit37: TDBEdit
      Left = 429
      Top = 103
      Width = 278
      Height = 21
      DataField = 'EMAIL'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 103
      Width = 267
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 10
    end
    object DBEdit16: TDBEdit
      Left = 712
      Top = 146
      Width = 249
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'NOMEVEND'
      DataSource = FDMCliente.DCliente
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit17: TDBEdit
      Left = 281
      Top = 187
      Width = 143
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'NOMEATEND'
      DataSource = FDMCliente.DCliente
      Enabled = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Tag = 1
      Left = 281
      Top = 146
      Width = 143
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ST'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 13
    end
    object DBEdit12: TDBEdit
      Tag = 1
      Left = 776
      Top = 63
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = FDMCliente.DCliente
      Enabled = False
      TabOrder = 14
    end
    object DBEdit19: TDBEdit
      Left = 712
      Top = 187
      Width = 121
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DATACAD'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 10
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit20: TDBEdit
      Left = 839
      Top = 187
      Width = 122
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'DATAALT'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 10
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit5: TDBEdit
      Tag = 1
      Left = 112
      Top = 23
      Width = 93
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PESSOA'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 17
    end
    object DBEdit7: TDBEdit
      Tag = 1
      Left = 679
      Top = 63
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODMUNICUF'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 18
    end
    object DBEdit8: TDBEdit
      Tag = 1
      Left = 429
      Top = 187
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMELOCAL'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 19
    end
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 566
      Top = 187
      Width = 141
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCTIPOCLI'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 20
    end
    object DBEdit11: TDBEdit
      Tag = 1
      Left = 8
      Top = 187
      Width = 267
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEATEND'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 21
    end
    object DBEdit13: TDBEdit
      Tag = 1
      Left = 8
      Top = 146
      Width = 267
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEATIV'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 22
    end
    object DBEdit21: TDBEdit
      Tag = 1
      Left = 430
      Top = 146
      Width = 277
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEVEND'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 23
    end
    object DBEdit22: TDBEdit
      Tag = 1
      Left = 915
      Top = 63
      Width = 46
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = FDMCliente.DCliente
      Enabled = False
      MaxLength = 9
      TabOrder = 24
    end
    object cxButton3: TcxButton
      Left = 879
      Top = 11
      Width = 83
      Height = 33
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 25
      OnClick = cxButton3Click
    end
  end
  object PageControl2: TcxPageControl
    Left = 0
    Top = 241
    Width = 977
    Height = 214
    Align = alBottom
    TabOrder = 1
    Properties.ActivePage = cxTabSheet4
    ClientRectBottom = 209
    ClientRectLeft = 2
    ClientRectRight = 972
    ClientRectTop = 24
    object cxTabSheet3: TcxTabSheet
      Caption = 'Fisica'
      ImageIndex = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label28: TLabel
          Left = 8
          Top = 9
          Width = 19
          Height = 13
          Caption = 'CPF'
          FocusControl = EdCFP
          Transparent = True
        end
        object Label29: TLabel
          Left = 152
          Top = 9
          Width = 14
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit24
          Transparent = True
        end
        object Label39: TLabel
          Left = 489
          Top = 89
          Width = 20
          Height = 13
          Caption = 'M'#227'e'
          FocusControl = DBEdit34
          Transparent = True
        end
        object Label40: TLabel
          Left = 8
          Top = 89
          Width = 14
          Height = 13
          Caption = 'Pai'
          FocusControl = DBEdit35
          Transparent = True
        end
        object Label43: TLabel
          Left = 312
          Top = 9
          Width = 80
          Height = 13
          Caption = 'Org'#227'o Espedidor'
          FocusControl = DBEdit38
          Transparent = True
        end
        object Label44: TLabel
          Left = 424
          Top = 9
          Width = 96
          Height = 13
          Caption = 'Data de Nascimento'
          FocusControl = DBEdit39
          Transparent = True
        end
        object Label41: TLabel
          Left = 344
          Top = 129
          Width = 108
          Height = 13
          Caption = 'Dt. Nascimento Conju.'
          FocusControl = DBEdit36
          Transparent = True
        end
        object Label45: TLabel
          Left = 8
          Top = 49
          Width = 42
          Height = 13
          Caption = 'Trabalho'
          FocusControl = DBEdit40
          Transparent = True
        end
        object Label46: TLabel
          Left = 8
          Top = 129
          Width = 40
          Height = 13
          Caption = 'Conjuge'
          FocusControl = DBEdit41
          Transparent = True
        end
        object Label47: TLabel
          Left = 824
          Top = 9
          Width = 60
          Height = 13
          Caption = 'CPF Avalista'
          FocusControl = DBEdit42
          Transparent = True
        end
        object Label57: TLabel
          Left = 536
          Top = 9
          Width = 24
          Height = 13
          Caption = 'Sexo'
          Transparent = True
        end
        object Label58: TLabel
          Left = 672
          Top = 9
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
          Transparent = True
        end
        object Label59: TLabel
          Left = 632
          Top = 49
          Width = 60
          Height = 13
          Caption = 'Escolaridade'
          Transparent = True
        end
        object Label60: TLabel
          Left = 488
          Top = 129
          Width = 85
          Height = 13
          Caption = 'Telefone Conjuge'
          FocusControl = DBEdit53
          Transparent = True
        end
        object Label61: TLabel
          Left = 632
          Top = 129
          Width = 85
          Height = 13
          Caption = 'Trabalho Conjuge'
          FocusControl = DBEdit54
          Transparent = True
        end
        object Label62: TLabel
          Left = 488
          Top = 49
          Width = 32
          Height = 13
          Caption = 'Sal'#225'rio'
          FocusControl = DBEdit55
          Transparent = True
        end
        object Label63: TLabel
          Left = 829
          Top = 129
          Width = 75
          Height = 13
          Caption = 'Sal'#225'rio Conjuge'
          FocusControl = DBEdit56
          Transparent = True
        end
        object EdCFP: TDBEdit
          Tag = 1
          Left = 9
          Top = 22
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 14
          TabOrder = 0
        end
        object DBEdit24: TDBEdit
          Left = 152
          Top = 23
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 1
        end
        object DBEdit34: TDBEdit
          Left = 489
          Top = 104
          Width = 468
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MAE'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 2
        end
        object DBEdit35: TDBEdit
          Left = 8
          Top = 104
          Width = 468
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAI'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 3
        end
        object DBEdit38: TDBEdit
          Left = 312
          Top = 23
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ORGAOESP'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 4
        end
        object DBEdit39: TDBEdit
          Left = 424
          Top = 23
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTNASC'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 10
          TabOrder = 5
        end
        object DBEdit36: TDBEdit
          Left = 344
          Top = 144
          Width = 132
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTNASCCONJU'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 10
          TabOrder = 6
        end
        object DBEdit40: TDBEdit
          Left = 8
          Top = 64
          Width = 468
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TRABALHO'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 7
        end
        object DBEdit41: TDBEdit
          Left = 8
          Top = 144
          Width = 325
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONJUGE'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 8
        end
        object DBEdit42: TDBEdit
          Left = 824
          Top = 23
          Width = 132
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPFAVAL'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 15
          TabOrder = 9
        end
        object DBComboBox5: TDBComboBox
          Left = 536
          Top = 23
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = FDMCliente.DCliente
          Enabled = False
          Items.Strings = (
            'MASCULINO'
            'FEMININO')
          TabOrder = 10
        end
        object DBComboBox6: TDBComboBox
          Left = 672
          Top = 23
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTCIVIL'
          DataSource = FDMCliente.DCliente
          Enabled = False
          Items.Strings = (
            'SOLTEIRO'
            'CASADO')
          TabOrder = 11
        end
        object DBEdit53: TDBEdit
          Left = 488
          Top = 144
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONECONJU'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 13
          TabOrder = 12
        end
        object DBEdit54: TDBEdit
          Left = 632
          Top = 144
          Width = 188
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TRABCONJU'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 13
        end
        object DBEdit55: TDBEdit
          Left = 488
          Top = 64
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SALARIO'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 14
        end
        object DBEdit56: TDBEdit
          Left = 829
          Top = 144
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SALCONJU'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 15
        end
        object DBComboBox7: TDBComboBox
          Left = 632
          Top = 64
          Width = 324
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESCOLARIDADE'
          DataSource = FDMCliente.DCliente
          Enabled = False
          Items.Strings = (
            '1'#186' GRAU INCOMPLETO'
            '1'#186' GRAU COMPLETO'
            '2'#186' GRAU INCOMPLETO'
            '2'#186' GRAU COMPLETO'
            'SUPERIOR INCOMPLETO'
            'SUPERIOR COMPLETO'
            'P'#211'S INCOMPLETA'
            'P'#211'S COMPLETA')
          TabOrder = 16
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Juridica'
      ImageIndex = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label26: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          FocusControl = EdCnpj
          Transparent = True
        end
        object Label27: TLabel
          Left = 280
          Top = 8
          Width = 87
          Height = 13
          Caption = 'Inscri'#231#227'o Estadual'
          FocusControl = DBEdit23
          Transparent = True
        end
        object EdCnpj: TDBEdit
          Tag = 1
          Left = 8
          Top = 24
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 18
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 280
          Top = 24
          Width = 247
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCEST'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 1
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Contato'
      ImageIndex = 7
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        DataSource = FDMCliente.DCliCont
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Title.Caption = 'N'#250'm.'
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SETOR'
            Title.Caption = 'Setor / Cargo'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE1'
            Title.Caption = 'Telefone'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL'
            Title.Caption = 'Ramal'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE2'
            Title.Caption = 'Telefone 2'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL2'
            Title.Caption = 'Ramal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE3'
            Title.Caption = 'Telefone 3'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMAL3'
            Title.Caption = 'Ramal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAX'
            Title.Caption = 'Fax'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAMALFAX'
            Title.Caption = 'Ramal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'E-mail'
            Width = 132
            Visible = True
          end>
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'Locais de Entrega'
      ImageIndex = 5
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 968
          Height = 183
          Align = alClient
          DataSource = FDMCliente.DCliFilial
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'N'#250'm.'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 152
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Title.Caption = 'Endere'#231'o'
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPLEMENTO'
              Title.Caption = 'Complemento'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Title.Caption = 'Bairro'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Caption = 'Cidade'
              Width = 142
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTATO'
              Title.Caption = 'Contato'
              Width = 151
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Caption = 'Telefone'
              Visible = True
            end>
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Refer'#234'ncias Comerciais'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 968
          Height = 183
          Align = alClient
          DataSource = FDMCliente.DCliRefCom
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'N'#250'm.'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMPRESA'
              Title.Caption = 'Empresa'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RESPONSAVEL'
              Title.Caption = 'Responsavel'
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Caption = 'Cidade'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Visible = True
            end>
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Refer'#234'ncias Banc'#225'rias'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 1
          Top = 1
          Width = 968
          Height = 183
          Align = alClient
          DataSource = FDMCliente.DCliRefBanc
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Caption = 'N'#250'm.'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NBANCO'
              Title.Caption = 'Banco'
              Width = 239
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGENCIA'
              Title.Caption = 'Agencia'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'Conta'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FONE'
              Title.Caption = 'Telefone'
              Width = 133
              Visible = True
            end>
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Limite de Cr'#233'dito'
      ImageIndex = 4
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label13: TLabel
          Left = 6
          Top = 14
          Width = 117
          Height = 13
          Caption = 'Limite de Cr'#233'dito Manual'
          FocusControl = DBEdit30
          Transparent = True
        end
        object Label15: TLabel
          Left = 162
          Top = 14
          Width = 40
          Height = 13
          Caption = 'Validade'
          FocusControl = DBEdit31
          Transparent = True
        end
        object Label31: TLabel
          Left = 304
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit32
          Transparent = True
        end
        object DBEdit30: TDBEdit
          Left = 6
          Top = 30
          Width = 136
          Height = 21
          CharCase = ecUpperCase
          DataField = 'LIMITECREDITO'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 0
        end
        object DBEdit31: TDBEdit
          Left = 162
          Top = 30
          Width = 136
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALIDADE'
          DataSource = FDMCliente.DCliente
          Enabled = False
          MaxLength = 10
          TabOrder = 1
        end
        object DBEdit32: TDBEdit
          Left = 304
          Top = 30
          Width = 647
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OBSERVACAO'
          DataSource = FDMCliente.DCliente
          Enabled = False
          TabOrder = 2
        end
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = 'Hist'#243'rico de Altera'#231#245'es'
      ImageIndex = 6
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 970
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 0
        object DBGrid5: TDBGrid
          Left = 1
          Top = 1
          Width = 968
          Height = 183
          Align = alClient
          DataSource = FDMCliente.DCliHist
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODUSU'
              Title.Caption = 'Usu'#225'rio'
              Width = 188
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACAO'
              Title.Caption = 'A'#231#227'o'
              Width = 634
              Visible = True
            end>
        end
      end
    end
  end
end
