object FConfiguracoes: TFConfiguracoes
  Left = 409
  Top = 224
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Configura'#231#245'es'
  ClientHeight = 712
  ClientWidth = 831
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
    Top = 671
    Width = 831
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxButton3: TcxButton
      Left = 327
      Top = 1
      Width = 89
      Height = 31
      Caption = 'Gravar'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 416
      Top = 1
      Width = 92
      Height = 31
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton4Click
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 831
    Height = 671
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = Cliente
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 666
    ClientRectLeft = 2
    ClientRectRight = 826
    ClientRectTop = 24
    object Cliente: TcxTabSheet
      Caption = 'E-mail'
      ImageIndex = 3
      object Label11: TLabel
        Left = 16
        Top = 2
        Width = 105
        Height = 13
        Caption = 'Mensagem para envio'
      end
      object Label27: TLabel
        Left = 16
        Top = 66
        Width = 91
        Height = 13
        Caption = 'Assunto para envio'
      end
      object Label28: TLabel
        Left = 16
        Top = 130
        Width = 161
        Height = 13
        Caption = 'Mensagem para aviso de licita'#231#227'o'
      end
      object Label29: TLabel
        Left = 16
        Top = 195
        Width = 147
        Height = 13
        Caption = 'Assunto para aviso de licita'#231#227'o'
      end
      object Label30: TLabel
        Left = 16
        Top = 259
        Width = 146
        Height = 13
        Caption = 'Mensagem aviso de licita'#231#227'o 2'
      end
      object Label31: TLabel
        Left = 16
        Top = 323
        Width = 92
        Height = 13
        Caption = 'Mensagem relat'#243'rio'
      end
      object Label32: TLabel
        Left = 16
        Top = 387
        Width = 83
        Height = 13
        Caption = 'Assunto Relat'#243'rio'
      end
      object Label33: TLabel
        Left = 16
        Top = 451
        Width = 100
        Height = 13
        Caption = 'Mensagem Prefeitura'
      end
      object Label34: TLabel
        Left = 16
        Top = 516
        Width = 86
        Height = 13
        Caption = 'Assunto Prefeitura'
      end
      object Label35: TLabel
        Left = 16
        Top = 580
        Width = 175
        Height = 13
        Caption = 'E-mail para receber c'#243'pia do relat'#243'rio'
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 18
        Width = 793
        Height = 46
        DataField = 'MSGENVIO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 0
        OnKeyPress = DBMemo1KeyPress
      end
      object DBMemo2: TDBMemo
        Left = 16
        Top = 82
        Width = 793
        Height = 46
        DataField = 'ASSUNTOENVIO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 1
        OnKeyPress = DBMemo2KeyPress
      end
      object DBMemo3: TDBMemo
        Left = 16
        Top = 146
        Width = 793
        Height = 46
        DataField = 'MSGAVISOLICITACAO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 2
        OnKeyPress = DBMemo3KeyPress
      end
      object DBMemo4: TDBMemo
        Left = 16
        Top = 211
        Width = 793
        Height = 46
        DataField = 'ASSUNTOAVISOLICITACAO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 3
        OnKeyPress = DBMemo4KeyPress
      end
      object DBMemo5: TDBMemo
        Left = 16
        Top = 274
        Width = 793
        Height = 46
        DataField = 'MSGAVISOLICITACAO2'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 4
        OnKeyPress = DBMemo5KeyPress
      end
      object DBMemo6: TDBMemo
        Left = 16
        Top = 339
        Width = 793
        Height = 46
        DataField = 'MSGRELATORIO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 5
        OnKeyPress = DBMemo6KeyPress
      end
      object DBMemo7: TDBMemo
        Left = 16
        Top = 403
        Width = 793
        Height = 46
        DataField = 'MSGASSUNTORELATORIO'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 6
        OnKeyPress = DBMemo7KeyPress
      end
      object DBMemo8: TDBMemo
        Left = 16
        Top = 467
        Width = 793
        Height = 46
        DataField = 'MSGPREFEITURA'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 7
        OnKeyPress = DBMemo8KeyPress
      end
      object DBMemo9: TDBMemo
        Left = 16
        Top = 532
        Width = 793
        Height = 46
        DataField = 'ASSUNTOPREFEITURA'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 8
        OnKeyPress = DBMemo9KeyPress
      end
      object DBMemo10: TDBMemo
        Left = 16
        Top = 596
        Width = 793
        Height = 35
        DataField = 'EMAILCC'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 9
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'E-Tech'
      ImageIndex = 5
      object cxButton6: TcxButton
        Left = 648
        Top = 104
        Width = 137
        Height = 31
        Caption = 'Gerar Todos Menus'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 0
        OnClick = cxButton6Click
      end
      object cxButton7: TcxButton
        Left = 16
        Top = 78
        Width = 153
        Height = 31
        Caption = 'Cadastrar Menus Novos'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 1
        OnClick = cxButton7Click
      end
      object cxButton8: TcxButton
        Left = 16
        Top = 115
        Width = 153
        Height = 31
        Caption = 'Corrige lotes'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 2
      end
    end
    object cxTabSheet14: TcxTabSheet
      Caption = 'Editais'
      ImageIndex = 4
      object Label36: TLabel
        Left = 9
        Top = 9
        Width = 86
        Height = 13
        Caption = 'Pasta base editais'
        FocusControl = DBEdit10
      end
      object DBEdit10: TDBEdit
        Left = 9
        Top = 25
        Width = 525
        Height = 21
        DataField = 'PASTABASEEDITAIS'
        DataSource = FDMGerLicitacao.DConfigLic
        TabOrder = 0
      end
    end
  end
end
