object FEntidade: TFEntidade
  Left = 392
  Top = 414
  Caption = 'Cadastro de Entidades'
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
          Width = 138
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 832
          Top = 3
          Width = 138
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 694
          Top = 3
          Width = 138
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 556
          Top = 3
          Width = 138
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 142
          Top = 3
          Width = 138
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object BtImprimir: TcxButton
          Left = 418
          Top = 3
          Width = 138
          Height = 33
          Caption = '&Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
        end
        object cxButton16: TcxButton
          Left = 280
          Top = 3
          Width = 138
          Height = 33
          Caption = 'Localizar'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 6
          OnClick = cxButton16Click
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 42
        Width = 975
        Height = 600
        Align = alClient
        Enabled = False
        TabOrder = 1
        object Panel13: TPanel
          Left = 1
          Top = 1
          Width = 973
          Height = 179
          Align = alTop
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
            Left = 112
            Top = 8
            Width = 102
            Height = 13
            Caption = 'Nome / Raz'#227'o Social'
            FocusControl = DBEdit2
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
          object Label9: TLabel
            Left = 544
            Top = 130
            Width = 66
            Height = 13
            Caption = 'Tipo Entidade'
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
          object Label26: TLabel
            Left = 8
            Top = 130
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = EdCnpj
            Transparent = True
          end
          object Label27: TLabel
            Left = 180
            Top = 130
            Width = 87
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual'
            FocusControl = DBEdit22
            Transparent = True
          end
          object Label55: TLabel
            Left = 316
            Top = 130
            Width = 91
            Height = 13
            Caption = 'Inscri'#231#227'o Municipal'
            FocusControl = DBEdit26
            Transparent = True
          end
          object Label56: TLabel
            Left = 421
            Top = 130
            Width = 83
            Height = 13
            Caption = 'Regime Tribut'#225'rio'
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
            DataSource = FDMGerLicitacao.DEntidade
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Tag = 1
            Left = 112
            Top = 23
            Width = 425
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 112
            Top = 63
            Width = 312
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDERECO'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 429
            Top = 63
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NUMERO'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 8
          end
          object DBEdit9: TDBEdit
            Left = 544
            Top = 63
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 9
          end
          object DBEdit12: TDBEdit
            Left = 776
            Top = 63
            Width = 135
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADE'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 12
            OnExit = DBEdit12Exit
          end
          object DBComboBox2: TDBComboBox
            Left = 915
            Top = 63
            Width = 46
            Height = 21
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = FDMGerLicitacao.DEntidade
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
            TabOrder = 13
          end
          object DBEdit15: TDBEdit
            Left = 8
            Top = 63
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEP'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 9
            TabOrder = 5
          end
          object DBEdit18: TDBEdit
            Left = 544
            Top = 23
            Width = 225
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMEFANTA'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 2
          end
          object DBEdit19: TDBEdit
            Left = 776
            Top = 23
            Width = 89
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'DATACAD'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 10
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit20: TDBEdit
            Left = 872
            Top = 23
            Width = 89
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'DATAALT'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 10
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit29: TDBEdit
            Left = 316
            Top = 103
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FONE'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 13
            TabOrder = 17
          end
          object DBEdit33: TDBEdit
            Left = 776
            Top = 103
            Width = 185
            Height = 21
            DataField = 'SITE'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 20
          end
          object DBEdit37: TDBEdit
            Left = 544
            Top = 103
            Width = 225
            Height = 21
            DataField = 'EMAIL'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 19
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 712
            Top = 149
            Caption = 'Ativo'
            DataBinding.DataField = 'STATUS'
            DataBinding.DataSource = FDMGerLicitacao.DEntidade
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
            TabOrder = 27
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
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 16
          end
          object BtAddCont: TcxButton
            Left = 776
            Top = 136
            Width = 92
            Height = 32
            Caption = '&Add Contato'
            OptionsImage.ImageIndex = 9
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 28
            OnClick = BtAddContClick
          end
          object BtRevCont: TcxButton
            Left = 868
            Top = 136
            Width = 93
            Height = 32
            Caption = '&Rem Contato'
            OptionsImage.ImageIndex = 8
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 29
            OnClick = BtRevContClick
          end
          object BtCep: TcxButton
            Left = 88
            Top = 63
            Width = 19
            Height = 21
            Caption = '...'
            TabOrder = 6
            OnClick = BtCepClick
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 544
            Top = 146
            DataBinding.DataField = 'TIPOCLI'
            DataBinding.DataSource = FDMGerLicitacao.DEntidade
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = FDMGerLicitacao.DTipoEntidadePesq
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 25
            OnExit = cxDBLookupComboBox5Exit
            Width = 143
          end
          object BtTipo: TcxButton
            Left = 688
            Top = 146
            Width = 19
            Height = 21
            Caption = '...'
            TabOrder = 26
            OnClick = BtTipoClick
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 679
            Top = 63
            DataBinding.DataField = 'CODMUNICUF'
            DataBinding.DataSource = FDMGerLicitacao.DEntidade
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
            TabOrder = 10
            OnExit = cxDBLookupComboBox6Exit
            Width = 71
          end
          object BtCodmunic: TcxButton
            Left = 750
            Top = 63
            Width = 19
            Height = 21
            Caption = '...'
            TabOrder = 11
            OnClick = BtCodmunicClick
          end
          object DBEdit27: TDBEdit
            Left = 429
            Top = 103
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FONE2'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 13
            TabOrder = 18
          end
          object cxDBLookupComboBox8: TcxDBLookupComboBox
            Left = 8
            Top = 103
            DataBinding.DataField = 'CODPAIS'
            DataBinding.DataSource = FDMGerLicitacao.DEntidade
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
            TabOrder = 14
            OnExit = cxDBLookupComboBox8Exit
            Width = 80
          end
          object btpais: TcxButton
            Left = 88
            Top = 103
            Width = 19
            Height = 21
            Caption = '...'
            TabOrder = 15
            OnClick = btpaisClick
          end
          object EdCnpj: TDBEdit
            Left = 8
            Top = 146
            Width = 166
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CNPJ'
            DataSource = FDMGerLicitacao.DEntidade
            MaxLength = 18
            TabOrder = 21
          end
          object DBEdit22: TDBEdit
            Left = 180
            Top = 146
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INSCEST'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 22
          end
          object DBEdit26: TDBEdit
            Left = 316
            Top = 146
            Width = 98
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INSCMUN'
            DataSource = FDMGerLicitacao.DEntidade
            TabOrder = 23
          end
          object DBComboBox3: TDBComboBox
            Left = 421
            Top = 146
            Width = 116
            Height = 21
            CharCase = ecUpperCase
            DataField = 'REGIMETRIBUT'
            DataSource = FDMGerLicitacao.DEntidade
            Items.Strings = (
              'SIMPLES'
              'LUCRO PRESUMIDO'
              'LUCRO REAL')
            TabOrder = 24
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 1
          Top = 180
          Align = alClient
          Caption = 'Contatos'
          TabOrder = 1
          Height = 204
          Width = 973
          object DBGrid3: TDBGrid
            Left = 3
            Top = 15
            Width = 967
            Height = 179
            Align = alClient
            DataSource = FDMGerLicitacao.DEntidadeCont
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
        end
        object PageControl2: TcxPageControl
          Left = 1
          Top = 384
          Width = 973
          Height = 215
          Align = alBottom
          TabOrder = 2
          Properties.ActivePage = cxTabSheet8
          ClientRectBottom = 210
          ClientRectLeft = 2
          ClientRectRight = 968
          ClientRectTop = 24
          object cxTabSheet8: TcxTabSheet
            Caption = 'Locais de Entrega'
            ImageIndex = 5
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 103
              Height = 186
              Align = alLeft
              TabOrder = 0
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitHeight = 184
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
              Left = 103
              Top = 0
              Width = 863
              Height = 186
              Align = alClient
              DataSource = FDMGerLicitacao.DEntidadeFilial
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
          object cxTabSheet9: TcxTabSheet
            Caption = 'Hist'#243'rico de Altera'#231#245'es'
            ImageIndex = 6
            object DBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 966
              Height = 186
              Align = alClient
              DataSource = FDMGerLicitacao.DEntidadeHist
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
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
              Width = 863
              Height = 186
              Align = alClient
              DataSource = FDMGerLicitacao.DEntidadeDoc
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 200
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
          DataController.DataSource = FDMGerLicitacao.DConEntidade
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
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label49: TLabel
          Left = 11
          Top = 11
          Width = 21
          Height = 13
          Caption = 'Tipo'
          Transparent = True
        end
        object Label51: TLabel
          Left = 201
          Top = 11
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label52: TLabel
          Left = 297
          Top = 11
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
          TabOrder = 8
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
          TabOrder = 7
          OnClick = cxButon8Click
        end
        object CkInativ2: TcxCheckBox
          Left = 595
          Top = 28
          Caption = 'Mostrar inativos'
          TabOrder = 5
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
          TabOrder = 9
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
          TabOrder = 6
          OnClick = BtConsultarClick
        end
        object cxButton13: TcxButton
          Left = 176
          Top = 26
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 3
        end
        object CbTipoCli: TDBLookupComboBox
          Left = 11
          Top = 26
          Width = 165
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMCliente.DTipoCliente
          TabOrder = 2
        end
        object DtMovInicial: TcxDateEdit
          Left = 201
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 88
        end
        object DtMovFinal: TcxDateEdit
          Left = 297
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 88
        end
        object RgData: TcxRadioGroup
          Left = 391
          Top = 8
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
          TabOrder = 4
          Height = 39
          Width = 184
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 73
        Width = 975
        Height = 569
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Tag = 1
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDMGerLicitacao.DConEntidade2
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
