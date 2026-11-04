object FCliente: TFCliente
  Left = 392
  Top = 414
  Caption = 'Cadastro de Clientes'
  ClientHeight = 671
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 982
    Height = 671
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    OnChange = cxPageControl1Change
    ClientRectBottom = 666
    ClientRectLeft = 2
    ClientRectRight = 977
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 42
        Align = alTop
        TabOrder = 0
        object BtInsere: TcxButton
          Left = 4
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 844
          Top = 3
          Width = 126
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 724
          Top = 3
          Width = 120
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 604
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 124
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object BtImprimir: TcxButton
          Left = 484
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
        end
        object cxButton16: TcxButton
          Left = 244
          Top = 3
          Width = 120
          Height = 33
          Caption = 'Localizar'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 6
          OnClick = cxButton16Click
        end
        object cxButton15: TcxButton
          Left = 364
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Gerar Fornecedor'
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 7
          OnClick = cxButton15Click
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 42
        Width = 975
        Height = 385
        Align = alClient
        Enabled = False
        TabOrder = 1
        ExplicitHeight = 600
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
          Width = 102
          Height = 13
          Caption = 'Nome / Raz'#227'o Social'
          FocusControl = DBEdit2
          Transparent = True
        end
        object Label3: TLabel
          Left = 112
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Pessoa'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label5: TLabel
          Left = 112
          Top = 48
          Width = 46
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
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit9
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
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label20: TLabel
          Left = 8
          Top = 48
          Width = 21
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
        object Label24: TLabel
          Left = 776
          Top = 8
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
          FocusControl = DBEdit19
          Transparent = True
        end
        object Label25: TLabel
          Left = 872
          Top = 8
          Width = 71
          Height = 13
          Caption = 'Data Altera'#231#227'o'
          FocusControl = DBEdit20
          Transparent = True
        end
        object Label34: TLabel
          Left = 316
          Top = 88
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit29
          Transparent = True
        end
        object Label38: TLabel
          Left = 776
          Top = 88
          Width = 18
          Height = 13
          Caption = 'Site'
          FocusControl = DBEdit33
          Transparent = True
        end
        object Label42: TLabel
          Left = 544
          Top = 88
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEdit37
          Transparent = True
        end
        object Label6: TLabel
          Left = 112
          Top = 88
          Width = 64
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
        object Label9: TLabel
          Left = 544
          Top = 131
          Width = 21
          Height = 13
          Caption = 'Tipo'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label10: TLabel
          Left = 679
          Top = 48
          Width = 61
          Height = 13
          Caption = 'C'#243'digo IBGE'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label33: TLabel
          Left = 316
          Top = 131
          Width = 58
          Height = 13
          Caption = 'Lista Pre'#231'os'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label64: TLabel
          Left = 430
          Top = 88
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit27
          Transparent = True
        end
        object Label76: TLabel
          Left = 8
          Top = 88
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label78: TLabel
          Left = 8
          Top = 176
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit4
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 23
          Width = 99
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = FDMCliente.DCliente
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Tag = 1
          Left = 209
          Top = 23
          Width = 327
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = FDMCliente.DCliente
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Tag = 1
          Left = 112
          Top = 23
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESSOA'
          DataSource = FDMCliente.DCliente
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 2
          OnChange = DBComboBox1Change
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
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Tag = 1
          Left = 429
          Top = 63
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = FDMCliente.DCliente
          TabOrder = 4
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
          TabOrder = 5
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
          TabOrder = 6
          OnExit = DBEdit12Exit
        end
        object DBComboBox2: TDBComboBox
          Tag = 1
          Left = 915
          Top = 63
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = FDMCliente.DCliente
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RR'
            'RO'
            'RJ'
            'RN'
            'RS'
            'SC'
            'SP'
            'SE'
            'TO')
          TabOrder = 7
        end
        object DBEdit15: TDBEdit
          Tag = 1
          Left = 8
          Top = 63
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = FDMCliente.DCliente
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 544
          Top = 23
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEFANTA'
          DataSource = FDMCliente.DCliente
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 776
          Top = 23
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATACAD'
          DataSource = FDMCliente.DCliente
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit20: TDBEdit
          Left = 872
          Top = 23
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATAALT'
          DataSource = FDMCliente.DCliente
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit29: TDBEdit
          Tag = 1
          Left = 316
          Top = 103
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = FDMCliente.DCliente
          TabOrder = 12
        end
        object DBEdit33: TDBEdit
          Left = 776
          Top = 103
          Width = 185
          Height = 21
          DataField = 'SITE'
          DataSource = FDMCliente.DCliente
          TabOrder = 13
        end
        object DBEdit37: TDBEdit
          Tag = 1
          Left = 544
          Top = 103
          Width = 225
          Height = 21
          DataField = 'EMAIL'
          DataSource = FDMCliente.DCliente
          TabOrder = 14
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 905
          Top = 148
          Caption = 'Ativo'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = FDMCliente.DCliente
          ParentFont = False
          Properties.DisplayChecked = 'A'
          Properties.DisplayUnchecked = 'I'
          Properties.ValueChecked = 'A'
          Properties.ValueUnchecked = 'I'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Transparent = True
          Width = 56
        end
        object DBEdit4: TDBEdit
          Left = 112
          Top = 103
          Width = 198
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = FDMCliente.DCliente
          TabOrder = 16
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 8
          Top = 147
          DataBinding.DataField = 'CODATIV'
          DataBinding.DataSource = FDMCliente.DCliente
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDM.DAtividade
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 17
          OnExit = cxDBLookupComboBox1Exit
          Width = 282
        end
        object BtAtiv: TcxButton
          Left = 291
          Top = 147
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 18
        end
        object BtCep: TcxButton
          Left = 88
          Top = 63
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 19
          OnClick = BtCepClick
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Tag = 1
          Left = 544
          Top = 147
          DataBinding.DataField = 'TIPOCLI'
          DataBinding.DataSource = FDMCliente.DCliente
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMCliente.DTipoCliente
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 20
          OnExit = cxDBLookupComboBox5Exit
          Width = 334
        end
        object BtTipo: TcxButton
          Left = 880
          Top = 147
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 21
          OnClick = BtTipoClick
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 679
          Top = 63
          DataBinding.DataField = 'CODMUNICUF'
          DataBinding.DataSource = FDMCliente.DCliente
          Properties.KeyFieldNames = 'CODMUNICUF'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = FDM.DMunicipio
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 22
          OnExit = cxDBLookupComboBox6Exit
          Width = 71
        end
        object BtCodmunic: TcxButton
          Left = 750
          Top = 63
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 23
          OnClick = BtCodmunicClick
        end
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 316
          Top = 147
          DataBinding.DataField = 'CODLISTA'
          DataBinding.DataSource = FDMCliente.DCliente
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 24
          Width = 201
        end
        object BtPreco: TcxButton
          Left = 517
          Top = 147
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 25
        end
        object DBEdit27: TDBEdit
          Left = 429
          Top = 103
          Width = 108
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE2'
          DataSource = FDMCliente.DCliente
          TabOrder = 26
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Tag = 1
          Left = 8
          Top = 103
          DataBinding.DataField = 'CODPAIS'
          DataBinding.DataSource = FDMCliente.DCliente
          Properties.KeyFieldNames = 'NUMERO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDM2.DPais
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 27
          OnExit = cxDBLookupComboBox8Exit
          Width = 80
        end
        object btpais: TcxButton
          Left = 88
          Top = 103
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 28
          OnClick = btpaisClick
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 194
          Width = 953
          Height = 169
          DataField = 'OBSERVACAO'
          DataSource = FDMCliente.DCliente
          TabOrder = 29
          OnKeyPress = DBMemo1KeyPress
        end
      end
      object PageControl2: TcxPageControl
        Left = 0
        Top = 427
        Width = 975
        Height = 215
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet3
        OnChange = PageControl2Change
        ExplicitLeft = 1
        ExplicitTop = 384
        ExplicitWidth = 973
        ClientRectBottom = 210
        ClientRectLeft = 2
        ClientRectRight = 970
        ClientRectTop = 24
        object cxTabSheet3: TcxTabSheet
          Caption = 'Fisica'
          ImageIndex = 0
          ExplicitWidth = 966
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            ExplicitWidth = 966
            object Label28: TLabel
              Left = 8
              Top = 7
              Width = 20
              Height = 13
              Caption = 'CPF'
              FocusControl = EdCFP
              Transparent = True
            end
            object Label29: TLabel
              Left = 152
              Top = 7
              Width = 16
              Height = 13
              Caption = 'RG'
              FocusControl = DBEdit24
              Transparent = True
            end
            object Label44: TLabel
              Left = 288
              Top = 7
              Width = 69
              Height = 13
              Caption = 'Data de Nasc.'
              FocusControl = DBEdit39
              Transparent = True
            end
            object EdCFP: TDBEdit
              Tag = 1
              Left = 8
              Top = 23
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CPF'
              DataSource = FDMCliente.DCliente
              TabOrder = 0
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 23
              Width = 130
              Height = 21
              CharCase = ecUpperCase
              DataField = 'RG'
              DataSource = FDMCliente.DCliente
              TabOrder = 1
            end
            object DBEdit39: TDBEdit
              Left = 288
              Top = 23
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DTNASC'
              DataSource = FDMCliente.DCliente
              TabOrder = 2
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Juridica'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            ExplicitWidth = 966
            object Label26: TLabel
              Left = 8
              Top = 8
              Width = 27
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
              FocusControl = DBEdit22
              Transparent = True
            end
            object Label55: TLabel
              Left = 535
              Top = 8
              Width = 91
              Height = 13
              Caption = 'Inscri'#231#227'o Municipal'
              FocusControl = DBEdit26
              Transparent = True
            end
            object Label56: TLabel
              Left = 789
              Top = 8
              Width = 83
              Height = 13
              Caption = 'Regime Tribut'#225'rio'
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
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 280
              Top = 24
              Width = 247
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSCEST'
              DataSource = FDMCliente.DCliente
              TabOrder = 1
            end
            object DBEdit26: TDBEdit
              Left = 535
              Top = 24
              Width = 247
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSCMUN'
              DataSource = FDMCliente.DCliente
              TabOrder = 2
            end
            object DBComboBox3: TDBComboBox
              Tag = 1
              Left = 788
              Top = 24
              Width = 160
              Height = 21
              CharCase = ecUpperCase
              DataField = 'REGIMETRIBUT'
              DataSource = FDMCliente.DCliente
              Items.Strings = (
                'SIMPLES'
                'LUCRO PRESUMIDO'
                'LUCRO REAL')
              TabOrder = 3
            end
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Limite de Cr'#233'dito'
          ImageIndex = 4
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label13: TLabel
              Left = 14
              Top = 11
              Width = 116
              Height = 13
              Caption = 'Limite de Cr'#233'dito Manual'
              FocusControl = DBEdit11
              Transparent = True
            end
            object Label15: TLabel
              Left = 150
              Top = 11
              Width = 41
              Height = 13
              Caption = 'Validade'
              FocusControl = DBEdit13
              Transparent = True
            end
            object Label31: TLabel
              Left = 286
              Top = 11
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
              FocusControl = DBEdit21
              Transparent = True
            end
            object DBEdit11: TDBEdit
              Left = 14
              Top = 27
              Width = 130
              Height = 21
              CharCase = ecUpperCase
              DataField = 'LIMITECREDITO'
              DataSource = FDMCliente.DCliente
              TabOrder = 0
            end
            object DBEdit13: TDBEdit
              Left = 150
              Top = 27
              Width = 130
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VALIDADE'
              DataSource = FDMCliente.DCliente
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit21: TDBEdit
              Left = 286
              Top = 27
              Width = 674
              Height = 21
              CharCase = ecUpperCase
              DataField = 'OBSERVACAO'
              DataSource = FDMCliente.DCliente
              TabOrder = 2
            end
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Locais de Entrega'
          ImageIndex = 5
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Panel8: TPanel
              Left = 1
              Top = 1
              Width = 103
              Height = 184
              Align = alLeft
              TabOrder = 0
              object BtAddFilial: TcxButton
                Left = 6
                Top = 20
                Width = 90
                Height = 33
                Caption = '&Adicionar'
                Enabled = False
                OptionsImage.ImageIndex = 9
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 0
                OnClick = BtAddFilialClick
              end
              object BtRevFilial: TcxButton
                Left = 6
                Top = 53
                Width = 90
                Height = 33
                Caption = '&Remover'
                Enabled = False
                OptionsImage.ImageIndex = 8
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 1
                OnClick = BtRevFilialClick
              end
            end
            object DBGrid4: TDBGrid
              Left = 104
              Top = 1
              Width = 863
              Height = 184
              Align = alClient
              DataSource = FDMCliente.DCliFilial
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid4DblClick
              Columns = <
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
        object cxTabSheet6: TcxTabSheet
          Caption = 'Refer'#234'ncias Banc'#225'rias'
          ImageIndex = 3
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Panel10: TPanel
              Left = 1
              Top = 1
              Width = 103
              Height = 184
              Align = alLeft
              TabOrder = 0
              object BtAddRefBanc: TcxButton
                Left = 6
                Top = 20
                Width = 90
                Height = 33
                Caption = '&Adicionar'
                Enabled = False
                OptionsImage.ImageIndex = 9
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 0
                OnClick = BtAddRefBancClick
              end
              object BtRevRefBanc: TcxButton
                Left = 6
                Top = 53
                Width = 90
                Height = 33
                Caption = '&Remover'
                Enabled = False
                OptionsImage.ImageIndex = 8
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 1
                OnClick = BtRevRefBancClick
              end
            end
            object DBGrid2: TDBGrid
              Left = 104
              Top = 1
              Width = 863
              Height = 184
              Align = alClient
              DataSource = FDMCliente.DCliRefBanc
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
              Columns = <
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
        object cxTabSheet5: TcxTabSheet
          Caption = 'Refer'#234'ncias Comerciais'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 103
              Height = 184
              Align = alLeft
              TabOrder = 0
              object BtAddRefCom: TcxButton
                Left = 6
                Top = 20
                Width = 90
                Height = 33
                Caption = '&Adicionar'
                Enabled = False
                OptionsImage.ImageIndex = 9
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 0
                OnClick = BtAddRefComClick
              end
              object BtRevRefCom: TcxButton
                Left = 6
                Top = 53
                Width = 90
                Height = 33
                Caption = '&Remover'
                Enabled = False
                OptionsImage.ImageIndex = 8
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 1
                OnClick = BtRevRefComClick
              end
            end
            object DBGrid1: TDBGrid
              Left = 104
              Top = 1
              Width = 863
              Height = 184
              Align = alClient
              DataSource = FDMCliente.DCliRefCom
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid1DblClick
              Columns = <
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
        object cxTabSheet13: TcxTabSheet
          Caption = 'Dados Adicionais'
          ImageIndex = 9
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 186
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label19: TLabel
              Left = 11
              Top = 11
              Width = 46
              Height = 13
              Caption = 'Vendedor'
              Transparent = True
            end
            object Label21: TLabel
              Left = 235
              Top = 11
              Width = 90
              Height = 13
              Caption = 'Vendedor Indicado'
              FocusControl = DBEdit16
              Transparent = True
            end
            object Label22: TLabel
              Left = 487
              Top = 10
              Width = 49
              Height = 13
              Caption = 'Atendente'
              Transparent = True
            end
            object Label30: TLabel
              Left = 711
              Top = 10
              Width = 93
              Height = 13
              Caption = 'Atendente Indicado'
              FocusControl = DBEdit17
              Transparent = True
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox
              Left = 11
              Top = 26
              DataBinding.DataField = 'CODVEND2'
              DataBinding.DataSource = FDMCliente.DCliente
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = FDMRh.DVendPesq
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              OnExit = cxDBLookupComboBox2Exit
              Width = 200
            end
            object BtVend: TcxButton
              Left = 210
              Top = 26
              Width = 19
              Height = 21
              Caption = '...'
              TabOrder = 1
              OnClick = BtVendClick
            end
            object DBEdit16: TDBEdit
              Left = 235
              Top = 26
              Width = 244
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'NOMEVEND'
              DataSource = FDMCliente.DCliente
              ReadOnly = True
              TabOrder = 2
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox
              Left = 487
              Top = 26
              DataBinding.DataField = 'CODATEND2'
              DataBinding.DataSource = FDMCliente.DCliente
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = FDMRh.DAtendPesq
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              OnExit = cxDBLookupComboBox3Exit
              Width = 200
            end
            object BtAtend: TcxButton
              Left = 686
              Top = 26
              Width = 19
              Height = 21
              Caption = '...'
              TabOrder = 4
              OnClick = BtAtendClick
            end
            object DBEdit17: TDBEdit
              Left = 711
              Top = 26
              Width = 244
              Height = 21
              TabStop = False
              CharCase = ecUpperCase
              Color = clBtnFace
              DataField = 'NOMEATEND'
              DataSource = FDMCliente.DCliente
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
        object cxTabSheet15: TcxTabSheet
          Caption = 'Documenta'#231#227'o'
          ImageIndex = 11
          object Panel19: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 186
            Align = alLeft
            TabOrder = 0
            object BtAddCliDoc: TcxButton
              Left = 6
              Top = 19
              Width = 90
              Height = 33
              Caption = '&Adicionar'
              Enabled = False
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 0
              OnClick = BtAddCliDocClick
            end
            object BtRemCliDoc: TcxButton
              Left = 6
              Top = 52
              Width = 90
              Height = 33
              Caption = '&Remover'
              Enabled = False
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 1
              OnClick = BtRemCliDocClick
            end
            object BtVisuDoc: TcxButton
              Left = 6
              Top = 85
              Width = 90
              Height = 33
              Caption = '&Visualizar'
              OptionsImage.ImageIndex = 17
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 2
              OnClick = BtVisuDocClick
            end
          end
          object DBGrid9: TDBGrid
            Left = 103
            Top = 0
            Width = 865
            Height = 186
            Align = alClient
            DataSource = FDMCliente.DCliDoc
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid9DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'TIPODOC'
                Title.Caption = 'Tipo Documento'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 388
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALIDADE'
                Title.Caption = 'Validade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOCALARQ'
                Title.Caption = 'Local'
                Width = 200
                Visible = True
              end>
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = 'Contato'
          ImageIndex = 9
          object DBGrid3: TDBGrid
            Left = 121
            Top = 0
            Width = 847
            Height = 186
            Align = alClient
            DataSource = FDMCliente.DCliCont
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid3DblClick
            Columns = <
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
                Title.Caption = 'Celular'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FONE3'
                Title.Caption = 'Telefone 3'
                Width = 112
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
                FieldName = 'EMAIL'
                Title.Caption = 'E-mail'
                Width = 132
                Visible = True
              end>
          end
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 186
            Align = alLeft
            TabOrder = 1
            object BtAddCont: TcxButton
              Left = 6
              Top = 8
              Width = 107
              Height = 32
              Caption = '&Add. Contato'
              Enabled = False
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 0
              OnClick = BtAddContClick
            end
            object BtRevCont: TcxButton
              Left = 6
              Top = 40
              Width = 107
              Height = 32
              Caption = '&Rem. Contato'
              Enabled = False
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 1
              OnClick = BtRevContClick
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 52
        Width = 975
        Height = 556
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          Tag = 1
          OnDblClick = cxGrid1DBTableView1DblClick
          OnCellClick = cxGrid1DBTableView1CellClick
          DataController.DataSource = FDMCliente.DConCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 258
          end
          object cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOMEFANTA'
            Width = 165
          end
          object cxGrid1DBTableView1FONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'FONE'
            Width = 94
          end
          object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
            Caption = 'CPF / CNPJ'
            DataBinding.FieldName = 'cpfcnpj'
            Width = 141
          end
          object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 186
          end
          object cxGrid1DBTableView1UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 52
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object cxButton1: TcxButton
          Left = 869
          Top = 12
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 767
          Top = 12
          Width = 102
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton2Click
        end
        object EdNome: TEdit
          Left = 41
          Top = 22
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = EdNomeKeyDown
          OnKeyUp = EdNomeKeyUp
        end
        object RgFiltro: TcxRadioGroup
          Left = 280
          Top = 8
          Caption = 'Buscar Descri'#231#227'o:'
          Ctl3D = True
          ParentCtl3D = False
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'No in'#237'cio'
            end
            item
              Caption = 'No meio'
            end
            item
              Caption = 'No fim'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
          Height = 39
          Width = 233
        end
        object CkInativ: TcxCheckBox
          Left = 527
          Top = 24
          Caption = 'Mostrar inativos'
          TabOrder = 4
          Transparent = True
          OnClick = CkInativosClick
          Width = 98
        end
        object cxButton6: TcxButton
          Left = 665
          Top = 12
          Width = 102
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton6Click
        end
      end
      object PConsulta: TPanel
        Left = 0
        Top = 608
        Width = 975
        Height = 34
        Align = alBottom
        TabOrder = 2
        Visible = False
        object cxButton4: TcxButton
          Left = 762
          Top = 4
          Width = 102
          Height = 27
          Caption = 'OK'
          OptionsImage.ImageIndex = 7
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = cxButton4Click
        end
        object cxButton5: TcxButton
          Left = 864
          Top = 4
          Width = 102
          Height = 27
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 13
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton5Click
        end
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 2
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 94
        Align = alTop
        TabOrder = 0
        object Label35: TLabel
          Left = 5
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Lista de Pre'#231'o'
          Transparent = True
        end
        object Label36: TLabel
          Left = 195
          Top = 4
          Width = 49
          Height = 13
          Caption = 'Atendente'
          Transparent = True
        end
        object Label37: TLabel
          Left = 385
          Top = 4
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          Transparent = True
        end
        object Label48: TLabel
          Left = 5
          Top = 44
          Width = 54
          Height = 13
          Caption = 'Localizador'
          Transparent = True
        end
        object Label49: TLabel
          Left = 195
          Top = 44
          Width = 21
          Height = 13
          Caption = 'Tipo'
          Transparent = True
        end
        object Label50: TLabel
          Left = 385
          Top = 44
          Width = 90
          Height = 13
          Caption = 'Ramo de Atividade'
          Transparent = True
        end
        object Label51: TLabel
          Left = 577
          Top = 4
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label52: TLabel
          Left = 673
          Top = 4
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object cxButton7: TcxButton
          Left = 879
          Top = 3
          Width = 93
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 18
          OnClick = cxButton7Click
        end
        object cxButton8: TcxButton
          Left = 786
          Top = 36
          Width = 93
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 17
          OnClick = cxButon8Click
        end
        object CkInativ2: TcxCheckBox
          Left = 787
          Top = 72
          Caption = 'Mostrar inativos'
          TabOrder = 15
          Transparent = True
          OnClick = CkInativosClick
          Width = 98
        end
        object cxButton9: TcxButton
          Left = 879
          Top = 36
          Width = 93
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 19
          OnClick = cxButton9Click
        end
        object BtConsultar: TcxButton
          Left = 786
          Top = 3
          Width = 93
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 16
          OnClick = BtConsultarClick
        end
        object BtConCodCondPag: TcxButton
          Left = 170
          Top = 19
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 1
        end
        object CbListaPreco: TDBLookupComboBox
          Left = 5
          Top = 19
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          TabOrder = 0
        end
        object cxButton10: TcxButton
          Left = 360
          Top = 19
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 3
          OnClick = cxButton10Click
        end
        object CbAtendente: TDBLookupComboBox
          Left = 195
          Top = 19
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMRh.DAtendPesq
          TabOrder = 2
        end
        object cxButton11: TcxButton
          Left = 550
          Top = 19
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 5
          OnClick = cxButton11Click
        end
        object CbVendedor: TDBLookupComboBox
          Left = 385
          Top = 19
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMRh.DVendPesq
          TabOrder = 4
        end
        object cxButton12: TcxButton
          Left = 170
          Top = 59
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 9
        end
        object CbLocalizador: TDBLookupComboBox
          Left = 5
          Top = 59
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDM.DLocalizador
          TabOrder = 8
        end
        object cxButton13: TcxButton
          Left = 360
          Top = 59
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 11
        end
        object CbTipoCli: TDBLookupComboBox
          Left = 195
          Top = 59
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMCliente.DTipoCliente
          TabOrder = 10
        end
        object cxButton14: TcxButton
          Left = 550
          Top = 59
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 13
        end
        object CbRamoAtiv: TDBLookupComboBox
          Left = 385
          Top = 59
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDM.DAtividade
          TabOrder = 12
        end
        object DtMovInicial: TcxDateEdit
          Left = 577
          Top = 19
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 88
        end
        object DtMovFinal: TcxDateEdit
          Left = 673
          Top = 19
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 88
        end
        object RgData: TcxRadioGroup
          Left = 577
          Top = 41
          Caption = 'Data'
          Properties.Columns = 2
          Properties.DefaultCaption = 'C'
          Properties.DefaultValue = 'C'
          Properties.Items = <
            item
              Caption = 'Cadastro'
              Value = 'C'
            end
            item
              Caption = 'Ult. Altera'#231#227'o'
              Value = 'A'
            end>
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 14
          Height = 39
          Width = 184
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 94
        Width = 975
        Height = 548
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Tag = 1
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDMCliente.DConCliente2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBTableView1DATACAD: TcxGridDBColumn
            Caption = 'Dt. Cad.'
            DataBinding.FieldName = 'DATACAD'
            Width = 90
          end
          object cxGridDBTableView1DATAALT: TcxGridDBColumn
            Caption = 'Dt. Alt'
            DataBinding.FieldName = 'DATAALT'
            Width = 92
          end
          object cxGridDBTableView1DTNASC: TcxGridDBColumn
            Caption = 'Dt. Nasc.'
            DataBinding.FieldName = 'DTNASC'
            Width = 92
          end
          object cxGridDBTableView1PESSOA: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'PESSOA'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 258
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOMEFANTA'
            Width = 165
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'FONE'
            Width = 94
          end
          object cxGridDBTableView1FONE2: TcxGridDBColumn
            Caption = 'Telefone 2'
            DataBinding.FieldName = 'FONE2'
            Width = 89
          end
          object cxGridDBTableView1EMAIL: TcxGridDBColumn
            Caption = 'E-mail'
            DataBinding.FieldName = 'EMAIL'
            Width = 151
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'CPF / CNPJ'
            DataBinding.FieldName = 'cpfcnpj'
            Width = 112
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Insc. Est./RG'
            DataBinding.FieldName = 'inscrg'
          end
          object cxGridDBTableView1SITE: TcxGridDBColumn
            Caption = 'Site'
            DataBinding.FieldName = 'SITE'
            Width = 156
          end
          object cxGridDBTableView1ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'ENDERECO'
            Width = 152
          end
          object cxGridDBTableView1NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
          end
          object cxGridDBTableView1BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'BAIRRO'
            Width = 119
          end
          object cxGridDBTableView1CEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 186
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
          end
          object cxGridDBTableView1NOMELISTA: TcxGridDBColumn
            Caption = 'Lista de Pre'#231'o'
            DataBinding.FieldName = 'NOMELISTA'
            Width = 136
          end
          object cxGridDBTableView1NOMEATIV: TcxGridDBColumn
            Caption = 'Ramo de Atividade'
            DataBinding.FieldName = 'NOMEATIV'
            Width = 163
          end
          object cxGridDBTableView1NOMEVEND: TcxGridDBColumn
            Caption = 'Vendedor Indicado'
            DataBinding.FieldName = 'NOMEVEND'
            Width = 200
          end
          object cxGridDBTableView1NOMEVEND2: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NOMEVEND2'
            Width = 141
          end
          object cxGridDBTableView1NOMEATEND: TcxGridDBColumn
            Caption = 'Atendente Indicado'
            DataBinding.FieldName = 'NOMEATEND'
            Width = 172
          end
          object cxGridDBTableView1NOMEATEND2: TcxGridDBColumn
            Caption = 'Atendente'
            DataBinding.FieldName = 'NOMEATEND2'
            Width = 136
          end
          object cxGridDBTableView1NOMELOCAL: TcxGridDBColumn
            Caption = 'Localizador'
            DataBinding.FieldName = 'NOMELOCAL'
            Width = 134
          end
          object cxGridDBTableView1DESCTIPOCLI: TcxGridDBColumn
            Caption = 'Tipo de Cliente'
            DataBinding.FieldName = 'DESCTIPOCLI'
            Width = 139
          end
          object cxGridDBTableView1NOMESETOR: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'NOMESETOR'
            Width = 108
          end
          object cxGridDBTableView1OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            Width = 200
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 736
    Top = 304
    object Restaurar1: TMenuItem
      Caption = 'Restaurar'
    end
  end
end
