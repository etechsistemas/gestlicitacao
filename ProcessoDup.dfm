object FProcessoDup: TFProcessoDup
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Acrescentar Duplicata'
  ClientHeight = 112
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 436
    Height = 112
    Align = alClient
    TabOrder = 0
    object Label56: TLabel
      Left = 154
      Top = 11
      Width = 72
      Height = 13
      Caption = 'Valor Comiss'#227'o'
      FocusControl = DBEdit33
      Transparent = True
    end
    object Label1: TLabel
      Left = 291
      Top = 11
      Width = 55
      Height = 13
      Caption = 'Vencimento'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 17
      Top = 11
      Width = 70
      Height = 13
      Caption = 'Valor Contrato'
      FocusControl = DBEdit2
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 211
      Top = 60
      Width = 102
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 313
      Top = 60
      Width = 102
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = BtFecharClick
    end
    object DBEdit33: TDBEdit
      Left = 154
      Top = 25
      Width = 131
      Height = 21
      DataField = 'VALOR'
      DataSource = FDMGerLicitacao.DProcessoDup
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 291
      Top = 25
      Width = 131
      Height = 21
      DataField = 'VENCIMENTO'
      DataSource = FDMGerLicitacao.DProcessoDup
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 17
      Top = 25
      Width = 131
      Height = 21
      DataField = 'VALORCONTRATOLIC'
      DataSource = FDMGerLicitacao.DProcessoDup
      TabOrder = 0
      OnExit = DBEdit2Exit
    end
  end
end
