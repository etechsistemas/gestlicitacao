object FConEmpresa: TFConEmpresa
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consulta de Empresa'
  ClientHeight = 413
  ClientWidth = 798
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 413
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 371
      Width = 796
      Height = 41
      Align = alBottom
      TabOrder = 0
      object cxButton4: TcxButton
        Left = 575
        Top = 6
        Width = 102
        Height = 27
        Caption = 'OK'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 0
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 677
        Top = 6
        Width = 102
        Height = 27
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 13
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 1
        OnClick = cxButton5Click
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 796
      Height = 370
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = FDM.DConEmpresa
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
          Width = 127
        end
        object cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn
          Caption = 'Raz'#227'o Social'
          DataBinding.FieldName = 'RAZAOSOCIAL'
          Width = 310
        end
        object cxGrid1DBTableView1NOMEFANTA: TcxGridDBColumn
          Caption = 'Nome Fantasia'
          DataBinding.FieldName = 'NOMEFANTA'
          Width = 334
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
