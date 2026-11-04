object FCliRefPes: TFCliRefPes
  Left = 441
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Refer'#234'ncia Comercial'
  ClientHeight = 123
  ClientWidth = 631
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
    Width = 631
    Height = 123
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 621
    ExplicitHeight = 113
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label5: TLabel
      Left = 270
      Top = 58
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 13
      Width = 62
      Height = 13
      Caption = 'Responsavel'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label17: TLabel
      Left = 214
      Top = 58
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 73
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = FDMCliente.DCliRefPes
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 270
      Top = 73
      Width = 134
      Height = 21
      DataField = 'TELEFONE'
      DataSource = FDMCliente.DCliRefPes
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 32
      Width = 602
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RESPONSAVEL'
      DataSource = FDMCliente.DCliRefPes
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 430
      Top = 64
      Width = 90
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 520
      Top = 64
      Width = 90
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = BtFecharClick
    end
    object DBComboBox2: TDBComboBox
      Left = 214
      Top = 73
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = FDMCliente.DCliRefPes
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RR'
        'RO'
        'RJ'
        'RN'
        'RS'
        'SC'
        'SP'
        'SE'
        'TO')
      TabOrder = 2
    end
  end
end
