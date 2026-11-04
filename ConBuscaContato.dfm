object FConBuscaContato: TFConBuscaContato
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Busca Contatos'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 645
    Height = 275
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 48
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = FDM.DBuscaContatos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1sel: TcxGridDBColumn
        Caption = 'Sel'
        DataBinding.FieldName = 'sel'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = 'X'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'X'
        Options.ShowEditButtons = isebAlways
        Width = 37
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'NOME'
        Width = 261
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'EMAIL'
        Width = 310
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object PConsulta: TPanel
    Left = 0
    Top = 275
    Width = 645
    Height = 34
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitWidth = 375
    object cxButton4: TcxButton
      Left = 440
      Top = 1
      Width = 102
      Height = 32
      Align = alRight
      Caption = 'OK'
      ModalResult = 1
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = cxButton4Click
      ExplicitLeft = 170
    end
    object cxButton5: TcxButton
      Left = 542
      Top = 1
      Width = 102
      Height = 32
      Align = alRight
      Caption = 'Cancelar'
      ModalResult = 2
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton5Click
      ExplicitLeft = 272
    end
    object CkConfirm: TCheckBox
      Left = 4
      Top = 6
      Width = 185
      Height = 17
      Caption = 'Adicionar como e-mail principal'
      TabOrder = 2
    end
  end
end
