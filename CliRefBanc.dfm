object FCliRefBanc: TFCliRefBanc
  Left = 441
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Refer'#234'ncia Banc'#225'ria'
  ClientHeight = 127
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 127
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 530
    ExplicitHeight = 117
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 31
      Height = 13
      Caption = 'Banco'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label5: TLabel
      Left = 152
      Top = 58
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 391
      Top = 17
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 28
      Height = 13
      Caption = 'Conta'
      FocusControl = DBEdit1
      Transparent = True
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 32
      Width = 377
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NBANCO'
      DataSource = FDMCliente.DCliRefBanc
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 152
      Top = 73
      Width = 134
      Height = 21
      DataField = 'FONE'
      DataSource = FDMCliente.DCliRefBanc
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 391
      Top = 32
      Width = 130
      Height = 21
      DataField = 'AGENCIA'
      DataSource = FDMCliente.DCliRefBanc
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 341
      Top = 65
      Width = 90
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 431
      Top = 65
      Width = 90
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = BtFecharClick
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 73
      Width = 135
      Height = 21
      DataField = 'CONTA'
      DataSource = FDMCliente.DCliRefBanc
      TabOrder = 2
    end
  end
end
