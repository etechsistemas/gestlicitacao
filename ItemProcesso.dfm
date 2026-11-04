object FItemProcesso: TFItemProcesso
  Left = 375
  Top = 310
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Item'
  ClientHeight = 144
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 144
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 813
    ExplicitHeight = 152
    object Label3: TLabel
      Left = 10
      Top = 47
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit2
      Transparent = True
    end
    object Label9: TLabel
      Left = 222
      Top = 47
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBEdit8
      Transparent = True
    end
    object Label11: TLabel
      Left = 116
      Top = 47
      Width = 54
      Height = 13
      Caption = 'Vlr. Unit'#225'rio'
      Transparent = True
    end
    object LbCodigo: TLabel
      Left = 10
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Transparent = True
    end
    object Label1: TLabel
      Left = 328
      Top = 47
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 597
      Top = 97
      Width = 102
      Height = 33
      Caption = 'Confirmar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object BtFechar: TcxButton
      Left = 699
      Top = 97
      Width = 102
      Height = 33
      Caption = 'Fechar'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 5
      OnClick = BtFecharClick
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 63
      Width = 100
      Height = 21
      DataField = 'QTDE'
      DataSource = FDMGerLicitacao.DProcessoLicIt
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit8: TDBEdit
      Left = 222
      Top = 63
      Width = 100
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'TOTAL'
      DataSource = FDMGerLicitacao.DProcessoLicIt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 116
      Top = 63
      Width = 100
      Height = 21
      DataField = 'VLRUNIT'
      DataSource = FDMGerLicitacao.DProcessoLicIt
      TabOrder = 2
      OnEnter = DBEdit9Enter
      OnExit = DBEdit9Exit
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 22
      Width = 791
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEPROD'
      DataSource = FDMGerLicitacao.DProcessoLicIt
      TabOrder = 0
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 328
      Top = 63
      Width = 473
      Height = 21
      DataField = 'OBSERVACAO'
      DataSource = FDMGerLicitacao.DProcessoLicIt
      TabOrder = 3
      OnEnter = DBEdit9Enter
      OnExit = DBEdit9Exit
    end
  end
end
