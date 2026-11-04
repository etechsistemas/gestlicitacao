object FMunicipio: TFMunicipio
  Left = 299
  Top = 241
  Caption = 'Cadastro de Munic'#237'pios'
  ClientHeight = 559
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 42
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 808
    object BtInsere: TcxButton
      Left = 4
      Top = 4
      Width = 133
      Height = 33
      Caption = '&Inserir'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = BtInsereClick
    end
    object cxButton3: TcxButton
      Left = 669
      Top = 4
      Width = 133
      Height = 33
      Caption = '&Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object BtConfirma: TcxButton
      Left = 536
      Top = 4
      Width = 133
      Height = 33
      Caption = 'C&onfirmar'
      Enabled = False
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 2
      OnClick = BtConfirmaClick
    end
    object BtCancela: TcxButton
      Left = 403
      Top = 4
      Width = 133
      Height = 33
      Caption = '&Cancelar'
      Enabled = False
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 3
      OnClick = BtCancelaClick
    end
    object BtEdita: TcxButton
      Left = 137
      Top = 4
      Width = 133
      Height = 33
      Caption = '&Editar'
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = BtEditaClick
    end
    object BtExcluir: TcxButton
      Left = 270
      Top = 4
      Width = 133
      Height = 33
      Caption = '&Excluir'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = BtExcluirClick
    end
  end
  object Panel4: TPanel
    Left = 433
    Top = 42
    Width = 377
    Height = 517
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 432
    ExplicitTop = 43
    ExplicitHeight = 515
    object cxGrid1: TcxGrid
      Left = 1
      Top = 52
      Width = 375
      Height = 430
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 428
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        DataController.DataSource = FDM.DMunicipio
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ID_ESTADO: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'ID_ESTADO'
          Width = 44
        end
        object cxGrid1DBTableView1ID_MUNICIPIO: TcxGridDBColumn
          Caption = 'Munic'#237'pio'
          DataBinding.FieldName = 'ID_MUNICIPIO'
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'IBGE'
          DataBinding.FieldName = 'CODMUNICUF'
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'UF'
          Width = 24
        end
        object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 195
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object PConsulta: TPanel
      Left = 1
      Top = 482
      Width = 375
      Height = 34
      Align = alBottom
      TabOrder = 1
      Visible = False
      ExplicitTop = 480
      object BtOk: TBitBtn
        Left = 205
        Top = 4
        Width = 75
        Height = 25
        Caption = '&OK'
        Kind = bkOK
        TabOrder = 0
      end
      object BtCancel: TBitBtn
        Left = 281
        Top = 4
        Width = 75
        Height = 25
        Caption = '&Cancel'
        Kind = bkCancel
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 51
      Align = alTop
      TabOrder = 2
      object Label3: TLabel
        Left = 7
        Top = 5
        Width = 31
        Height = 13
        Caption = 'Nome:'
        Transparent = True
      end
      object Label13: TLabel
        Left = 319
        Top = 5
        Width = 17
        Height = 13
        Caption = 'UF:'
        Transparent = True
      end
      object EdNome: TEdit
        Left = 7
        Top = 20
        Width = 306
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyDown = EdNomeKeyUp
        OnKeyUp = EdNomeKeyUp
      end
      object CbUf: TComboBox
        Left = 319
        Top = 20
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = CbUfChange
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
          'TO'
          'EX')
      end
    end
  end
  object PDados: TPanel
    Left = 0
    Top = 42
    Width = 433
    Height = 517
    Align = alClient
    Enabled = False
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 43
    ExplicitWidth = 431
    ExplicitHeight = 515
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 69
      Height = 13
      Caption = 'C'#243'digo Estado'
      FocusControl = DBEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 93
      Width = 28
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label5: TLabel
      Left = 8
      Top = 51
      Width = 83
      Height = 13
      Caption = 'C'#243'digo Munic'#237'pio'
      FocusControl = DBEdit3
      Transparent = True
    end
    object Label4: TLabel
      Left = 362
      Top = 93
      Width = 14
      Height = 13
      Caption = 'UF'
      Transparent = True
    end
    object Label6: TLabel
      Left = 148
      Top = 51
      Width = 61
      Height = 13
      Caption = 'C'#243'digo IBGE'
      FocusControl = DBEdit5
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_ESTADO'
      DataSource = FDM.DMunicipio
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 108
      Width = 348
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = FDM.DMunicipio
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 66
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'ID_MUNICIPIO'
      DataSource = FDM.DMunicipio
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 148
      Top = 66
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'CODMUNICUF'
      DataSource = FDM.DMunicipio
      TabOrder = 2
    end
    object DBComboBox2: TDBComboBox
      Tag = 1
      Left = 362
      Top = 108
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = FDM.DMunicipio
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
        'TO'
        'EX')
      TabOrder = 4
    end
  end
end
