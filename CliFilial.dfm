object FCliFilial: TFCliFilial
  Left = 441
  Top = 337
  BorderIcons = []
  Caption = 'Adicionar Endere'#231'o de Entrega'
  ClientHeight = 152
  ClientWidth = 793
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
    Width = 793
    Height = 152
    Align = alClient
    TabOrder = 0
    object Label3: TLabel
      Left = 649
      Top = 54
      Width = 37
      Height = 13
      Caption = 'Contato'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label5: TLabel
      Left = 539
      Top = 54
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit5
      Transparent = True
    end
    object Label1: TLabel
      Left = 434
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label8: TLabel
      Left = 729
      Top = 12
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit6
      Transparent = True
    end
    object Label11: TLabel
      Left = 8
      Top = 54
      Width = 27
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit9
      Transparent = True
    end
    object Label14: TLabel
      Left = 159
      Top = 54
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit12
      Transparent = True
    end
    object Label20: TLabel
      Left = 330
      Top = 12
      Width = 21
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit15
      Transparent = True
    end
    object Label17: TLabel
      Left = 330
      Top = 54
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 94
      Width = 64
      Height = 13
      Caption = 'Complemento'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label10: TLabel
      Left = 388
      Top = 54
      Width = 61
      Height = 13
      Caption = 'C'#243'digo IBGE'
      FocusControl = DBEdit1
      Transparent = True
    end
    object DBEdit3: TDBEdit
      Left = 649
      Top = 69
      Width = 136
      Height = 21
      DataField = 'CONTATO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 11
    end
    object DBEdit5: TDBEdit
      Left = 539
      Top = 69
      Width = 103
      Height = 21
      DataField = 'FONE'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 10
    end
    object cxButton1: TcxButton
      Left = 607
      Top = 103
      Width = 90
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 13
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 696
      Top = 103
      Width = 90
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 14
      OnClick = BtFecharClick
    end
    object DBEdit1: TDBEdit
      Left = 434
      Top = 27
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 729
      Top = 27
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 4
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 69
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 159
      Top = 69
      Width = 165
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 330
      Top = 27
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = FDMCliente.DCliFilial
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object DBComboBox2: TDBComboBox
      Left = 330
      Top = 69
      Width = 50
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = FDMCliente.DCliFilial
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
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 109
      Width = 316
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 12
    end
    object BtCep: TcxButton
      Left = 409
      Top = 28
      Width = 19
      Height = 19
      Caption = '...'
      TabOrder = 2
      OnClick = BtCepClick
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 27
      Width = 316
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = FDMCliente.DCliFilial
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Tag = 1
      Left = 388
      Top = 69
      DataBinding.DataField = 'CODMUNICUF'
      DataBinding.DataSource = FDMCliente.DCliFilial
      Properties.KeyFieldNames = 'CODMUNICUF'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRICAO'
        end>
      Properties.ListSource = FDM.DMunicPesq
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 8
      Width = 117
    end
    object BtCodmunic: TcxButton
      Left = 507
      Top = 69
      Width = 19
      Height = 21
      Caption = '...'
      TabOrder = 9
      OnClick = BtCodmunicClick
    end
  end
end
