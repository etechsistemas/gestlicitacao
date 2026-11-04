object FCondPag: TFCondPag
  Left = 252
  Top = 110
  Caption = 'Cadastro de Condi'#231#227'o de Pagamento'
  ClientHeight = 567
  ClientWidth = 821
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 37
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Nome'
      Transparent = True
    end
    object EdNome: TEdit
      Left = 42
      Top = 9
      Width = 659
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = EdNomeKeyDown
      OnKeyUp = EdNomeKeyUp
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 37
    Width = 821
    Height = 496
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = FDM.DConCondPag
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'CODIGO'
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'NOME'
        Width = 634
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object PConsulta: TPanel
    Left = 0
    Top = 533
    Width = 821
    Height = 34
    Align = alBottom
    TabOrder = 2
    Visible = False
    object cxButton4: TcxButton
      Left = 601
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
      Left = 703
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
