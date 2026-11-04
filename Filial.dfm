object FFilial: TFFilial
  Left = 441
  Top = 337
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Endere'#231'o de Entrega'
  ClientHeight = 369
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    Width = 918
    Height = 369
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 908
    ExplicitHeight = 359
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
      Left = 132
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
      Left = 291
      Top = 54
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 347
      Top = 54
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
    object DBEdit3: TDBEdit
      Left = 649
      Top = 69
      Width = 136
      Height = 21
      DataField = 'CONTATO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 539
      Top = 69
      Width = 103
      Height = 21
      DataField = 'FONE'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 9
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
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 132
      Top = 69
      Width = 153
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
      Left = 291
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
      Left = 347
      Top = 69
      Width = 186
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = FDMCliente.DCliFilial
      TabOrder = 8
    end
    object BtCep: TcxButton
      Left = 409
      Top = 27
      Width = 19
      Height = 21
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
    object BtAddCont: TcxButton
      Left = 798
      Top = 22
      Width = 105
      Height = 32
      Caption = '&Add. Endere'#231'o'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 11
      OnClick = BtAddContClick
    end
    object BtRevCont: TcxButton
      Left = 798
      Top = 60
      Width = 105
      Height = 32
      Caption = '&Rev. Endere'#231'o'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 12
      OnClick = BtRevContClick
    end
    object DBGrid4: TDBGrid
      Left = 1
      Top = 119
      Width = 916
      Height = 209
      Align = alBottom
      DataSource = FDMCliente.DConFilial
      ReadOnly = True
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          Title.Caption = 'N'#250'm.'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPLEMENTO'
          Title.Caption = 'Complemento'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTATO'
          Title.Caption = 'Contato'
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE'
          Title.Caption = 'Telefone'
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 328
      Width = 916
      Height = 40
      Align = alBottom
      TabOrder = 14
      ExplicitTop = 318
      ExplicitWidth = 906
      object cxButton4: TcxButton
        Left = 694
        Top = 6
        Width = 102
        Height = 27
        Caption = 'OK'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 0
        OnClick = cxButton4Click
      end
      object BtCancel: TcxButton
        Left = 796
        Top = 6
        Width = 102
        Height = 27
        Caption = 'Cancelar'
        OptionsImage.ImageIndex = 13
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 1
        OnClick = BtCancelClick
      end
    end
  end
end
