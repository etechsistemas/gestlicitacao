object FCliPoten: TFCliPoten
  Left = 392
  Top = 414
  Caption = 'Cadastro de Clientes Potenciais'
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
      object PageControl2: TcxPageControl
        Left = 0
        Top = 428
        Width = 975
        Height = 214
        Align = alBottom
        TabOrder = 0
        Properties.ActivePage = cxTabSheet3
        OnChange = PageControl2Change
        ClientRectBottom = 209
        ClientRectLeft = 2
        ClientRectRight = 970
        ClientRectTop = 24
        object cxTabSheet3: TcxTabSheet
          Caption = 'Fisica'
          ImageIndex = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 185
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label28: TLabel
              Left = 8
              Top = 9
              Width = 20
              Height = 13
              Caption = 'CPF'
              FocusControl = EdCFP
              Transparent = True
            end
            object Label29: TLabel
              Left = 152
              Top = 9
              Width = 16
              Height = 13
              Caption = 'RG'
              FocusControl = DBEdit24
              Transparent = True
            end
            object Label44: TLabel
              Left = 311
              Top = 9
              Width = 97
              Height = 13
              Caption = 'Data de Nascimento'
              FocusControl = DBEdit39
              Transparent = True
            end
            object EdCFP: TDBEdit
              Left = 9
              Top = 23
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CPF'
              DataSource = FDMCRM.DCliPoten
              TabOrder = 0
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 23
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              DataField = 'RG'
              DataSource = FDMCRM.DCliPoten
              TabOrder = 1
            end
            object DBEdit39: TDBEdit
              Left = 311
              Top = 23
              Width = 105
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DTNASC'
              DataSource = FDMCRM.DCliPoten
              TabOrder = 2
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Juridica'
          ImageIndex = 1
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 185
            Align = alClient
            Enabled = False
            TabOrder = 0
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
            object Label16: TLabel
              Left = 533
              Top = 9
              Width = 90
              Height = 13
              Caption = 'Ramo de Atividade'
              Transparent = True
            end
            object EdCnpj: TDBEdit
              Left = 8
              Top = 24
              Width = 264
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = FDMCRM.DCliPoten
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 280
              Top = 24
              Width = 247
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSCEST'
              DataSource = FDMCRM.DCliPoten
              TabOrder = 1
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 533
              Top = 24
              DataBinding.DataField = 'CODATIV'
              DataBinding.DataSource = FDMCRM.DCliPoten
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
              TabOrder = 2
              OnExit = cxDBLookupComboBox1Exit
              Width = 427
            end
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = 'Fullow-ups'
          ImageIndex = 6
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 185
            Align = alClient
            Enabled = False
            TabOrder = 0
            object DBGrid6: TDBGrid
              Left = 1
              Top = 1
              Width = 966
              Height = 183
              Align = alClient
              DataSource = FDMCRM.DCliFullow
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORA'
                  Title.Caption = 'Hora'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TEXTO'
                  Title.Caption = 'Contato'
                  Width = 212
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'INICIO'
                  Title.Caption = 'In'#237'cio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FIM'
                  Title.Caption = 'Fim'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMARCAR'
                  Title.Caption = 'Remarcado'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIAS'
                  Title.Caption = 'Pr'#243'x. Contato (dias)'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATAREM'
                  Title.Caption = 'Data Remarca'#231#227'o'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HORAREM'
                  Title.Caption = 'Horario Remarca'#231#227'o'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPOCONTATO'
                  Title.Caption = 'Tipo Contato'
                  Width = 156
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRIORIDADE'
                  Title.Caption = 'Prioridade'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OBSERVACAO'
                  Title.Caption = 'Observa'#231#227'o'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 42
        Align = alTop
        TabOrder = 1
        object BtInsere: TcxButton
          Left = 8
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
          Left = 848
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 728
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
          Left = 608
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
          Left = 128
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
          Left = 488
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
        end
        object cxButton16: TcxButton
          Left = 248
          Top = 3
          Width = 120
          Height = 33
          Caption = 'Localizar'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 6
          OnClick = cxButton16Click
        end
        object cxButton6: TcxButton
          Left = 368
          Top = 3
          Width = 120
          Height = 33
          Caption = '&Gerar Cliente'
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 7
          OnClick = cxButton6Click
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 42
        Width = 975
        Height = 185
        Align = alClient
        Enabled = False
        TabOrder = 2
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
          Left = 430
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
          Left = 204
          Top = 88
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit29
          Transparent = True
        end
        object Label38: TLabel
          Left = 679
          Top = 88
          Width = 18
          Height = 13
          Caption = 'Site'
          FocusControl = DBEdit33
          Transparent = True
        end
        object Label42: TLabel
          Left = 430
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
          Width = 64
          Height = 13
          Caption = 'Complemento'
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
        object Label7: TLabel
          Left = 8
          Top = 133
          Width = 42
          Height = 13
          Caption = 'Situa'#231#227'o'
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label12: TLabel
          Left = 317
          Top = 88
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit8
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
          DataSource = FDMCRM.DCliPoten
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
          DataSource = FDMCRM.DCliPoten
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Left = 112
          Top = 23
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESSOA'
          DataSource = FDMCRM.DCliPoten
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 2
          OnChange = DBComboBox1Change
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 63
          Width = 312
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 430
          Top = 63
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 544
          Top = 63
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 776
          Top = 63
          Width = 135
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 6
          OnExit = DBEdit12Exit
        end
        object DBComboBox2: TDBComboBox
          Left = 915
          Top = 63
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = FDMCRM.DCliPoten
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
          Left = 8
          Top = 63
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 544
          Top = 23
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEFANTA'
          DataSource = FDMCRM.DCliPoten
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
          DataSource = FDMCRM.DCliPoten
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
          DataSource = FDMCRM.DCliPoten
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit29: TDBEdit
          Tag = 1
          Left = 204
          Top = 103
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 12
        end
        object DBEdit33: TDBEdit
          Left = 679
          Top = 103
          Width = 282
          Height = 21
          DataField = 'SITE'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 13
        end
        object DBEdit37: TDBEdit
          Left = 430
          Top = 103
          Width = 243
          Height = 21
          DataField = 'EMAIL'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 14
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 205
          Top = 150
          Caption = 'Ativo'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = FDMCRM.DCliPoten
          ParentFont = False
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
          Left = 8
          Top = 103
          Width = 191
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 16
        end
        object BtAddCont: TcxButton
          Left = 771
          Top = 135
          Width = 95
          Height = 32
          Caption = '&Add. Contato'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 17
          OnClick = BtAddContClick
        end
        object BtRevCont: TcxButton
          Left = 866
          Top = 135
          Width = 95
          Height = 32
          Caption = '&Rem. Contato'
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 18
          OnClick = BtRevContClick
        end
        object BtCep: TcxButton
          Left = 86
          Top = 63
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 19
          OnClick = BtCepClick
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 679
          Top = 63
          DataBinding.DataField = 'CODMUNICUF'
          DataBinding.DataSource = FDMCRM.DCliPoten
          Properties.KeyFieldNames = 'CODMUNICUF'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = FDM.DMunicPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 20
          OnExit = cxDBLookupComboBox6Exit
          Width = 71
        end
        object BtCodmunic: TcxButton
          Left = 750
          Top = 63
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 21
          OnClick = BtCodmunicClick
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 148
          Width = 191
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'SITUACAO'
          DataSource = FDMCRM.DCliPoten
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit8: TDBEdit
          Tag = 1
          Left = 317
          Top = 103
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE2'
          DataSource = FDMCRM.DCliPoten
          TabOrder = 23
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 227
        Align = alBottom
        Caption = 'Contatos'
        TabOrder = 3
        Height = 201
        Width = 975
        object DBGrid3: TDBGrid
          Left = 3
          Top = 15
          Width = 969
          Height = 176
          Align = alClient
          DataSource = FDMCRM.DCliPotenCont
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
              Title.Caption = 'Telefone 2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAMAL3'
              Title.Caption = 'Ramal'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Caption = 'E-mail'
              Width = 209
              Visible = True
            end>
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
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDMCRM.DConCliPoten
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
  end
end
