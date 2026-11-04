object FFornecedor: TFFornecedor
  Left = 239
  Top = 4
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 662
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
    Height = 662
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    OnChange = cxPageControl1Change
    ClientRectBottom = 657
    ClientRectLeft = 2
    ClientRectRight = 977
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object PageControl2: TcxPageControl
        Left = 0
        Top = 396
        Width = 975
        Height = 237
        Align = alBottom
        TabOrder = 0
        Properties.ActivePage = cxTabSheet3
        OnChange = PageControl2Change
        ClientRectBottom = 232
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
            Height = 208
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label28: TLabel
              Left = 8
              Top = 9
              Width = 20
              Height = 13
              Caption = 'CPF'
              FocusControl = DBEdit23
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
            object DBEdit23: TDBEdit
              Left = 8
              Top = 23
              Width = 137
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CPF'
              DataSource = FDMFornec.DFornec
              TabOrder = 0
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 23
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              DataField = 'RG'
              DataSource = FDMFornec.DFornec
              TabOrder = 1
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Juridica'
          ImageIndex = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 968
            Height = 208
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Label26: TLabel
              Left = 8
              Top = 8
              Width = 27
              Height = 13
              Caption = 'CNPJ'
              FocusControl = DBEdit21
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
            object DBEdit21: TDBEdit
              Left = 8
              Top = 24
              Width = 264
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = FDMFornec.DFornec
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 280
              Top = 24
              Width = 247
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSCEST'
              DataSource = FDMFornec.DFornec
              TabOrder = 1
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
          Left = 1
          Top = 3
          Width = 140
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 842
          Top = 3
          Width = 130
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 702
          Top = 3
          Width = 140
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 562
          Top = 3
          Width = 140
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 141
          Top = 3
          Width = 140
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object BtImprimir: TcxButton
          Left = 421
          Top = 3
          Width = 140
          Height = 33
          Caption = '&Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
        end
        object cxButton16: TcxButton
          Left = 281
          Top = 3
          Width = 140
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
        Height = 354
        Align = alClient
        TabOrder = 2
        ExplicitLeft = -2
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
          Left = 291
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
          Left = 448
          Top = 48
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit6
          Transparent = True
        end
        object Label11: TLabel
          Left = 519
          Top = 48
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit9
          Transparent = True
        end
        object Label14: TLabel
          Left = 760
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit12
          Transparent = True
        end
        object Label17: TLabel
          Left = 916
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
          Left = 552
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
          Left = 448
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
          Left = 664
          Top = 48
          Width = 61
          Height = 13
          Caption = 'C'#243'digo IBGE'
          FocusControl = DBEdit1
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
          DataSource = FDMFornec.DFornec
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Tag = 1
          Left = 291
          Top = 23
          Width = 254
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = FDMFornec.DFornec
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Tag = 1
          Left = 112
          Top = 23
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESSOA'
          DataSource = FDMFornec.DFornec
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 2
          OnChange = DBComboBox1Change
          OnExit = DBComboBox1Change
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 63
          Width = 328
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = FDMFornec.DFornec
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 448
          Top = 63
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = FDMFornec.DFornec
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 519
          Top = 63
          Width = 139
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = FDMFornec.DFornec
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 760
          Top = 63
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = FDMFornec.DFornec
          TabOrder = 6
        end
        object DBComboBox2: TDBComboBox
          Tag = 1
          Left = 916
          Top = 63
          Width = 43
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = FDMFornec.DFornec
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
          Left = 9
          Top = 63
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = FDMFornec.DFornec
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 552
          Top = 23
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEFANTA'
          DataSource = FDMFornec.DFornec
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
          DataSource = FDMFornec.DFornec
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit20: TDBEdit
          Left = 872
          Top = 23
          Width = 87
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATAALT'
          DataSource = FDMFornec.DFornec
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit29: TDBEdit
          Tag = 1
          Left = 281
          Top = 103
          Width = 159
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = FDMFornec.DFornec
          TabOrder = 12
        end
        object DBEdit33: TDBEdit
          Left = 712
          Top = 103
          Width = 198
          Height = 21
          DataField = 'SITE'
          DataSource = FDMFornec.DFornec
          TabOrder = 13
        end
        object DBEdit37: TDBEdit
          Left = 448
          Top = 103
          Width = 254
          Height = 21
          DataField = 'EMAIL'
          DataSource = FDMFornec.DFornec
          TabOrder = 14
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 915
          Top = 104
          Caption = 'Ativo'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = FDMFornec.DFornec
          Properties.ValueChecked = 'A'
          Properties.ValueUnchecked = 'I'
          TabOrder = 15
          Transparent = True
          Width = 45
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 103
          Width = 267
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = FDMFornec.DFornec
          TabOrder = 16
        end
        object BtCep: TcxButton
          Left = 86
          Top = 64
          Width = 19
          Height = 19
          Caption = '...'
          TabOrder = 17
          OnClick = BtCepClick
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Tag = 1
          Left = 664
          Top = 63
          DataBinding.DataField = 'CODMUNICUF'
          DataBinding.DataSource = FDMFornec.DFornec
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
          TabOrder = 18
          OnExit = cxDBLookupComboBox6Exit
          Width = 70
        end
        object BtCodmunic: TcxButton
          Left = 735
          Top = 63
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 19
          OnClick = BtCodmunicClick
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
        Height = 547
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDMFornec.DConFornec
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Width = 52
          end
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME'
            Width = 263
          end
          object cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOMEFANTA'
            Width = 181
          end
          object cxGrid1DBTableView1FONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'FONE'
            Width = 87
          end
          object cxGrid1DBTableView1CNPJ: TcxGridDBColumn
            Caption = 'CNPJ/CPF'
            DataBinding.FieldName = 'cpfcnpj'
            Width = 161
          end
          object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 172
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
          Top = 21
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
          ItemIndex = 1
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
          Height = 39
          Width = 233
        end
        object CkInativ: TcxCheckBox
          Left = 519
          Top = 21
          Caption = 'Mostrar inativos'
          TabOrder = 4
          Transparent = True
          OnClick = CkInativosClick
          Width = 98
        end
      end
      object PConsulta: TPanel
        Left = 0
        Top = 599
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
