object FServPipelineVenda: TFServPipelineVenda
  Left = 375
  Top = 310
  Caption = 'Adicionar Item'
  ClientHeight = 106
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 106
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 750
    object Label4: TLabel
      Left = 528
      Top = 7
      Width = 61
      Height = 13
      Caption = 'Valor Mensal'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label9: TLabel
      Left = 200
      Top = 50
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBEdit8
      Transparent = True
    end
    object Label2: TLabel
      Left = 10
      Top = 7
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 90
      Top = 50
      Width = 56
      Height = 13
      Caption = '% Comiss'#227'o'
      FocusControl = DBEdit1
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 421
      Top = 59
      Width = 102
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 523
      Top = 59
      Width = 102
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 6
      OnClick = BtFecharClick
    end
    object DBEdit3: TDBEdit
      Left = 528
      Top = 22
      Width = 97
      Height = 21
      DataField = 'VLRUNIT'
      DataSource = FDMCRM.DPipelineVendaServ
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
    object BtConCli: TcxButton
      Left = 497
      Top = 22
      Width = 19
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = BtConCliClick
    end
    object DBEdit8: TDBEdit
      Left = 200
      Top = 65
      Width = 129
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'TOTAL'
      DataSource = FDMCRM.DPipelineVendaServ
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 10
      Top = 22
      DataBinding.DataField = 'CODSERV'
      DataBinding.DataSource = FDMCRM.DPipelineVendaServ
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListSource = FDM.DServPesq
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnExit = cxDBLookupComboBox1Exit
      Width = 486
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 65
      Width = 97
      Height = 21
      DataField = 'PERCCOMISSAO'
      DataSource = FDMCRM.DPipelineVendaServ
      TabOrder = 4
      OnExit = DBEdit3Exit
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 10
      Top = 66
      Caption = 'Comiss'#227'o'
      DataBinding.DataField = 'COMISSAO'
      DataBinding.DataSource = FDMCRM.DPipelineVendaServ
      ParentFont = False
      Properties.DisplayChecked = 'S'
      Properties.DisplayUnchecked = 'N'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      OnClick = cxDBCheckBox2Click
      Width = 74
    end
  end
end
