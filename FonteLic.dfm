object FFonteLic: TFFonteLic
  Left = 299
  Top = 241
  Caption = 'Cadastro de Fonte de Dados'
  ClientHeight = 462
  ClientWidth = 810
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 42
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 808
    object BtInsere: TcxButton
      Left = 2
      Top = 3
      Width = 160
      Height = 33
      Caption = '&Inserir'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = BtInsereClick
    end
    object cxButton3: TcxButton
      Left = 642
      Top = 3
      Width = 160
      Height = 33
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object BtConfirma: TcxButton
      Left = 482
      Top = 3
      Width = 160
      Height = 33
      Caption = 'C&onfirmar'
      Enabled = False
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 2
      OnClick = BtConfirmaClick
    end
    object BtCancela: TcxButton
      Left = 322
      Top = 3
      Width = 160
      Height = 33
      Caption = '&Cancelar'
      Enabled = False
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 3
      OnClick = BtCancelaClick
    end
    object BtEdita: TcxButton
      Left = 162
      Top = 3
      Width = 160
      Height = 33
      Caption = '&Editar'
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = BtEditaClick
    end
  end
  object Panel4: TPanel
    Left = 433
    Top = 42
    Width = 377
    Height = 420
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 432
    ExplicitTop = 43
    ExplicitHeight = 418
    object cxGrid1: TcxGrid
      Left = 1
      Top = 40
      Width = 375
      Height = 345
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 343
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = FDMGerLicitacao.DFonteLic
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object cxGrid1DBTableView1NOME: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'NOME'
          Width = 246
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
    object PConsulta: TPanel
      Left = 1
      Top = 385
      Width = 375
      Height = 34
      Align = alBottom
      TabOrder = 1
      Visible = False
      ExplicitTop = 383
      object BtOk: TBitBtn
        Left = 205
        Top = 4
        Width = 75
        Height = 25
        Caption = '&OK'
        Kind = bkOK
        TabOrder = 0
      end
      object BtCancel: TBitBtn
        Left = 281
        Top = 4
        Width = 75
        Height = 25
        Caption = '&Cancel'
        Kind = bkCancel
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 39
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 13
        Width = 28
        Height = 13
        Caption = 'Nome'
        Transparent = True
      end
      object EdNome: TEdit
        Left = 40
        Top = 10
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyDown = EdNomeKeyUp
        OnKeyUp = EdNomeKeyUp
      end
      object CkInativas: TCheckBox
        Left = 279
        Top = 12
        Width = 81
        Height = 17
        Caption = 'Inativas'
        TabOrder = 1
        OnClick = CkInativasClick
      end
    end
  end
  object PDados: TPanel
    Left = 0
    Top = 42
    Width = 433
    Height = 420
    Align = alClient
    Enabled = False
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 43
    ExplicitWidth = 431
    ExplicitHeight = 418
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 49
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 97
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBEdit4
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      DataField = 'CODIGO'
      DataSource = FDMGerLicitacao.DFonteLic
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = FDMGerLicitacao.DFonteLic
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 112
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      DataField = 'OBSERVACAO'
      DataSource = FDMGerLicitacao.DFonteLic
      TabOrder = 2
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 362
      Top = 112
      Caption = 'Status'
      DataBinding.DataField = 'STATUS'
      DataBinding.DataSource = FDMGerLicitacao.DFonteLic
      Properties.ValueChecked = 'A'
      Properties.ValueUnchecked = 'I'
      TabOrder = 3
      Transparent = True
      Width = 57
    end
  end
end
