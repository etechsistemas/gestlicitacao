object FVendedores: TFVendedores
  Left = 299
  Top = 304
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 603
  ClientWidth = 980
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
    Width = 980
    Height = 603
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    OnChange = cxPageControl1Change
    ClientRectBottom = 598
    ClientRectLeft = 2
    ClientRectRight = 975
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 973
        Height = 42
        Align = alTop
        TabOrder = 0
        object BtInsere: TcxButton
          Left = 7
          Top = 3
          Width = 192
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 775
          Top = 3
          Width = 192
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 583
          Top = 3
          Width = 192
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 391
          Top = 3
          Width = 192
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 199
          Top = 3
          Width = 192
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 42
        Width = 973
        Height = 158
        Align = alClient
        Enabled = False
        TabOrder = 1
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
          Left = 301
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
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
          Left = 448
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
          Left = 710
          Top = 48
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit12
          Transparent = True
        end
        object Label17: TLabel
          Left = 872
          Top = 49
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
          Left = 8
          Top = 93
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit29
          Transparent = True
        end
        object Label37: TLabel
          Left = 168
          Top = 93
          Width = 32
          Height = 13
          Caption = 'Celular'
          FocusControl = DBEdit32
          Transparent = True
        end
        object Label42: TLabel
          Left = 328
          Top = 93
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEdit37
          Transparent = True
        end
        object Label3: TLabel
          Left = 207
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Cracha'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label6: TLabel
          Left = 543
          Top = 9
          Width = 102
          Height = 13
          Caption = 'Data de Reg. / In'#237'cio'
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label13: TLabel
          Left = 654
          Top = 8
          Width = 82
          Height = 13
          Caption = 'Data Sa'#237'da / Fim'
          FocusControl = DBEdit13
          Transparent = True
        end
        object Label7: TLabel
          Left = 543
          Top = 92
          Width = 45
          Height = 13
          Caption = 'Comiss'#227'o'
          FocusControl = DBEdit7
          Transparent = True
        end
        object Label16: TLabel
          Left = 112
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Pessoa'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label15: TLabel
          Left = 710
          Top = 93
          Width = 21
          Height = 13
          Caption = 'Tipo'
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
          DataSource = FDMRh.DVendedor
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit2: TDBEdit
          Tag = 1
          Left = 301
          Top = 23
          Width = 236
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = FDMRh.DVendedor
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 63
          Width = 330
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = FDMRh.DVendedor
          TabOrder = 7
        end
        object DBEdit6: TDBEdit
          Left = 448
          Top = 63
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = FDMRh.DVendedor
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 544
          Top = 63
          Width = 158
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = FDMRh.DVendedor
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 710
          Top = 63
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = FDMRh.DVendedor
          TabOrder = 10
        end
        object DBComboBox2: TDBComboBox
          Left = 872
          Top = 63
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = FDMRh.DVendedor
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
          TabOrder = 11
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 63
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = FDMRh.DVendedor
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 776
          Top = 23
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATACAD'
          DataSource = FDMRh.DVendedor
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit20: TDBEdit
          Left = 872
          Top = 23
          Width = 89
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATAALT'
          DataSource = FDMRh.DVendedor
          ReadOnly = True
          TabOrder = 19
        end
        object DBEdit29: TDBEdit
          Left = 8
          Top = 108
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = FDMRh.DVendedor
          TabOrder = 12
        end
        object DBEdit32: TDBEdit
          Left = 168
          Top = 108
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR'
          DataSource = FDMRh.DVendedor
          TabOrder = 13
        end
        object DBEdit37: TDBEdit
          Left = 328
          Top = 108
          Width = 209
          Height = 21
          DataField = 'EMAIL'
          DataSource = FDMRh.DVendedor
          TabOrder = 14
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 872
          Top = 110
          Caption = 'Ativo'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = FDMRh.DVendedor
          Properties.ValueChecked = 'A'
          Properties.ValueUnchecked = 'I'
          TabOrder = 17
          Transparent = True
          Width = 51
        end
        object DBEdit4: TDBEdit
          Left = 207
          Top = 23
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CRACHA'
          DataSource = FDMRh.DVendedor
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 543
          Top = 23
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DATAREG'
          DataSource = FDMRh.DVendedor
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 654
          Top = 23
          Width = 116
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DATASAIDA'
          DataSource = FDMRh.DVendedor
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 543
          Top = 108
          Width = 159
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMISSAO'
          DataSource = FDMRh.DVendedor
          TabOrder = 15
        end
        object BtCep: TcxButton
          Left = 88
          Top = 63
          Width = 17
          Height = 21
          Caption = '...'
          TabOrder = 6
          OnClick = BtCepClick
        end
        object DBComboBox1: TDBComboBox
          Left = 112
          Top = 23
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PESSOA'
          DataSource = FDMRh.DVendedor
          Items.Strings = (
            'FISICA'
            'JURIDICA')
          TabOrder = 0
        end
        object DBComboBox3: TDBComboBox
          Left = 710
          Top = 108
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TIPO'
          DataSource = FDMRh.DVendedor
          Items.Strings = (
            'INTERNO'
            'EXTERNO')
          TabOrder = 16
        end
      end
      object PageControl2: TcxPageControl
        Left = 0
        Top = 200
        Width = 973
        Height = 374
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet3
        OnChange = PageControl2Change
        ClientRectBottom = 369
        ClientRectLeft = 2
        ClientRectRight = 968
        ClientRectTop = 24
        object cxTabSheet3: TcxTabSheet
          Caption = 'Fisica'
          ImageIndex = 0
          object Label10: TLabel
            Left = 8
            Top = 9
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEdit10
            Transparent = True
          end
          object Label12: TLabel
            Left = 214
            Top = 9
            Width = 16
            Height = 13
            Caption = 'RG'
            FocusControl = DBEdit14
            Transparent = True
          end
          object Label18: TLabel
            Left = 418
            Top = 9
            Width = 68
            Height = 13
            Caption = 'Nacionalidade'
            FocusControl = DBEdit11
            Transparent = True
          end
          object Label19: TLabel
            Left = 634
            Top = 9
            Width = 60
            Height = 13
            Caption = 'Naturalidade'
            FocusControl = DBEdit16
            Transparent = True
          end
          object Label9: TLabel
            Left = 6
            Top = 106
            Width = 92
            Height = 13
            Caption = 'Carteira Habilita'#231#227'o'
            FocusControl = DBEdit8
            Transparent = True
          end
          object Label59: TLabel
            Left = 634
            Top = 56
            Width = 61
            Height = 13
            Caption = 'Escolaridade'
            Transparent = True
          end
          object Label46: TLabel
            Left = 418
            Top = 56
            Width = 39
            Height = 13
            Caption = 'Conjuge'
            FocusControl = DBEdit41
            Transparent = True
          end
          object Label58: TLabel
            Left = 214
            Top = 56
            Width = 55
            Height = 13
            Caption = 'Estado Civil'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label57: TLabel
            Left = 8
            Top = 56
            Width = 24
            Height = 13
            Caption = 'Sexo'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label44: TLabel
            Left = 103
            Top = 56
            Width = 97
            Height = 13
            Caption = 'Data de Nascimento'
            FocusControl = DBEdit39
            Transparent = True
          end
          object DBEdit10: TDBEdit
            Left = 8
            Top = 23
            Width = 200
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPF'
            DataSource = FDMRh.DVendedor
            TabOrder = 0
          end
          object DBEdit14: TDBEdit
            Left = 214
            Top = 23
            Width = 198
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RG'
            DataSource = FDMRh.DVendedor
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 418
            Top = 23
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NACIONALIDADE'
            DataSource = FDMRh.DVendedor
            TabOrder = 2
          end
          object DBEdit16: TDBEdit
            Left = 634
            Top = 23
            Width = 323
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NATURALIDADE'
            DataSource = FDMRh.DVendedor
            TabOrder = 3
          end
          object DBEdit8: TDBEdit
            Left = 6
            Top = 121
            Width = 202
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CARTEIRAHAB'
            DataSource = FDMRh.DVendedor
            TabOrder = 9
          end
          object DBComboBox7: TDBComboBox
            Left = 634
            Top = 71
            Width = 323
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESCOLARIDADE'
            DataSource = FDMRh.DVendedor
            Items.Strings = (
              '1'#186' GRAU INCOMPLETO'
              '1'#186' GRAU COMPLETO'
              '2'#186' GRAU INCOMPLETO'
              '2'#186' GRAU COMPLETO'
              'SUPERIOR INCOMPLETO'
              'SUPERIOR COMPLETO'
              'P'#211'S INCOMPLETA'
              'P'#211'S COMPLETA')
            TabOrder = 8
          end
          object DBEdit41: TDBEdit
            Left = 418
            Top = 71
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NCONJU'
            DataSource = FDMRh.DVendedor
            TabOrder = 7
          end
          object DBComboBox6: TDBComboBox
            Left = 214
            Top = 71
            Width = 198
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTCIVIL'
            DataSource = FDMRh.DVendedor
            Items.Strings = (
              'SOLTEIRO'
              'CASADO')
            TabOrder = 6
          end
          object DBComboBox5: TDBComboBox
            Left = 8
            Top = 71
            Width = 89
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SEXO'
            DataSource = FDMRh.DVendedor
            Items.Strings = (
              'MASCULINO'
              'FEMININO')
            TabOrder = 4
          end
          object DBEdit39: TDBEdit
            Left = 103
            Top = 71
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DATANASC'
            DataSource = FDMRh.DVendedor
            TabOrder = 5
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Juridica'
          ImageIndex = 1
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
          object Label21: TLabel
            Left = 533
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Nome Fantasia'
            FocusControl = DBEdit18
            Transparent = True
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 24
            Width = 264
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CNPJ'
            DataSource = FDMRh.DVendedor
            TabOrder = 0
          end
          object DBEdit22: TDBEdit
            Left = 280
            Top = 24
            Width = 247
            Height = 21
            CharCase = ecUpperCase
            DataField = 'INSCEST'
            DataSource = FDMRh.DVendedor
            TabOrder = 1
          end
          object DBEdit18: TDBEdit
            Left = 533
            Top = 24
            Width = 426
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMEFANTA'
            DataSource = FDMRh.DVendedor
            TabOrder = 2
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
        Width = 973
        Height = 488
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDMRh.DConVendedor
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
          end
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME'
            Width = 200
          end
          object cxGrid1DBTableView1CPF: TcxGridDBColumn
            DataBinding.FieldName = 'CPF'
            Width = 105
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ'
          end
          object cxGrid1DBTableView1FONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'FONE'
            Width = 96
          end
          object cxGrid1DBTableView1CELULAR: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'CELULAR'
            Width = 105
          end
          object cxGrid1DBTableView1ENDERECO: TcxGridDBColumn
            Caption = 'Endere'#231'o'
            DataBinding.FieldName = 'ENDERECO'
            Width = 146
          end
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
          end
          object cxGrid1DBTableView1BAIRRO: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'BAIRRO'
            Width = 117
          end
          object cxGrid1DBTableView1CIDADE: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'CIDADE'
            Width = 113
          end
          object cxGrid1DBTableView1UF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
          end
          object cxGrid1DBTableView1CEP: TcxGridDBColumn
            DataBinding.FieldName = 'CEP'
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
        Width = 973
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
          Left = 867
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
          Left = 765
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
          Left = 40
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
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Transparent = True
          OnClick = RgFiltroClick
          Height = 39
          Width = 233
        end
        object CkInativ: TcxCheckBox
          Left = 528
          Top = 21
          Caption = 'Mostrar inativos'
          TabOrder = 4
          Transparent = True
          OnClick = CkInativClick
          Width = 98
        end
      end
      object PConsulta: TPanel
        Left = 0
        Top = 540
        Width = 973
        Height = 34
        Align = alBottom
        TabOrder = 2
        Visible = False
        object cxButton4: TcxButton
          Left = 758
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
          Left = 860
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
