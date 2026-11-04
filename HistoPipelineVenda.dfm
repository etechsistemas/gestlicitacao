object FHistoPipelineVenda: TFHistoPipelineVenda
  Left = 375
  Top = 310
  Caption = 'Adicionar Hist'#243'rico'
  ClientHeight = 321
  ClientWidth = 742
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
    Width = 742
    Height = 321
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 750
    ExplicitHeight = 106
    object Label3: TLabel
      Left = 10
      Top = 15
      Width = 23
      Height = 13
      Caption = 'Data'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label13: TLabel
      Left = 10
      Top = 160
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      FocusControl = DBMemo1
      Transparent = True
    end
    object Label24: TLabel
      Left = 10
      Top = 55
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBMemo2
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 526
      Top = 275
      Width = 102
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 628
      Top = 275
      Width = 102
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = BtFecharClick
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 30
      Width = 135
      Height = 21
      DataField = 'DATA'
      DataSource = FDMCRM.DPipelineVendaHist
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 176
      Width = 720
      Height = 84
      DataField = 'OBSERVACAO'
      DataSource = FDMCRM.DPipelineVendaHist
      TabOrder = 2
      OnKeyPress = DBMemo1KeyPress
    end
    object DBMemo2: TDBMemo
      Left = 10
      Top = 71
      Width = 720
      Height = 84
      DataField = 'DESCRICAO'
      DataSource = FDMCRM.DPipelineVendaHist
      TabOrder = 1
      OnKeyPress = DBMemo2KeyPress
    end
  end
end
