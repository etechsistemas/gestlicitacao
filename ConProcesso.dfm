object FConProcesso: TFConProcesso
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Processos'
  ClientHeight = 662
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 984
    Height = 662
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    ClientRectBottom = 657
    ClientRectLeft = 2
    ClientRectRight = 979
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Editais Enviados'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label49: TLabel
          Left = 8
          Top = 10
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
          Transparent = True
        end
        object Label50: TLabel
          Left = 280
          Top = 10
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label51: TLabel
          Left = 380
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label52: TLabel
          Left = 120
          Top = 10
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object cxButton5: TcxButton
          Left = 878
          Top = 2
          Width = 90
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton5Click
        end
        object cxButton6: TcxButton
          Left = 788
          Top = 35
          Width = 90
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton6Click
        end
        object EdCodCli: TEdit
          Left = 8
          Top = 26
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = EdCodCliExit
        end
        object cxButton8: TcxButton
          Left = 698
          Top = 2
          Width = 90
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton8Click
        end
        object EdNomeCli: TEdit
          Left = 120
          Top = 26
          Width = 153
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object cxButton9: TcxButton
          Left = 87
          Top = 26
          Width = 29
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = cxButton9Click
        end
        object DtInicial: TcxDateEdit
          Left = 279
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 95
        end
        object DtFinal: TcxDateEdit
          Left = 380
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 95
        end
        object BtnEmail: TcxButton
          Left = 878
          Top = 35
          Width = 90
          Height = 33
          Caption = 'E-mail'
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 8
          OnClick = BtnEmailClick
        end
        object RgData1: TcxRadioGroup
          Left = 492
          Top = 10
          Caption = 'Data'
          Properties.Columns = 3
          Properties.DefaultCaption = 'V'
          Properties.DefaultValue = 'V'
          Properties.Items = <
            item
              Caption = 'Emiss'#227'o'
              Value = 'E'
            end
            item
              Caption = 'Envio'
              Value = 'V'
            end
            item
              Caption = 'Abertura'
              Value = 'P'
            end>
          ItemIndex = 1
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Height = 37
          Width = 189
        end
        object cxButton15: TcxButton
          Left = 788
          Top = 2
          Width = 90
          Height = 33
          Caption = 'Processo'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 10
          OnClick = cxButton15Click
        end
        object cxButton20: TcxButton
          Left = 698
          Top = 35
          Width = 90
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 11
          OnClick = cxButton20Click
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 73
        Width = 977
        Height = 525
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = FDMGerLicitacao.DConProcessoLic
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
            Width = 47
          end
          object cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 116
          end
          object cxGrid1DBTableView1NOMECLI: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 200
          end
          object cxGrid1DBTableView1NOMEENTIDADE: TcxGridDBColumn
            Caption = 'Entidade'
            DataBinding.FieldName = 'NOMEENTIDADE'
            Width = 200
          end
          object cxGrid1DBTableView1DATAABERTURA: TcxGridDBColumn
            Caption = 'Dt. Abertura'
            DataBinding.FieldName = 'DATAABERTURA'
            Width = 71
          end
          object cxGrid1DBTableView1HORAABERTURA: TcxGridDBColumn
            Caption = 'Hora Abertura'
            DataBinding.FieldName = 'HORAABERTURA'
          end
          object cxGrid1DBTableView1DATA: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'DATA'
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Data Envio'
            DataBinding.FieldName = 'DTENVIO'
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Situa'#231#227'o Envio'
            DataBinding.FieldName = 'SITENVIO'
            Width = 100
          end
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Width = 65
          end
          object cxGrid1DBTableView1VALOREDITAL: TcxGridDBColumn
            Caption = 'Valor Edital'
            DataBinding.FieldName = 'VALOREDITAL'
          end
          object cxGrid1DBTableView1VALORPROPOSTA: TcxGridDBColumn
            Caption = 'Valor Proposta'
            DataBinding.FieldName = 'VALORPROPOSTA'
            Width = 85
          end
          object cxGrid1DBTableView1VALORMAX: TcxGridDBColumn
            Caption = 'Valor Min.'
            DataBinding.FieldName = 'VALORMAX'
          end
          object cxGrid1DBTableView1RESULTADOGERAL: TcxGridDBColumn
            Caption = 'Resultado Geral'
            DataBinding.FieldName = 'RESULTADOGERAL'
            Width = 128
          end
          object cxGrid1DBTableView1NOMEMODALIDADE: TcxGridDBColumn
            Caption = 'Modalidade'
            DataBinding.FieldName = 'NOMEMODALIDADE'
            Width = 133
          end
          object cxGrid1DBTableView1NOMETIPOFONTE: TcxGridDBColumn
            Caption = 'Fonte'
            DataBinding.FieldName = 'NOMETIPOFONTE'
            Width = 117
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 598
        Width = 977
        Height = 35
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label6: TLabel
          Left = 720
          Top = 13
          Width = 72
          Height = 13
          Caption = 'Total Comiss'#227'o'
          Transparent = True
        end
        object Label9: TLabel
          Left = 462
          Top = 13
          Width = 75
          Height = 13
          Caption = 'Total Resultado'
          Transparent = True
        end
        object Label10: TLabel
          Left = 221
          Top = 13
          Width = 58
          Height = 13
          Caption = 'Total Editais'
          Transparent = True
        end
        object Label17: TLabel
          Left = 8
          Top = 13
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object EdTotComis: TEdit
          Left = 798
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdTotalRes: TEdit
          Left = 543
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdTotalEditais: TEdit
          Left = 285
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdNumero: TEdit
          Left = 48
          Top = 8
          Width = 164
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Resultados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 72
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
          Transparent = True
        end
        object Label2: TLabel
          Left = 280
          Top = 10
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label3: TLabel
          Left = 408
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label4: TLabel
          Left = 120
          Top = 10
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object Label5: TLabel
          Left = 537
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Resultado'
          Transparent = True
        end
        object cxButton1: TcxButton
          Left = 868
          Top = 1
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 768
          Top = 34
          Width = 100
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object EdCodCli2: TEdit
          Left = 8
          Top = 26
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = EdCodCli2Exit
        end
        object cxButton3: TcxButton
          Left = 668
          Top = 1
          Width = 100
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton3Click
        end
        object EdNomeCli2: TEdit
          Left = 120
          Top = 26
          Width = 153
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object cxButton4: TcxButton
          Left = 87
          Top = 26
          Width = 29
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = cxButton4Click
        end
        object DtInicial2: TcxDateEdit
          Left = 279
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 118
        end
        object DtFinal2: TcxDateEdit
          Left = 408
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 118
        end
        object CbSituacao2: TComboBox
          Left = 537
          Top = 26
          Width = 118
          Height = 21
          TabOrder = 8
          Text = 'TODOS'
          Items.Strings = (
            'VENCEDOR'
            'PERDEDOR'
            'TODOS')
        end
        object cxButton14: TcxButton
          Left = 868
          Top = 34
          Width = 102
          Height = 33
          Caption = 'E-mail'
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 9
          OnClick = cxButton14Click
        end
        object cxButton16: TcxButton
          Left = 768
          Top = 1
          Width = 100
          Height = 33
          Caption = 'Processo'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 10
          OnClick = cxButton16Click
        end
        object cxButton19: TcxButton
          Left = 668
          Top = 34
          Width = 100
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 11
          OnClick = cxButton19Click
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 72
        Width = 977
        Height = 526
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = FDMGerLicitacao.DConProcessoLic
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Width = 47
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 116
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 200
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Entidade'
            DataBinding.FieldName = 'NOMEENTIDADE'
            Width = 200
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA'
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Dt. Abertura'
            DataBinding.FieldName = 'DATAABERTURA'
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Hora Abertura'
            DataBinding.FieldName = 'HORAABERTURA'
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Width = 65
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Valor Resultado'
            DataBinding.FieldName = 'VALORRESULTADO'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Valor Min'
            DataBinding.FieldName = 'VALORMAX'
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Valor Proposta'
            DataBinding.FieldName = 'VALORPROPOSTA'
            Width = 84
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Comiss'#227'o'
            DataBinding.FieldName = 'COMISSAO'
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Valor Comiss'#227'o'
            DataBinding.FieldName = 'VLRCOMISSAO'
            Width = 82
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Resultado Geral'
            DataBinding.FieldName = 'RESULTADOGERAL'
            Width = 120
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'Modalidade'
            DataBinding.FieldName = 'NOMEMODALIDADE'
            Width = 133
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Fonte'
            DataBinding.FieldName = 'NOMETIPOFONTE'
            Width = 117
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 598
        Width = 977
        Height = 35
        Align = alBottom
        TabOrder = 2
        object Label7: TLabel
          Left = 720
          Top = 13
          Width = 72
          Height = 13
          Caption = 'Total Comiss'#227'o'
          Transparent = True
        end
        object Label8: TLabel
          Left = 462
          Top = 13
          Width = 75
          Height = 13
          Caption = 'Total Resultado'
          Transparent = True
        end
        object Label11: TLabel
          Left = 221
          Top = 13
          Width = 58
          Height = 13
          Caption = 'Total Editais'
          Transparent = True
        end
        object Label18: TLabel
          Left = 8
          Top = 13
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object EdTotComis2: TEdit
          Left = 798
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdTotalRes2: TEdit
          Left = 543
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdTotalEditais2: TEdit
          Left = 285
          Top = 8
          Width = 171
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdNumero2: TEdit
          Left = 48
          Top = 8
          Width = 164
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Relat'#243'rio Financeiro'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 82
        Align = alTop
        TabOrder = 0
        ExplicitTop = -6
        object Label13: TLabel
          Left = 8
          Top = 3
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
          Transparent = True
        end
        object Label14: TLabel
          Left = 280
          Top = 3
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label15: TLabel
          Left = 379
          Top = 3
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label16: TLabel
          Left = 120
          Top = 3
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object Label36: TLabel
          Left = 478
          Top = 3
          Width = 76
          Height = 13
          Caption = 'Resultado Geral'
          Transparent = True
        end
        object cxButton7: TcxButton
          Left = 868
          Top = 3
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton7Click
        end
        object cxButton10: TcxButton
          Left = 766
          Top = 3
          Width = 102
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton10Click
        end
        object EdCodCli3: TEdit
          Left = 8
          Top = 17
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = EdCodCli3Exit
        end
        object cxButton11: TcxButton
          Left = 664
          Top = 3
          Width = 102
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton11Click
        end
        object EdNomeCli3: TEdit
          Left = 120
          Top = 17
          Width = 153
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object cxButton12: TcxButton
          Left = 87
          Top = 17
          Width = 29
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = cxButton12Click
        end
        object DtInicial3: TcxDateEdit
          Left = 279
          Top = 17
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 93
        end
        object DtFinal3: TcxDateEdit
          Left = 379
          Top = 17
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 93
        end
        object cxButton13: TcxButton
          Left = 868
          Top = 36
          Width = 102
          Height = 33
          Caption = 'E-mail'
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 8
          OnClick = cxButton13Click
        end
        object CkAgrup: TcxCheckBox
          Left = 8
          Top = 53
          Caption = 'Agrupar'
          State = cbsChecked
          TabOrder = 9
          Width = 69
        end
        object ckQuitadas: TcxCheckBox
          Left = 79
          Top = 53
          Caption = 'Somente Quitadas'
          TabOrder = 10
          Width = 117
        end
        object RgData3: TcxRadioGroup
          Left = 472
          Top = 42
          Caption = 'Data'
          Properties.Columns = 3
          Properties.DefaultCaption = 'V'
          Properties.DefaultValue = 'V'
          Properties.Items = <
            item
              Caption = 'Emiss'#227'o'
              Value = 'E'
            end
            item
              Caption = 'Envio'
              Value = 'V'
            end
            item
              Caption = 'Abertura'
              Value = 'P'
            end>
          ItemIndex = 2
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Visible = False
          Height = 37
          Width = 188
        end
        object cxButton17: TcxButton
          Left = 766
          Top = 36
          Width = 102
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 12
          OnClick = cxButton17Click
        end
        object cxButton18: TcxButton
          Left = 664
          Top = 36
          Width = 102
          Height = 33
          Caption = 'Processo'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 13
          OnClick = cxButton18Click
        end
        object CbSituacao: TComboBox
          Left = 478
          Top = 17
          Width = 118
          Height = 21
          TabOrder = 14
          Text = 'TODOS'
          Items.Strings = (
            'VENCEDOR'
            'PERDEDOR'
            'ENCERRADO')
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 82
        Width = 977
        Height = 503
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          DataController.DataSource = FDMGerLicitacao.DConProcessoLicFinanc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          object cxGridDBTableView2Column6: TcxGridDBColumn
            Caption = 'Sel'
            DataBinding.FieldName = 'SEL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'X'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 'X'
            Properties.ValueUnchecked = ' '
            Properties.OnChange = cxGridDBTableView2Column6PropertiesChange
            Options.ShowEditButtons = isebAlways
            Width = 34
          end
          object cxGridDBTableView2CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Options.Editing = False
          end
          object cxGridDBTableView2NOMEEMPFAT: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Options.Editing = False
            Width = 114
          end
          object cxGridDBTableView2NOMEENTIDADE: TcxGridDBColumn
            Caption = 'Entidade'
            DataBinding.FieldName = 'NOMEENTIDADE'
            Options.Editing = False
            Width = 200
          end
          object cxGridDBTableView2NOMECLI: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Options.Editing = False
            Width = 200
          end
          object cxGridDBTableView2DATAABERTURA: TcxGridDBColumn
            Caption = 'Dt Abertura'
            DataBinding.FieldName = 'DATAABERTURA'
            Options.Editing = False
          end
          object cxGridDBTableView2NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Options.Editing = False
            Width = 100
          end
          object cxGridDBTableView2NOMEMODALIDADE: TcxGridDBColumn
            Caption = 'Modalidade'
            DataBinding.FieldName = 'NOMEMODALIDADE'
            Options.Editing = False
            Width = 96
          end
          object cxGridDBTableView2VALORMAX: TcxGridDBColumn
            Caption = 'Valor Min'
            DataBinding.FieldName = 'VALORMAX'
            Options.Editing = False
          end
          object cxGridDBTableView2VALORPROPOSTA: TcxGridDBColumn
            Caption = 'Valor Proposta'
            DataBinding.FieldName = 'VALORPROPOSTA'
            Options.Editing = False
            Width = 77
          end
          object cxGridDBTableView2VALORRESULTADO: TcxGridDBColumn
            Caption = 'Valor Contrato'
            DataBinding.FieldName = 'VALORRESULTADO'
            Options.Editing = False
            Width = 85
          end
          object cxGridDBTableView2Column4: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'percpago'
            Options.Editing = False
          end
          object cxGridDBTableView2Column3: TcxGridDBColumn
            Caption = 'Contrato Pago'
            DataBinding.FieldName = 'VALORCONTRATOLIC'
            Options.Editing = False
            Width = 79
          end
          object cxGridDBTableView2Column2: TcxGridDBColumn
            Caption = 'Saldo Contrato'
            DataBinding.FieldName = 'saldocontrato'
            Options.Editing = False
            Width = 84
          end
          object cxGridDBTableView2COMISSAO: TcxGridDBColumn
            Caption = 'Comiss'#227'o'
            DataBinding.FieldName = 'COMISSAO'
            Options.Editing = False
            Width = 53
          end
          object cxGridDBTableView2VLRCOMISSAO: TcxGridDBColumn
            Caption = 'Vlr Comiss'#227'o'
            DataBinding.FieldName = 'VLRCOMISSAO'
            Options.Editing = False
          end
          object cxGridDBTableView2Column5: TcxGridDBColumn
            Caption = 'Comiss'#227'o Paga'
            DataBinding.FieldName = 'VALOR'
            Options.Editing = False
            Width = 84
          end
          object cxGridDBTableView2Column1: TcxGridDBColumn
            Caption = 'Saldo Comiss'#227'o'
            DataBinding.FieldName = 'saldo'
            Options.Editing = False
            Width = 85
          end
          object cxGridDBTableView2VENCIMENTO: TcxGridDBColumn
            Caption = 'Venc. Dupl'
            DataBinding.FieldName = 'VENCIMENTO'
            Visible = False
            Options.Editing = False
          end
          object cxGridDBTableView2SITDUP: TcxGridDBColumn
            Caption = 'Sit. Dupl'
            DataBinding.FieldName = 'SITDUP'
            Visible = False
            Options.Editing = False
          end
          object cxGridDBTableView2VLRPGTO: TcxGridDBColumn
            Caption = 'Vlr Pgto'
            DataBinding.FieldName = 'VLRPGTO'
            Visible = False
            Options.Editing = False
          end
          object cxGridDBTableView2VALOR: TcxGridDBColumn
            Caption = 'Valor Dupl'
            DataBinding.FieldName = 'VALOR'
            Visible = False
            Options.Editing = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 585
        Width = 977
        Height = 48
        Align = alBottom
        TabOrder = 2
        object Label28: TLabel
          Left = 254
          Top = 5
          Width = 72
          Height = 13
          Caption = 'Total Comiss'#227'o'
          Transparent = True
        end
        object Label29: TLabel
          Left = 373
          Top = 5
          Width = 51
          Height = 13
          Caption = 'Total Pago'
          Transparent = True
        end
        object Label30: TLabel
          Left = 492
          Top = 5
          Width = 74
          Height = 13
          Caption = 'Saldo Comiss'#227'o'
          Transparent = True
        end
        object Label12: TLabel
          Left = 135
          Top = 5
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object Label19: TLabel
          Left = 611
          Top = 5
          Width = 75
          Height = 13
          Caption = 'Total Contratos'
          Transparent = True
        end
        object Label20: TLabel
          Left = 852
          Top = 5
          Width = 77
          Height = 13
          Caption = 'Saldo Contratos'
          Transparent = True
        end
        object Label22: TLabel
          Left = 730
          Top = 5
          Width = 102
          Height = 13
          Caption = 'Total Pago Contratos'
          Transparent = True
        end
        object EdTotComissao: TEdit
          Left = 254
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EdTotPago: TEdit
          Left = 373
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdSaldo: TEdit
          Left = 492
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdNumero3: TEdit
          Left = 135
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object EdContratos: TEdit
          Left = 611
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object EdSaldoContratos: TEdit
          Left = 852
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object EdTotalPagoContrato: TEdit
          Left = 730
          Top = 21
          Width = 113
          Height = 21
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Vigencia'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 72
        Align = alTop
        TabOrder = 0
        object Label23: TLabel
          Left = 8
          Top = 10
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
          Transparent = True
        end
        object Label24: TLabel
          Left = 260
          Top = 10
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label25: TLabel
          Left = 357
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label26: TLabel
          Left = 100
          Top = 10
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object cxButton21: TcxButton
          Left = 868
          Top = 1
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton21Click
        end
        object cxButton22: TcxButton
          Left = 768
          Top = 34
          Width = 100
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton22Click
        end
        object EdCodCli4: TEdit
          Left = 8
          Top = 26
          Width = 61
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = EdCodCli2Exit
        end
        object cxButton23: TcxButton
          Left = 668
          Top = 1
          Width = 100
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton23Click
        end
        object EdNomeCli4: TEdit
          Left = 100
          Top = 26
          Width = 153
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object cxButton24: TcxButton
          Left = 70
          Top = 26
          Width = 24
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = cxButton24Click
        end
        object DtInicial4: TcxDateEdit
          Left = 259
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 91
        end
        object DtFinal4: TcxDateEdit
          Left = 357
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 91
        end
        object cxButton26: TcxButton
          Left = 768
          Top = 1
          Width = 100
          Height = 33
          Caption = 'Processo'
          OptionsImage.ImageIndex = 10
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 8
          OnClick = cxButton26Click
        end
        object cxButton27: TcxButton
          Left = 668
          Top = 34
          Width = 100
          Height = 33
          Caption = 'Customizar'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 9
          OnClick = cxButton27Click
        end
        object RgData4: TcxRadioGroup
          Left = 454
          Top = 1
          Caption = 'Data'
          Properties.Columns = 2
          Properties.DefaultCaption = 'V'
          Properties.DefaultValue = 'V'
          Properties.Items = <
            item
              Caption = 'Emiss'#227'o'
              Value = 'E'
            end
            item
              Caption = 'Envio'
              Value = 'V'
            end
            item
              Caption = 'In'#237'cio'
              Value = 'P'
            end
            item
              Caption = 'Vencimento'
              Value = 'C'
            end>
          ItemIndex = 3
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Height = 65
          Width = 189
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 72
        Width = 977
        Height = 561
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          DataController.DataSource = FDMGerLicitacao.DConProcVigencia
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Width = 47
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 116
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA'
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 200
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Entidade'
            DataBinding.FieldName = 'NOMEENTIDADE'
            Width = 200
          end
          object cxGridDBTableView3Column1: TcxGridDBColumn
            Caption = 'Vigencia'
            DataBinding.FieldName = 'VIGENCIACONT'
          end
          object cxGridDBTableView3Column2: TcxGridDBColumn
            Caption = 'Tempo Vigencia'
            DataBinding.FieldName = 'TEMPOVIGENCIA'
            Width = 162
          end
          object cxGridDBTableView3Column3: TcxGridDBColumn
            Caption = 'Data In'#237'cio'
            DataBinding.FieldName = 'DTINICIOCONT'
          end
          object cxGridDBTableView3Column4: TcxGridDBColumn
            Caption = 'Vencimento Previsto'
            DataBinding.FieldName = 'DATAVENCIMENTO'
            Width = 104
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Dt. Abertura'
            DataBinding.FieldName = 'DATAABERTURA'
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Hora Abertura'
            DataBinding.FieldName = 'HORAABERTURA'
            Width = 88
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Width = 65
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Valor Resultado'
            DataBinding.FieldName = 'VALORRESULTADO'
          end
          object cxGridDBColumn29: TcxGridDBColumn
            Caption = 'Modalidade'
            DataBinding.FieldName = 'NOMEMODALIDADE'
            Width = 133
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
end
