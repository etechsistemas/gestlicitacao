object FPipelineVenda: TFPipelineVenda
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Pipeline Vendas'
  ClientHeight = 712
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 984
    Height = 712
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Tab
    OnChange = cxPageControl1Change
    ClientRectBottom = 707
    ClientRectLeft = 2
    ClientRectRight = 979
    ClientRectTop = 24
    object Tab: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object Panel4: TPanel
        Left = 0
        Top = 642
        Width = 977
        Height = 41
        Align = alBottom
        TabOrder = 3
        object Label9: TLabel
          Left = 832
          Top = 2
          Width = 24
          Height = 13
          Caption = 'Total'
          FocusControl = DBEdit9
          Transparent = True
        end
        object Label10: TLabel
          Left = 686
          Top = 2
          Width = 67
          Height = 13
          Caption = 'Total Servi'#231'os'
          FocusControl = DBEdit10
          Transparent = True
        end
        object DBEdit9: TDBEdit
          Left = 832
          Top = 16
          Width = 134
          Height = 21
          TabStop = False
          DataField = 'TOTAL'
          DataSource = FDMCRM.DPipelineVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 686
          Top = 16
          Width = 134
          Height = 21
          TabStop = False
          DataField = 'TOTSERV'
          DataSource = FDMCRM.DPipelineVenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 381
        Width = 977
        Height = 261
        Align = alBottom
        TabOrder = 2
        Properties.ActivePage = cxTabSheet6
        ClientRectBottom = 256
        ClientRectLeft = 2
        ClientRectRight = 972
        ClientRectTop = 24
        object cxTabSheet6: TcxTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 2
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 970
            Height = 232
            Align = alClient
            DataSource = FDMCRM.DPipelineVendaServ
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Title.Caption = 'Item'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODSERV'
                Title.Caption = 'C'#243'digo'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMESERV'
                Title.Caption = 'Servi'#231'o'
                Width = 289
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Mensalidade'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Width = 172
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMISSAO'
                Title.Caption = 'Comiss'#227'o'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCCOMISSAO'
                Title.Caption = '% Comiss'#227'o'
                Visible = True
              end>
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 2
          object DBGrid5: TDBGrid
            Left = 0
            Top = 0
            Width = 970
            Height = 232
            Align = alClient
            DataSource = FDMCRM.DPipelineVendaHist
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid5DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Title.Caption = 'Item'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 439
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 324
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 41
        Align = alTop
        TabOrder = 0
        object BtInsere: TcxButton
          Left = 5
          Top = 4
          Width = 138
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 833
          Top = 4
          Width = 138
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 695
          Top = 4
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
          Left = 557
          Top = 4
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
          Left = 143
          Top = 4
          Width = 138
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object BtExcluir: TcxButton
          Left = 419
          Top = 4
          Width = 138
          Height = 33
          Caption = '&Excluir'
          OptionsImage.ImageIndex = 15
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = BtExcluirClick
        end
        object cxButton6: TcxButton
          Left = 281
          Top = 4
          Width = 138
          Height = 33
          Caption = 'Imprimir'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 6
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 41
        Width = 977
        Height = 340
        Align = alClient
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 975
          Height = 338
          Align = alClient
          Enabled = False
          TabOrder = 0
          object Label3: TLabel
            Left = 87
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Data Cad.'
            FocusControl = DBEdit3
            Transparent = True
          end
          object Label13: TLabel
            Left = 8
            Top = 215
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
            FocusControl = DBMemo1
            Transparent = True
          end
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
            Transparent = True
          end
          object Label22: TLabel
            Left = 728
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Situa'#231#227'o'
            Transparent = True
          end
          object Label39: TLabel
            Left = 475
            Top = 8
            Width = 106
            Height = 13
            Caption = 'Empresa Faturamento'
            Transparent = True
          end
          object Label6: TLabel
            Left = 8
            Top = 52
            Width = 79
            Height = 13
            Caption = 'Cliente Potencial'
            Transparent = True
          end
          object Label19: TLabel
            Left = 475
            Top = 52
            Width = 39
            Height = 13
            Caption = 'Contato'
            Transparent = True
          end
          object Label20: TLabel
            Left = 175
            Top = 8
            Width = 46
            Height = 13
            Caption = 'Vendedor'
            Transparent = True
          end
          object Label21: TLabel
            Left = 8
            Top = 97
            Width = 51
            Height = 13
            Caption = 'Data In'#237'cio'
            FocusControl = DBEdit2
            Transparent = True
          end
          object Label23: TLabel
            Left = 96
            Top = 97
            Width = 42
            Height = 13
            Caption = 'Data Fim'
            FocusControl = DBEdit4
            Transparent = True
          end
          object Label24: TLabel
            Left = 8
            Top = 140
            Width = 46
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBMemo2
            Transparent = True
          end
          object Label89: TLabel
            Left = 184
            Top = 97
            Width = 31
            Height = 13
            Caption = 'Status'
            FocusControl = DBEdit1
            Transparent = True
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 231
            Width = 953
            Height = 53
            DataField = 'OBSERVACAO'
            DataSource = FDMCRM.DPipelineVenda
            TabOrder = 14
            OnKeyPress = DBMemo1KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 87
            Top = 23
            Width = 82
            Height = 21
            DataField = 'DATACAD'
            DataSource = FDMCRM.DPipelineVenda
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 23
            Width = 73
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = FDMCRM.DPipelineVenda
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit20: TDBEdit
            Left = 728
            Top = 23
            Width = 233
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'SITUACAO'
            DataSource = FDMCRM.DPipelineVenda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object BtAddServ: TcxButton
            Left = 8
            Top = 300
            Width = 110
            Height = 33
            Caption = '&Add. Servi'#231'o'
            Enabled = False
            OptionsImage.ImageIndex = 11
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 15
            OnClick = BtAddServClick
          end
          object BtRemServ: TcxButton
            Left = 118
            Top = 300
            Width = 108
            Height = 33
            Caption = '&Rem. Servi'#231'o'
            Enabled = False
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 16
            OnClick = BtRemServClick
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 475
            Top = 23
            DataBinding.DataField = 'CODEMPFAT'
            DataBinding.DataSource = FDMCRM.DPipelineVenda
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOMEFANTA'
              end>
            Properties.ListSource = FDM.DEmpresaPesq
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            OnExit = cxDBLookupComboBox2Exit
            Width = 220
          end
          object BtEmpresa: TcxButton
            Left = 696
            Top = 23
            Width = 19
            Height = 21
            Caption = '...'
            Enabled = False
            TabOrder = 5
            OnClick = BtEmpresaClick
          end
          object BtAddHisto: TcxButton
            Left = 226
            Top = 300
            Width = 110
            Height = 33
            Caption = '&Add. Hist'#243'rico'
            Enabled = False
            OptionsImage.ImageIndex = 11
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 17
            OnClick = BtAddHistoClick
          end
          object BtRemHisto: TcxButton
            Left = 336
            Top = 300
            Width = 108
            Height = 33
            Caption = '&Rem. Hist'#243'rico'
            Enabled = False
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = FPrincipal.cxImageList1
            TabOrder = 18
            OnClick = BtRemServClick
          end
          object CbClientePotencial: TcxDBLookupComboBox
            Left = 8
            Top = 67
            DataBinding.DataField = 'CODCLIPOTEN'
            DataBinding.DataSource = FDMCRM.DPipelineVenda
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = FDMCRM.DCliPotenPesq
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 6
            OnExit = CbClientePotencialExit
            Width = 442
          end
          object BtClientePotencial: TcxButton
            Left = 450
            Top = 67
            Width = 19
            Height = 21
            Caption = '...'
            Enabled = False
            TabOrder = 7
            OnClick = BtClientePotencialClick
          end
          object CbContatoClientePotencial: TcxDBLookupComboBox
            Left = 475
            Top = 67
            DataBinding.DataField = 'CODCONTPOTEN'
            DataBinding.DataSource = FDMCRM.DPipelineVenda
            Properties.KeyFieldNames = 'ITEM'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = FDMCRM.DCliPotenContPesq
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 8
            OnExit = CbContatoClientePotencialExit
            Width = 467
          end
          object BtContatoClientePotencial: TcxButton
            Left = 942
            Top = 67
            Width = 19
            Height = 21
            Caption = '...'
            Enabled = False
            TabOrder = 9
          end
          object CbVendedor: TcxDBLookupComboBox
            Left = 175
            Top = 23
            DataBinding.DataField = 'CODVEND'
            DataBinding.DataSource = FDMCRM.DPipelineVenda
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
            TabOrder = 2
            OnExit = CbVendedorExit
            Width = 275
          end
          object BtVendedor: TcxButton
            Left = 450
            Top = 23
            Width = 19
            Height = 21
            Caption = '...'
            Enabled = False
            TabOrder = 3
            OnClick = BtVendedorClick
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 112
            Width = 82
            Height = 21
            DataField = 'DTINICIO'
            DataSource = FDMCRM.DPipelineVenda
            TabOrder = 10
          end
          object DBEdit4: TDBEdit
            Left = 96
            Top = 112
            Width = 82
            Height = 21
            DataField = 'DTFIM'
            DataSource = FDMCRM.DPipelineVenda
            TabOrder = 11
          end
          object DBMemo2: TDBMemo
            Left = 8
            Top = 156
            Width = 953
            Height = 53
            DataField = 'DESCRICAO'
            DataSource = FDMCRM.DPipelineVenda
            TabOrder = 13
            OnKeyPress = DBMemo2KeyPress
          end
          object DBComboBox9: TDBComboBox
            Tag = 1
            Left = 184
            Top = 112
            Width = 285
            Height = 21
            CharCase = ecUpperCase
            DataField = 'STATUSDESC'
            DataSource = FDMCRM.DPipelineVenda
            Items.Strings = (
              'REUNI'#195'O'
              'PROPOSTA'
              'NEGOCIA'#199#195'O'
              'FECHAMENTO')
            TabOrder = 12
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 90
        Width = 977
        Height = 552
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          OnCellClick = cxGrid1DBTableView1CellClick
          DataController.DataSource = FDMCRM.DConPipelineVenda
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
          object cxGrid1DBTableView1DATACAD: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATACAD'
          end
          object cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 115
          end
          object cxGrid1DBTableView1NOMEVEND: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NOMEVEND'
            Width = 143
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 148
          end
          object cxGrid1DBTableView1NOMECONT: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'NOMECONT'
            Width = 113
          end
          object cxGrid1DBTableView1NOMECLIPOTEN: TcxGridDBColumn
            Caption = 'Cliente Potencial'
            DataBinding.FieldName = 'NOMECLIPOTEN'
            Width = 147
          end
          object cxGrid1DBTableView1NOMECONTPOTEN: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'NOMECONTPOTEN'
            Width = 200
          end
          object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
          end
          object cxGrid1DBTableView1SITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            Width = 115
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
          end
          object cxGrid1DBTableView1DTINICIO: TcxGridDBColumn
            Caption = 'Dt. In'#237'cio'
            DataBinding.FieldName = 'DTINICIO'
          end
          object cxGrid1DBTableView1DTFIM: TcxGridDBColumn
            Caption = 'Dt. Fim'
            DataBinding.FieldName = 'DTFIM'
          end
          object cxGrid1DBTableView1TOTSERV: TcxGridDBColumn
            Caption = 'Tot. Serv'
            DataBinding.FieldName = 'TOTSERV'
          end
          object cxGrid1DBTableView1TOTPROD: TcxGridDBColumn
            Caption = 'Tot. Prod'
            DataBinding.FieldName = 'TOTPROD'
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 173
          end
          object cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            Width = 200
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 642
        Width = 977
        Height = 41
        Align = alBottom
        TabOrder = 1
        object Label47: TLabel
          Left = 818
          Top = 13
          Width = 24
          Height = 13
          Caption = 'Total'
          Transparent = True
        end
        object Label8: TLabel
          Left = 611
          Top = 13
          Width = 67
          Height = 13
          Caption = 'Total Servi'#231'os'
          Transparent = True
        end
        object EdTotPed: TEdit
          Left = 848
          Top = 8
          Width = 121
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
        object EdTotServ: TEdit
          Left = 691
          Top = 8
          Width = 121
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 90
        Align = alTop
        TabOrder = 2
        object Label50: TLabel
          Left = 10
          Top = 7
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label51: TLabel
          Left = 115
          Top = 7
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label36: TLabel
          Left = 220
          Top = 7
          Width = 106
          Height = 13
          Caption = 'Empresa Faturamento'
          Transparent = True
        end
        object Label14: TLabel
          Left = 401
          Top = 7
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          Transparent = True
        end
        object Label37: TLabel
          Left = 580
          Top = 7
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
          Transparent = True
        end
        object Label29: TLabel
          Left = 10
          Top = 47
          Width = 79
          Height = 13
          Caption = 'Cliente Potencial'
          Transparent = True
        end
        object Label2: TLabel
          Left = 220
          Top = 47
          Width = 31
          Height = 13
          Caption = 'Status'
          Transparent = True
        end
        object cxButton2: TcxButton
          Left = 883
          Top = 14
          Width = 91
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 11
          OnClick = cxButton2Click
        end
        object cxButton4: TcxButton
          Left = 792
          Top = 14
          Width = 91
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 10
        end
        object cxButton1: TcxButton
          Left = 703
          Top = 14
          Width = 89
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 9
          OnClick = cxButton1Click
        end
        object DtInicial: TcxDateEdit
          Left = 9
          Top = 23
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 98
        end
        object DtFinal: TcxDateEdit
          Left = 115
          Top = 23
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 98
        end
        object cxButton17: TcxButton
          Left = 374
          Top = 23
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 3
          OnClick = cxButton17Click
        end
        object CbEmp: TDBLookupComboBox
          Left = 220
          Top = 23
          Width = 154
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOMEFANTA'
          ListSource = FDM.DEmpresaPesq
          TabOrder = 2
          OnKeyDown = CbEmpKeyDown
        end
        object cxButton12: TcxButton
          Left = 555
          Top = 23
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 5
        end
        object CbSolicitante: TDBLookupComboBox
          Left = 401
          Top = 23
          Width = 154
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMRh.DVendPesq
          TabOrder = 4
          OnKeyDown = CbSolicitanteKeyDown
        end
        object CbSit: TComboBox
          Left = 580
          Top = 23
          Width = 101
          Height = 21
          TabOrder = 6
          Text = 'INICIO'
          Items.Strings = (
            'INICIO'
            'TODOS')
        end
        object CbCliPoten: TDBLookupComboBox
          Left = 10
          Top = 61
          Width = 183
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMCRM.DCliPotenPesq
          TabOrder = 7
        end
        object cxButton15: TcxButton
          Left = 194
          Top = 61
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 8
          OnClick = cxButton15Click
        end
        object CbStatus: TComboBox
          Left = 220
          Top = 61
          Width = 173
          Height = 21
          ItemIndex = 4
          TabOrder = 12
          Text = 'TODOS'
          Items.Strings = (
            'REUNI'#195'O'
            'PROPOSTA'
            'NEGOCIA'#199#195'O'
            'FECHAMENTO'
            'TODOS')
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Consulta Detalhada'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 89
        Align = alTop
        TabOrder = 0
        object Label11: TLabel
          Left = 10
          Top = 7
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label15: TLabel
          Left = 115
          Top = 7
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label16: TLabel
          Left = 220
          Top = 7
          Width = 106
          Height = 13
          Caption = 'Empresa Faturamento'
          Transparent = True
        end
        object Label17: TLabel
          Left = 401
          Top = 7
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          Transparent = True
        end
        object Label18: TLabel
          Left = 580
          Top = 7
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
          Transparent = True
        end
        object Label25: TLabel
          Left = 10
          Top = 48
          Width = 79
          Height = 13
          Caption = 'Cliente Potencial'
          Transparent = True
        end
        object Label5: TLabel
          Left = 220
          Top = 48
          Width = 31
          Height = 13
          Caption = 'Status'
          Transparent = True
        end
        object DtInicial2: TcxDateEdit
          Left = 9
          Top = 23
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 98
        end
        object DtFinal2: TcxDateEdit
          Left = 115
          Top = 23
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 98
        end
        object cxButton11: TcxButton
          Left = 374
          Top = 23
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 3
          OnClick = cxButton11Click
        end
        object CbEmp2: TDBLookupComboBox
          Left = 220
          Top = 23
          Width = 154
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOMEFANTA'
          ListSource = FDM.DEmpresaPesq
          TabOrder = 2
          OnKeyDown = CbEmp2KeyDown
        end
        object cxButton13: TcxButton
          Left = 555
          Top = 23
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 5
        end
        object CbSolicitante2: TDBLookupComboBox
          Left = 401
          Top = 23
          Width = 154
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMRh.DVendPesq
          TabOrder = 4
          OnKeyDown = CbSolicitante2KeyDown
        end
        object CbSit2: TComboBox
          Left = 580
          Top = 23
          Width = 109
          Height = 21
          TabOrder = 6
          Text = 'INICIO'
          Items.Strings = (
            'INICIO'
            'TODOS')
        end
        object cxButton7: TcxButton
          Left = 887
          Top = 11
          Width = 86
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 9
          OnClick = cxButton2Click
        end
        object cxButton9: TcxButton
          Left = 801
          Top = 11
          Width = 86
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 10
        end
        object cxButton10: TcxButton
          Left = 717
          Top = 11
          Width = 84
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 11
          OnClick = cxButton10Click
        end
        object CbCliPoten2: TDBLookupComboBox
          Left = 9
          Top = 62
          Width = 184
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = FDMCRM.DCliPotenPesq
          TabOrder = 7
        end
        object cxButton8: TcxButton
          Left = 194
          Top = 62
          Width = 19
          Height = 21
          Caption = '...'
          TabOrder = 8
          OnClick = cxButton8Click
        end
        object CbStatus2: TComboBox
          Left = 220
          Top = 62
          Width = 173
          Height = 21
          ItemIndex = 4
          TabOrder = 12
          Text = 'TODOS'
          Items.Strings = (
            'REUNI'#195'O'
            'PROPOSTA'
            'NEGOCIA'#199#195'O'
            'FECHAMENTO'
            'TODOS')
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 642
        Width = 977
        Height = 41
        Align = alBottom
        TabOrder = 1
        object Label27: TLabel
          Left = 818
          Top = 13
          Width = 24
          Height = 13
          Caption = 'Total'
          Transparent = True
        end
        object Label12: TLabel
          Left = 611
          Top = 13
          Width = 67
          Height = 13
          Caption = 'Total Servi'#231'os'
          Transparent = True
        end
        object EdTotPed2: TEdit
          Left = 848
          Top = 8
          Width = 121
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
        object EdTotServ2: TEdit
          Left = 691
          Top = 8
          Width = 121
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
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 89
        Width = 977
        Height = 319
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          OnCellClick = cxGridDBTableView1CellClick
          DataController.DataSource = FDMCRM.DConPipelineVenda2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGridDBTableView1DATACAD: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATACAD'
          end
          object cxGridDBTableView1NOMEEMPFAT: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 128
          end
          object cxGridDBTableView1NOMEVEND: TcxGridDBColumn
            Caption = 'Vendedor'
            DataBinding.FieldName = 'NOMEVEND'
            Width = 145
          end
          object cxGridDBTableView1NOMECLI: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 146
          end
          object cxGridDBTableView1NOMECONT: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'NOMECONT'
            Width = 114
          end
          object cxGridDBTableView1NOMECLIPOTEN: TcxGridDBColumn
            Caption = 'Cliente Potencial'
            DataBinding.FieldName = 'NOMECLIPOTEN'
            Width = 152
          end
          object cxGridDBTableView1NOMECONTPOTEN: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'NOMECONTPOTEN'
            Width = 200
          end
          object cxGridDBTableView1SITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            Width = 90
          end
          object cxGridDBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
          end
          object cxGridDBTableView1DTINICIO: TcxGridDBColumn
            Caption = 'Dt. In'#237'cio'
            DataBinding.FieldName = 'DTINICIO'
          end
          object cxGridDBTableView1DTFIM: TcxGridDBColumn
            Caption = 'Dt. Fim'
            DataBinding.FieldName = 'DTFIM'
          end
          object cxGridDBTableView1TOTSERV: TcxGridDBColumn
            Caption = 'Tot. Serv'
            DataBinding.FieldName = 'TOTSERV'
          end
          object cxGridDBTableView1TOTPROD: TcxGridDBColumn
            Caption = 'Tot. Prod.'
            DataBinding.FieldName = 'TOTPROD'
          end
          object cxGridDBTableView1TOTAL: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'TOTAL'
          end
          object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            Width = 200
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
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 408
        Width = 977
        Height = 234
        Align = alBottom
        TabOrder = 3
        Properties.ActivePage = cxTabSheet5
        ClientRectBottom = 229
        ClientRectLeft = 2
        ClientRectRight = 972
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 2
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 970
            Height = 205
            Align = alClient
            DataSource = FDMCRM.DConPipelineVendaServ
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                Title.Caption = 'Item'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODSERV'
                Title.Caption = 'C'#243'digo'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMESERV'
                Title.Caption = 'Servi'#231'o'
                Width = 289
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Mensalidade'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMISSAO'
                Title.Caption = 'Comiss'#227'o'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERCCOMISSAO'
                Title.Caption = '% Comiss'#227'o'
                Visible = True
              end>
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 2
          object DBGrid6: TDBGrid
            Left = 0
            Top = 0
            Width = 970
            Height = 205
            Align = alClient
            DataSource = FDMCRM.DConPipelineVendaHist
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
                Title.Caption = 'Item'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPROD'
                Title.Caption = 'C'#243'digo'
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEPROD'
                Title.Caption = 'Produto'
                Width = 289
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Valor'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Quantidade'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Width = 172
                Visible = True
              end>
          end
        end
      end
    end
  end
end
