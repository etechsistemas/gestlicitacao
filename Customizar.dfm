object FCustomizar: TFCustomizar
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Customizado'
  ClientHeight = 673
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 721
    Height = 584
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Imprimir
    OnChange = cxPageControl1Change
    ClientRectBottom = 579
    ClientRectLeft = 2
    ClientRectRight = 716
    ClientRectTop = 24
    object Imprimir: TcxTabSheet
      Caption = 'Imprimir'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid4: TcxGrid
        Left = 0
        Top = 33
        Width = 714
        Height = 522
        Align = alClient
        TabOrder = 0
        object cxGrid4DBTableView1: TcxGridDBTableView
          OnEditValueChanged = cxGrid4DBTableView1EditValueChanged
          DataController.DataSource = FDM.DRelCust
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid4DBTableView1COLUNA: TcxGridDBColumn
            Caption = 'Coluna'
            DataBinding.FieldName = 'COLUNA'
          end
          object cxGrid4DBTableView1TITULO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'TITULO'
            Width = 392
          end
          object cxGrid4DBTableView1EXIBIR: TcxGridDBColumn
            Caption = 'Exibir'
            DataBinding.FieldName = 'EXIBIR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayUnchecked = 'N'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueGrayed = ' '
            Properties.ValueUnchecked = 'N'
            Width = 30
          end
          object cxGrid4DBTableView1SOMAR: TcxGridDBColumn
            Caption = 'Totalizar'
            DataBinding.FieldName = 'SOMAR'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'NENHUM'
                Value = 'N'
              end
              item
                Description = 'SOMA'
                Value = 'S'
              end
              item
                Description = 'CONTAGEM'
                Value = 'C'
              end
              item
                Description = 'M'#201'DIA'
                Value = 'M'
              end>
            Width = 70
          end
          object cxGrid4DBTableView1AGRUPAR: TcxGridDBColumn
            Caption = 'Agrupar'
            DataBinding.FieldName = 'AGRUPAR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'S'
            Properties.ValueGrayed = ' '
            Properties.ValueUnchecked = 'N'
            Width = 45
          end
          object cxGrid4DBTableView1TAMANHO: TcxGridDBColumn
            Caption = 'Tamanho'
            DataBinding.FieldName = 'TAMANHO'
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
      object PColunas: TPanel
        Left = 0
        Top = 0
        Width = 714
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object BtSubir: TcxButton
          Left = 4
          Top = 2
          Width = 100
          Height = 28
          Caption = 'Subir'
          OptionsImage.ImageIndex = 28
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtSubirClick
        end
        object BtDescer: TcxButton
          Left = 104
          Top = 2
          Width = 100
          Height = 28
          Caption = 'Descer'
          OptionsImage.ImageIndex = 21
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = BtDescerClick
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Sub-itens'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Tabelas'
        TabOrder = 0
        Height = 555
        Width = 292
        object cxGrid2: TcxGrid
          Left = 3
          Top = 15
          Width = 286
          Height = 530
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            DataController.DataSource = FDM.DRelCustItem
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'NTABELA'
              Options.Editing = False
              Width = 238
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Exibir'
              DataBinding.FieldName = 'EXIBIR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'S'
              Properties.DisplayUnchecked = 'N'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueGrayed = 'N'
              Properties.ValueUnchecked = 'N'
              Properties.OnChange = cxGridDBColumn3PropertiesChange
              Options.ShowEditButtons = isebAlways
              Width = 30
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxGroupBox7: TcxGroupBox
        Left = 292
        Top = 0
        Align = alClient
        Caption = 'Campos'
        TabOrder = 1
        Height = 555
        Width = 422
        object cxGrid3: TcxGrid
          Left = 3
          Top = 15
          Width = 416
          Height = 530
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView2: TcxGridDBTableView
            DataController.DataSource = FDM.DRelCustItemIt
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Coluna'
              DataBinding.FieldName = 'COLUNA'
              Width = 42
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'TITULO'
              Width = 142
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Exibir'
              DataBinding.FieldName = 'EXIBIR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = 'S'
              Properties.DisplayUnchecked = 'N'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueGrayed = 'N'
              Properties.ValueUnchecked = 'N'
              Properties.OnChange = cxGridDBColumn8PropertiesChange
              Options.ShowEditButtons = isebAlways
              Width = 30
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Somar'
              DataBinding.FieldName = 'SOMAR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 'S'
              Properties.ValueGrayed = 'N'
              Properties.ValueUnchecked = 'N'
              Properties.OnChange = cxGridDBColumn9PropertiesChange
              Width = 44
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Tamanho'
              DataBinding.FieldName = 'TAMANHO'
              Width = 52
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Impress'#227'o Avan'#231'ada'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 317
        Align = alTop
        Caption = 'Fontes'
        TabOrder = 0
        Height = 137
        Width = 714
        object cxGroupBox5: TcxGroupBox
          Left = 3
          Top = 15
          Align = alLeft
          Caption = 'Cabe'#231'alho'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 112
          Width = 354
          object Label7: TLabel
            Left = 10
            Top = 21
            Width = 28
            Height = 13
            Caption = 'Fonte'
            Transparent = True
          end
          object Label8: TLabel
            Left = 10
            Top = 60
            Width = 17
            Height = 13
            Caption = 'Cor'
            Transparent = True
          end
          object Label9: TLabel
            Left = 198
            Top = 60
            Width = 44
            Height = 13
            Caption = 'Tamanho'
            Transparent = True
          end
          object CbFonteCab: TcxFontNameComboBox
            Left = 10
            Top = 35
            Properties.FontPreview.PreviewText = 'teste'
            Properties.FontPreview.Color = clBlack
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 304
          end
          object CbCorCabe: TcxColorComboBox
            Left = 10
            Top = 74
            ColorValue = clBlack
            Properties.CustomColors = <>
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 177
          end
          object DBEdit5: TDBEdit
            Left = 198
            Top = 74
            Width = 116
            Height = 21
            DataField = 'TAMCABE'
            DataSource = FDM.DConfigRel
            TabOrder = 2
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 357
          Top = 15
          Align = alClient
          Caption = 'Corpo do Texto'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Height = 112
          Width = 354
          object Label10: TLabel
            Left = 10
            Top = 21
            Width = 28
            Height = 13
            Caption = 'Fonte'
            Transparent = True
          end
          object Label11: TLabel
            Left = 10
            Top = 60
            Width = 17
            Height = 13
            Caption = 'Cor'
            Transparent = True
          end
          object Label12: TLabel
            Left = 198
            Top = 60
            Width = 44
            Height = 13
            Caption = 'Tamanho'
            Transparent = True
          end
          object CbFonteText: TcxFontNameComboBox
            Left = 10
            Top = 35
            Properties.FontPreview.PreviewText = 'teste'
            Properties.FontPreview.Color = clBlack
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 304
          end
          object CbCorCorpo: TcxColorComboBox
            Left = 10
            Top = 74
            ColorValue = clBlack
            Properties.CustomColors = <>
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = False
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 177
          end
          object DBEdit6: TDBEdit
            Left = 198
            Top = 74
            Width = 116
            Height = 21
            DataField = 'TAMCORPO'
            DataSource = FDM.DConfigRel
            TabOrder = 2
          end
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 86
        Align = alTop
        Caption = 'Logos'
        TabOrder = 1
        Height = 231
        Width = 714
        object Label13: TLabel
          Left = 13
          Top = 24
          Width = 41
          Height = 13
          Caption = 'Caminho'
          Transparent = True
        end
        object cxButton10: TcxButton
          Left = 13
          Top = 65
          Width = 104
          Height = 33
          Caption = 'Localizar'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = cxButton10Click
        end
        object cxButton11: TcxButton
          Left = 117
          Top = 65
          Width = 104
          Height = 33
          Caption = 'Visualizar'
          OptionsImage.ImageIndex = 17
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton11Click
        end
        object Panel3: TPanel
          Left = 362
          Top = 80
          Width = 338
          Height = 129
          BevelInner = bvRaised
          BevelKind = bkFlat
          Caption = 'Logo'
          TabOrder = 2
          object Image1: TImage
            Left = 2
            Top = 2
            Width = 330
            Height = 121
            Align = alClient
            Center = True
            ExplicitLeft = -2
            ExplicitTop = -3
          end
        end
        object DBEdit7: TDBEdit
          Left = 13
          Top = 40
          Width = 687
          Height = 21
          DataField = 'CAMINHOLOGO'
          DataSource = FDM.DConfigRel
          TabOrder = 3
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Geral'
        TabOrder = 2
        ExplicitWidth = 721
        Height = 86
        Width = 714
        object Label3: TLabel
          Left = 13
          Top = 24
          Width = 81
          Height = 13
          Caption = 'Margem Superior'
          Transparent = True
        end
        object Label4: TLabel
          Left = 210
          Top = 24
          Width = 77
          Height = 13
          Caption = 'Margem Inferior'
          Transparent = True
        end
        object Label5: TLabel
          Left = 111
          Top = 24
          Width = 86
          Height = 13
          Caption = 'Margem Esquerda'
          Transparent = True
        end
        object Label6: TLabel
          Left = 308
          Top = 24
          Width = 72
          Height = 13
          Caption = 'Margem Direita'
          Transparent = True
        end
        object Label14: TLabel
          Left = 404
          Top = 24
          Width = 53
          Height = 13
          Caption = 'Orienta'#231#227'o'
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 13
          Top = 40
          Width = 88
          Height = 21
          DataField = 'MARGEMTOP'
          DataSource = FDM.DConfigRel
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 111
          Top = 40
          Width = 88
          Height = 21
          DataField = 'MARGEMESQ'
          DataSource = FDM.DConfigRel
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 210
          Top = 40
          Width = 88
          Height = 21
          DataField = 'MARGEMINF'
          DataSource = FDM.DConfigRel
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 308
          Top = 40
          Width = 88
          Height = 21
          DataField = 'MARGEMDIR'
          DataSource = FDM.DConfigRel
          TabOrder = 3
        end
        object DBComboBox1: TDBComboBox
          Left = 404
          Top = 40
          Width = 296
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ORIENTACAO'
          DataSource = FDM.DConfigRel
          Items.Strings = (
            'RETRATO'
            'PAISAGEM')
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 454
        Width = 714
        Height = 101
        Align = alClient
        TabOrder = 3
        object cxButton8: TcxButton
          Left = 201
          Top = 35
          Width = 104
          Height = 33
          Caption = 'Aplicar'
          OptionsImage.ImageIndex = 7
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = cxButton8Click
        end
        object cxButton9: TcxButton
          Left = 305
          Top = 35
          Width = 104
          Height = 33
          Caption = 'Default'
          OptionsImage.ImageIndex = 27
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton9Click
        end
        object cxButton12: TcxButton
          Left = 409
          Top = 35
          Width = 104
          Height = 33
          Caption = 'Salvar'
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton12Click
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 584
    Width = 721
    Height = 89
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 26
      Height = 13
      Caption = 'T'#237'tulo'
    end
    object Label2: TLabel
      Left = 456
      Top = 6
      Width = 53
      Height = 13
      Caption = 'Orienta'#231#227'o'
    end
    object Label15: TLabel
      Left = 286
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Sub-T'#237'tulo'
    end
    object cxButton1: TcxButton
      Left = 3
      Top = 48
      Width = 119
      Height = 33
      Caption = 'Imprimir'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 122
      Top = 48
      Width = 119
      Height = 33
      Caption = 'Exportar Excel'
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 598
      Top = 48
      Width = 119
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 7
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 241
      Top = 48
      Width = 119
      Height = 33
      Caption = 'Exportar'
      OptionsImage.ImageIndex = 19
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 8
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 479
      Top = 48
      Width = 119
      Height = 33
      Caption = 'Fontes'
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 9
      OnClick = cxButton5Click
    end
    object BtEmail: TcxButton
      Left = 360
      Top = 48
      Width = 119
      Height = 33
      Caption = 'E-mail'
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 10
      OnClick = BtEmailClick
    end
    object ETitulo: TEdit
      Left = 6
      Top = 20
      Width = 274
      Height = 21
      TabOrder = 0
      Text = 'Relat'#243'rio'
    end
    object CkExibir: TcxCheckBox
      Left = 547
      Top = 22
      Caption = 'Exibir Todos'
      Properties.NullStyle = nssUnchecked
      TabOrder = 3
      Transparent = True
      OnClick = CkExibirClick
      Width = 82
    end
    object ckSomar: TcxCheckBox
      Left = 635
      Top = 22
      Caption = 'Somar Todos'
      TabOrder = 4
      Transparent = True
      OnClick = ckSomarClick
      Width = 82
    end
    object CbOrientacao: TComboBox
      Left = 456
      Top = 20
      Width = 85
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 1
      TabOrder = 2
      Text = 'PAISAGEM'
      Items.Strings = (
        'RETRATO'
        'PAISAGEM')
    end
    object ESubTitulo: TEdit
      Left = 286
      Top = 20
      Width = 164
      Height = 21
      TabOrder = 1
    end
  end
  object PProgresso: TPanel
    Left = 177
    Top = 289
    Width = 367
    Height = 94
    TabOrder = 2
    Visible = False
    object Label16: TLabel
      Left = 96
      Top = 29
      Width = 175
      Height = 13
      Caption = 'Gerando Planilha por favor aguarde.'
    end
    object ProgressBar1: TProgressBar
      Left = 16
      Top = 48
      Width = 335
      Height = 17
      TabOrder = 0
    end
  end
  object PExport: TcxGroupBox
    Left = 164
    Top = 264
    Caption = 'Exportar'
    TabOrder = 3
    Visible = False
    Height = 145
    Width = 392
    object cxButton6: TcxButton
      Left = 86
      Top = 93
      Width = 110
      Height = 33
      Caption = 'Ok'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = cxButton6Click
    end
    object cxButton7: TcxButton
      Left = 196
      Top = 93
      Width = 110
      Height = 33
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton7Click
    end
    object cxRadioGroup2: TcxRadioGroup
      Left = 15
      Top = 23
      Caption = 'Formato'
      Properties.Columns = 6
      Properties.Items = <
        item
          Caption = 'PDF'
        end
        item
          Caption = 'HTML'
        end
        item
          Caption = 'RTF'
        end
        item
          Caption = 'TXT'
        end
        item
          Caption = 'Excel'
        end
        item
          Caption = 'CSV'
        end>
      TabOrder = 2
      Height = 57
      Width = 362
    end
  end
  object Fonte: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 640
    Top = 528
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'PDF Files (*.pdf)|*.pdf|HTML Files (*.htm)|*.htm;*.html|Rich Tex' +
      't (*.rtf)|*.rtf|Text File (*.txt)|*.txt|CSV (*.csv)|*.csv'
    Title = 'E-Tech'
    Left = 656
    Top = 528
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 584
    Top = 512
  end
end
