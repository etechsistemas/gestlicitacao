object FCliDoc: TFCliDoc
  Left = 441
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Documenta'#231#227'o'
  ClientHeight = 161
  ClientWidth = 906
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
    Width = 906
    Height = 161
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 900
    ExplicitHeight = 162
    object Label5: TLabel
      Left = 756
      Top = 58
      Width = 41
      Height = 13
      Caption = 'Validade'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 239
      Top = 17
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 80
      Height = 13
      Caption = 'Caminho Arquivo'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label59: TLabel
      Left = 8
      Top = 17
      Width = 21
      Height = 13
      Caption = 'Tipo'
      Transparent = True
    end
    object DBEdit5: TDBEdit
      Left = 756
      Top = 73
      Width = 134
      Height = 21
      DataField = 'VALIDADE'
      DataSource = FDMCliente.DCliDoc
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 239
      Top = 32
      Width = 651
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = FDMCliente.DCliDoc
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 710
      Top = 111
      Width = 90
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 6
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 800
      Top = 111
      Width = 90
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 7
      OnClick = BtFecharClick
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 73
      Width = 742
      Height = 21
      DataField = 'LOCALARQ'
      DataSource = FDMCliente.DCliDoc
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 530
      Top = 111
      Width = 90
      Height = 33
      Caption = 'Localizar'
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = cxButton3Click
    end
    object cxButton2: TcxButton
      Left = 620
      Top = 111
      Width = 90
      Height = 33
      Caption = 'Visualizar'
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 32
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TIPODOC'
      DataSource = FDMCliente.DCliDoc
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 352
    Top = 104
  end
end
