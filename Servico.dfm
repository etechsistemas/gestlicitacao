object FServico: TFServico
  Left = 288
  Top = 164
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 504
  ClientWidth = 827
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 827
    Height = 504
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    OnChange = cxPageControl1Change
    ClientRectBottom = 499
    ClientRectLeft = 2
    ClientRectRight = 822
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 42
        Align = alTop
        TabOrder = 0
        object BtInsere: TcxButton
          Left = 5
          Top = 4
          Width = 135
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 680
          Top = 4
          Width = 135
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 545
          Top = 4
          Width = 135
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 410
          Top = 4
          Width = 135
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 140
          Top = 4
          Width = 135
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object cxButton39: TcxButton
          Left = 275
          Top = 4
          Width = 135
          Height = 33
          Caption = '&Duplicar'
          OptionsImage.ImageIndex = 18
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = cxButton39Click
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 42
        Width = 820
        Height = 433
        Align = alClient
        Enabled = False
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label2: TLabel
          Left = 113
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit2
          Transparent = True
        end
        object Label5: TLabel
          Left = 113
          Top = 51
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit3
          Transparent = True
        end
        object Label8: TLabel
          Left = 8
          Top = 95
          Width = 56
          Height = 13
          Caption = 'Valor M'#233'dio'
          FocusControl = DBEdit6
          Transparent = True
        end
        object Label24: TLabel
          Left = 8
          Top = 51
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 23
          Width = 97
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = FDM.DServico
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 113
          Top = 23
          Width = 696
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = FDM.DServico
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 113
          Top = 67
          Width = 696
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OBSERVACAO'
          DataSource = FDM.DServico
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 110
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALORMEDIO'
          DataSource = FDM.DServico
          TabOrder = 3
        end
        object DBEdit20: TDBEdit
          Left = 8
          Top = 67
          Width = 97
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'DATA'
          DataSource = FDM.DServico
          ReadOnly = True
          TabOrder = 5
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 8
          Top = 158
          Caption = 'Ativo'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = FDM.DServico
          Properties.ValueChecked = 'A'
          Properties.ValueUnchecked = 'I'
          TabOrder = 4
          Transparent = True
          Width = 49
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 55
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object EdNome: TEdit
          Left = 40
          Top = 21
          Width = 233
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyUp = EdNomeKeyUp
        end
        object cxButton1: TcxButton
          Left = 714
          Top = 12
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 612
          Top = 12
          Width = 102
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton2Click
        end
        object CkInativ: TcxCheckBox
          Left = 279
          Top = 24
          Caption = 'Mostrar inativos'
          TabOrder = 3
          Transparent = True
          OnClick = CkInativClick
          Width = 98
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 55
        Width = 820
        Height = 386
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          DataController.DataSource = FDM.DConServico
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
          end
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'NOME'
            Width = 330
          end
          object cxGrid1DBTableView1VALORMEDIO: TcxGridDBColumn
            Caption = 'Valor M'#233'dio'
            DataBinding.FieldName = 'VALORMEDIO'
          end
          object cxGrid1DBTableView1CODGRUPO: TcxGridDBColumn
            Caption = 'C'#243'd. Grupo'
            DataBinding.FieldName = 'CODGRUPO'
          end
          object cxGrid1DBTableView1NOMEGRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'NOMEGRUPO'
            Width = 238
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            Width = 44
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object PConsulta: TPanel
        Left = 0
        Top = 441
        Width = 820
        Height = 34
        Align = alBottom
        TabOrder = 2
        Visible = False
        object cxButton8: TcxButton
          Left = 609
          Top = 3
          Width = 102
          Height = 27
          Caption = 'OK'
          OptionsImage.ImageIndex = 7
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = cxButton8Click
        end
        object cxButton9: TcxButton
          Left = 711
          Top = 3
          Width = 102
          Height = 27
          Caption = 'Cancelar'
          OptionsImage.ImageIndex = 13
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton9Click
        end
      end
    end
  end
end
