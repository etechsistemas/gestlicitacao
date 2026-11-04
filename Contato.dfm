object FContato: TFContato
  Left = 392
  Top = 414
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contatos'
  ClientHeight = 357
  ClientWidth = 994
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
    Width = 994
    Height = 357
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 984
    ExplicitHeight = 347
    object DBGrid3: TDBGrid
      Left = 1
      Top = 113
      Width = 992
      Height = 203
      Align = alClient
      DataSource = FDMCliente.DConContatos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid3DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          Title.Caption = 'N'#250'm.'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SETOR'
          Title.Caption = 'Setor / Cargo'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE1'
          Title.Caption = 'Telefone'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAMAL'
          Title.Caption = 'Ramal'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE2'
          Title.Caption = 'Telefone 2'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAMAL2'
          Title.Caption = 'Ramal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE3'
          Title.Caption = 'Telefone 3'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAMAL3'
          Title.Caption = 'Ramal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'E-mail'
          Width = 233
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 316
      Width = 992
      Height = 40
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 306
      ExplicitWidth = 982
      object cxButton4: TcxButton
        Left = 785
        Top = 6
        Width = 102
        Height = 27
        Caption = 'OK'
        OptionsImage.ImageIndex = 7
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 0
        OnClick = cxButton4Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 992
      Height = 112
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 982
      object Label2: TLabel
        Left = 24
        Top = 11
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
        Transparent = True
      end
      object Label3: TLabel
        Left = 343
        Top = 53
        Width = 28
        Height = 13
        Caption = 'E-mail'
        FocusControl = DBEdit3
        Transparent = True
      end
      object Label5: TLabel
        Left = 698
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit5
        Transparent = True
      end
      object Label6: TLabel
        Left = 428
        Top = 11
        Width = 64
        Height = 13
        Caption = 'Setor / Cargo'
        FocusControl = DBEdit6
        Transparent = True
      end
      object Label1: TLabel
        Left = 812
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Ramal'
        FocusControl = DBEdit1
        Transparent = True
      end
      object Label4: TLabel
        Left = 24
        Top = 53
        Width = 51
        Height = 13
        Caption = 'Telefone 2'
        FocusControl = DBEdit4
        Transparent = True
      end
      object Label7: TLabel
        Left = 138
        Top = 53
        Width = 30
        Height = 13
        Caption = 'Ramal'
        FocusControl = DBEdit7
        Transparent = True
      end
      object Label8: TLabel
        Left = 186
        Top = 53
        Width = 51
        Height = 13
        Caption = 'Telefone 3'
        FocusControl = DBEdit8
        Transparent = True
      end
      object Label9: TLabel
        Left = 300
        Top = 53
        Width = 30
        Height = 13
        Caption = 'Ramal'
        FocusControl = DBEdit9
        Transparent = True
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 26
        Width = 399
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = FDMCliente.DCliCont
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 343
        Top = 68
        Width = 345
        Height = 21
        DataField = 'EMAIL'
        DataSource = FDMCliente.DCliCont
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 698
        Top = 26
        Width = 109
        Height = 21
        DataField = 'FONE1'
        DataSource = FDMCliente.DCliCont
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 428
        Top = 26
        Width = 260
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SETOR'
        DataSource = FDMCliente.DCliCont
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 812
        Top = 26
        Width = 37
        Height = 21
        DataField = 'RAMAL'
        DataSource = FDMCliente.DCliCont
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 68
        Width = 112
        Height = 21
        DataField = 'FONE2'
        DataSource = FDMCliente.DCliCont
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 138
        Top = 68
        Width = 37
        Height = 21
        DataField = 'RAMAL2'
        DataSource = FDMCliente.DCliCont
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 186
        Top = 68
        Width = 112
        Height = 21
        DataField = 'FONE3'
        DataSource = FDMCliente.DCliCont
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 300
        Top = 68
        Width = 37
        Height = 21
        DataField = 'RAMAL3'
        DataSource = FDMCliente.DCliCont
        TabOrder = 7
      end
      object BtAddCont: TcxButton
        Left = 864
        Top = 17
        Width = 100
        Height = 32
        Caption = '&Add. Contato'
        OptionsImage.ImageIndex = 9
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 9
        OnClick = BtAddContClick
      end
      object BtRevCont: TcxButton
        Left = 864
        Top = 55
        Width = 100
        Height = 32
        Caption = '&Rev. Contato'
        OptionsImage.ImageIndex = 8
        OptionsImage.Images = FPrincipal.cxImageList1
        TabOrder = 10
        OnClick = BtRevContClick
      end
    end
  end
end
