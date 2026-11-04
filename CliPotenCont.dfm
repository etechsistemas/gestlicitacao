object FCliPotenCont: TFCliPotenCont
  Left = 441
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Contato'
  ClientHeight = 153
  ClientWidth = 742
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
    Width = 742
    Height = 153
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 732
    ExplicitHeight = 143
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label3: TLabel
      Left = 286
      Top = 59
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label5: TLabel
      Left = 569
      Top = 17
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label6: TLabel
      Left = 412
      Top = 17
      Width = 64
      Height = 13
      Caption = 'Setor / Cargo'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label1: TLabel
      Left = 683
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Ramal'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 59
      Width = 32
      Height = 13
      Caption = 'Celular'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label8: TLabel
      Left = 129
      Top = 59
      Width = 51
      Height = 13
      Caption = 'Telefone 3'
      FocusControl = DBEdit8
      Transparent = True
    end
    object Label9: TLabel
      Left = 243
      Top = 59
      Width = 30
      Height = 13
      Caption = 'Ramal'
      FocusControl = DBEdit9
      Transparent = True
    end
    object DBEdit2: TDBEdit
      Left = 7
      Top = 32
      Width = 399
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 286
      Top = 74
      Width = 434
      Height = 21
      DataField = 'EMAIL'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 569
      Top = 32
      Width = 112
      Height = 21
      DataField = 'FONE1'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 412
      Top = 32
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SETOR'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 511
      Top = 101
      Width = 105
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 8
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 616
      Top = 101
      Width = 104
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 9
      OnClick = BtFecharClick
    end
    object DBEdit1: TDBEdit
      Left = 683
      Top = 32
      Width = 37
      Height = 21
      DataField = 'RAMAL'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 74
      Width = 112
      Height = 21
      DataField = 'FONE2'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 129
      Top = 74
      Width = 112
      Height = 21
      DataField = 'FONE3'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 243
      Top = 74
      Width = 37
      Height = 21
      DataField = 'RAMAL3'
      DataSource = FDMCRM.DCliPotenCont
      TabOrder = 6
    end
  end
end
