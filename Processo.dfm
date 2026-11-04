object FProcesso: TFProcesso
  Left = 0
  Top = 0
  Caption = 'Processo'
  ClientHeight = 702
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 984
    Height = 702
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    ClientRectBottom = 697
    ClientRectLeft = 2
    ClientRectRight = 979
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 265
        Width = 977
        Height = 408
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet3
        ClientRectBottom = 403
        ClientRectLeft = 2
        ClientRectRight = 972
        ClientRectTop = 24
        object cxTabSheet3: TcxTabSheet
          Caption = 'Arquivos'
          ImageIndex = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 379
            Align = alLeft
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitHeight = 377
            object BtAddProcLicDoc: TcxButton
              Left = 6
              Top = 19
              Width = 90
              Height = 33
              Caption = '&Adicionar'
              Enabled = False
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 0
              OnClick = BtAddProcLicDocClick
            end
            object BtRevProcLicDoc: TcxButton
              Left = 6
              Top = 52
              Width = 90
              Height = 33
              Caption = '&Remover'
              Enabled = False
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 1
              OnClick = BtRevProcLicDocClick
            end
            object BtVisuProcLicDoc: TcxButton
              Left = 6
              Top = 85
              Width = 90
              Height = 33
              Caption = '&Visualizar'
              OptionsImage.ImageIndex = 17
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 2
              OnClick = BtVisuProcLicDocClick
            end
          end
          object DBGrid3: TDBGrid
            Left = 103
            Top = 0
            Width = 867
            Height = 379
            Align = alClient
            DataSource = FDMGerLicitacao.DProcessoLicArq
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid3DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Title.Caption = 'Item'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPODOC'
                Title.Caption = 'Tipo Documento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALIDADE'
                Title.Caption = 'Validade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAMINHO'
                Title.Caption = 'Local'
                Width = 414
                Visible = True
              end>
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 2
          object DBGrid1: TDBGrid
            Left = 103
            Top = 0
            Width = 867
            Height = 379
            Align = alClient
            DataSource = FDMGerLicitacao.DProcessoLicCont
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Title.Caption = 'Item'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA'
                Title.Caption = 'Hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTATO'
                Title.Caption = 'Contato'
                Width = 139
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 323
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 184
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 379
            Align = alLeft
            TabOrder = 1
            object BtnAddHistorico: TcxButton
              Left = 6
              Top = 19
              Width = 90
              Height = 33
              Caption = '&Adicionar'
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 0
            end
            object BtnRemHistorico: TcxButton
              Left = 6
              Top = 52
              Width = 90
              Height = 33
              Caption = '&Remover'
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 1
              OnClick = BtnRemHistoricoClick
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'Propostas'
          ImageIndex = 3
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 970
            Height = 379
            Align = alClient
            Enabled = False
            TabOrder = 0
            ExplicitLeft = 560
            ExplicitTop = 56
            ExplicitWidth = 185
            ExplicitHeight = 41
            object Label17: TLabel
              Left = 10
              Top = 8
              Width = 52
              Height = 13
              Caption = 'Dt Entrega'
              FocusControl = DBEdit6
              Transparent = True
            end
            object Label18: TLabel
              Left = 106
              Top = 8
              Width = 64
              Height = 13
              Caption = 'Hora Entrega'
              FocusControl = DBEdit7
              Transparent = True
            end
            object Label19: TLabel
              Left = 201
              Top = 8
              Width = 57
              Height = 13
              Caption = 'Dt Abertura'
              FocusControl = DBEdit9
              Transparent = True
            end
            object Label20: TLabel
              Left = 295
              Top = 8
              Width = 69
              Height = 13
              Caption = 'Hora Abertura'
              FocusControl = DBEdit10
              Transparent = True
            end
            object Label21: TLabel
              Left = 391
              Top = 8
              Width = 70
              Height = 13
              Caption = 'Dt Limite Envio'
              FocusControl = DBEdit11
              Transparent = True
            end
            object Label23: TLabel
              Left = 486
              Top = 8
              Width = 82
              Height = 13
              Caption = 'Hora Limite Envio'
              FocusControl = DBEdit12
              Transparent = True
            end
            object Label24: TLabel
              Left = 581
              Top = 8
              Width = 70
              Height = 13
              Caption = 'Dt Cadastram.'
              FocusControl = DBEdit13
              Transparent = True
            end
            object Label25: TLabel
              Left = 676
              Top = 8
              Width = 82
              Height = 13
              Caption = 'Hora Cadastram.'
              FocusControl = DBEdit14
              Transparent = True
            end
            object Label26: TLabel
              Left = 772
              Top = 8
              Width = 39
              Height = 13
              Caption = 'Dt Inicio'
              FocusControl = DBEdit15
              Transparent = True
            end
            object Label27: TLabel
              Left = 868
              Top = 8
              Width = 51
              Height = 13
              Caption = 'Hora Inicio'
              FocusControl = DBEdit16
              Transparent = True
            end
            object Label28: TLabel
              Left = 10
              Top = 56
              Width = 46
              Height = 13
              Caption = 'Pregoeiro'
              FocusControl = DBEdit17
              Transparent = True
            end
            object Label29: TLabel
              Left = 392
              Top = 56
              Width = 59
              Height = 13
              Caption = 'Valor M'#237'nimo'
              FocusControl = DBEdit18
              Transparent = True
            end
            object Label30: TLabel
              Left = 10
              Top = 105
              Width = 86
              Height = 13
              Caption = 'Validade Proposta'
              FocusControl = DBEdit19
              Transparent = True
            end
            object Label31: TLabel
              Left = 105
              Top = 105
              Width = 32
              Height = 13
              Caption = 'Tempo'
              Transparent = True
            end
            object Label32: TLabel
              Left = 201
              Top = 105
              Width = 85
              Height = 13
              Caption = 'Vigencia Contrato'
              FocusControl = DBEdit22
              Transparent = True
            end
            object Label33: TLabel
              Left = 297
              Top = 105
              Width = 32
              Height = 13
              Caption = 'Tempo'
              Transparent = True
            end
            object Label41: TLabel
              Left = 10
              Top = 154
              Width = 101
              Height = 13
              Caption = 'Endere'#231'o de Entrega'
              Transparent = True
            end
            object Label34: TLabel
              Left = 391
              Top = 154
              Width = 72
              Height = 13
              Caption = 'Site da Disputa'
              FocusControl = DBEdit23
              Transparent = True
            end
            object Label37: TLabel
              Left = 581
              Top = 57
              Width = 85
              Height = 13
              Caption = 'Valor da Proposta'
              FocusControl = DBEdit24
              Transparent = True
            end
            object Label39: TLabel
              Left = 10
              Top = 263
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
              FocusControl = DBMemo3
              Transparent = True
            end
            object Label44: TLabel
              Left = 392
              Top = 105
              Width = 84
              Height = 13
              Caption = 'Prazo Pagamento'
              FocusControl = DBEdit30
              Transparent = True
            end
            object Label45: TLabel
              Left = 488
              Top = 105
              Width = 32
              Height = 13
              Caption = 'Tempo'
              Transparent = True
            end
            object Label47: TLabel
              Left = 584
              Top = 105
              Width = 86
              Height = 13
              Caption = 'Validade Produtos'
              FocusControl = DBEdit31
              Transparent = True
            end
            object Label53: TLabel
              Left = 679
              Top = 105
              Width = 32
              Height = 13
              Caption = 'Tempo'
              Transparent = True
            end
            object Label54: TLabel
              Left = 773
              Top = 105
              Width = 84
              Height = 13
              Caption = 'Entraga Produtos'
              FocusControl = DBEdit32
              Transparent = True
            end
            object Label55: TLabel
              Left = 868
              Top = 105
              Width = 32
              Height = 13
              Caption = 'Tempo'
              Transparent = True
            end
            object DBEdit6: TDBEdit
              Left = 10
              Top = 24
              Width = 90
              Height = 21
              DataField = 'DATAENTREGAENV'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 106
              Top = 24
              Width = 90
              Height = 21
              DataField = 'HORAENTREGAENV'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 201
              Top = 24
              Width = 90
              Height = 21
              DataField = 'DATA'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 295
              Top = 24
              Width = 90
              Height = 21
              DataField = 'HORAABERTURA'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 391
              Top = 24
              Width = 90
              Height = 21
              DataField = 'DATALIMITEENV'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 4
            end
            object DBEdit12: TDBEdit
              Left = 486
              Top = 24
              Width = 90
              Height = 21
              DataField = 'HORALIMITEENV'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 5
            end
            object DBEdit13: TDBEdit
              Left = 581
              Top = 24
              Width = 90
              Height = 21
              DataField = 'DATACAD'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 6
            end
            object DBEdit14: TDBEdit
              Left = 676
              Top = 24
              Width = 90
              Height = 21
              DataField = 'HORACAD'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 7
            end
            object DBEdit15: TDBEdit
              Left = 772
              Top = 24
              Width = 90
              Height = 21
              DataField = 'DATAINICI'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 8
            end
            object DBEdit16: TDBEdit
              Left = 868
              Top = 24
              Width = 90
              Height = 21
              DataField = 'HORAINICIO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 9
            end
            object DBEdit17: TDBEdit
              Left = 10
              Top = 72
              Width = 376
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PREGOEIRO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 10
            end
            object DBEdit18: TDBEdit
              Left = 392
              Top = 72
              Width = 184
              Height = 21
              DataField = 'VALORMAX'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 11
            end
            object DBEdit19: TDBEdit
              Left = 10
              Top = 121
              Width = 90
              Height = 21
              DataField = 'VALIDADEPROP'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 12
            end
            object DBEdit22: TDBEdit
              Left = 201
              Top = 121
              Width = 90
              Height = 21
              DataField = 'VIGENCIACONT'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 13
            end
            object cxDBLookupComboBox7: TcxDBLookupComboBox
              Left = 10
              Top = 169
              DataBinding.DataField = 'CODENDERECO'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.KeyFieldNames = 'ITEM'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = FDMGerLicitacao.DEntidadeFilialPesq
              Properties.MaxLength = 0
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 14
              OnExit = cxDBLookupComboBox7Exit
              Width = 355
            end
            object BtEndereco: TcxButton
              Left = 366
              Top = 169
              Width = 19
              Height = 21
              Caption = '...'
              Enabled = False
              TabOrder = 15
              OnClick = BtEnderecoClick
            end
            object DBEdit23: TDBEdit
              Left = 391
              Top = 169
              Width = 567
              Height = 21
              DataField = 'SITEDISPULTA'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 16
            end
            object cxDBCheckBox4: TcxDBCheckBox
              Left = 10
              Top = 208
              Caption = 'Pre'#231'o m'#225'ximo por item'
              DataBinding.DataField = 'MPRECOMAXPITEM'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 17
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 202
              Top = 208
              Caption = 'Valores por extenso'
              DataBinding.DataField = 'MVLRPOREXT'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 18
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox2: TcxDBCheckBox
              Left = 397
              Top = 208
              Caption = 'C'#243'digo do produto'
              DataBinding.DataField = 'MCODPROD'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 19
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox3: TcxDBCheckBox
              Left = 572
              Top = 208
              Caption = 'Impresso do Cliente'
              DataBinding.DataField = 'MIMPCLIENTE'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 20
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox5: TcxDBCheckBox
              Left = 764
              Top = 208
              Caption = 'Reajuste'
              DataBinding.DataField = 'MREAJUSTE'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 21
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox6: TcxDBCheckBox
              Left = 10
              Top = 233
              Caption = 'Enviar Laudos'
              DataBinding.DataField = 'MENVLAUDOS'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 22
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox7: TcxDBCheckBox
              Left = 202
              Top = 233
              Caption = 'Venda Proibida ao Com'#233'rcio'
              DataBinding.DataField = 'MVENDAPROIBIDA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 23
              Transparent = True
              Width = 173
            end
            object cxDBCheckBox8: TcxDBCheckBox
              Left = 397
              Top = 233
              Caption = 'Enviar PNIFF'
              DataBinding.DataField = 'MPNPF'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 24
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox9: TcxDBCheckBox
              Left = 572
              Top = 233
              Caption = 'FGTS'
              DataBinding.DataField = 'MFGTS'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 25
              Transparent = True
              Width = 136
            end
            object cxDBCheckBox10: TcxDBCheckBox
              Left = 764
              Top = 233
              Caption = 'INSS'
              DataBinding.DataField = 'MINSS'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 26
              Transparent = True
              Width = 136
            end
            object DBEdit24: TDBEdit
              Left = 581
              Top = 72
              Width = 186
              Height = 21
              DataField = 'VALORPROPOSTA'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 27
            end
            object DBMemo3: TDBMemo
              Left = 10
              Top = 278
              Width = 948
              Height = 69
              DataField = 'OBSFACEPROP'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 28
              OnKeyPress = DBMemo3KeyPress
            end
            object DBComboBox6: TDBComboBox
              Left = 106
              Top = 121
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEMPOVALIDADEPROP'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'DIAS'
                'SEMANAS'
                'MESES'
                'ANOS')
              TabOrder = 29
            end
            object DBComboBox7: TDBComboBox
              Left = 297
              Top = 121
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEMPOVIGENCIA'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'DIAS'
                'SEMANAS'
                'MESES'
                'ANOS')
              TabOrder = 30
            end
            object DBEdit30: TDBEdit
              Left = 392
              Top = 121
              Width = 90
              Height = 21
              DataField = 'PRAZOPAGAMENO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 31
            end
            object DBComboBox9: TDBComboBox
              Left = 488
              Top = 121
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEMPOPRAZOPAGAMENTO'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'DIAS'
                'SEMANAS'
                'MESES'
                'ANOS')
              TabOrder = 32
            end
            object DBEdit31: TDBEdit
              Left = 584
              Top = 121
              Width = 90
              Height = 21
              DataField = 'VALIDADEPROD'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 33
            end
            object DBComboBox10: TDBComboBox
              Left = 679
              Top = 121
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEMPOVALIDADEPROD'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'DIAS'
                'SEMANAS'
                'MESES'
                'ANOS')
              TabOrder = 34
            end
            object DBEdit32: TDBEdit
              Left = 773
              Top = 121
              Width = 90
              Height = 21
              DataField = 'ENTREGAPROD'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 35
            end
            object DBComboBox11: TDBComboBox
              Left = 868
              Top = 121
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              DataField = 'TEMPOENTREGAPROD'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'DIAS'
                'SEMANAS'
                'MESES'
                'ANOS')
              TabOrder = 36
            end
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = 'Produtos'
          ImageIndex = 7
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 379
            Align = alLeft
            TabOrder = 0
            object BtnAddItem: TcxButton
              Left = 6
              Top = 19
              Width = 90
              Height = 33
              Caption = '&Adicionar'
              Enabled = False
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 0
              OnClick = BtnAddItemClick
            end
            object BtnRemItem: TcxButton
              Left = 6
              Top = 52
              Width = 90
              Height = 33
              Caption = '&Remover'
              Enabled = False
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 1
              OnClick = BtnRemItemClick
            end
          end
          object DBGrid4: TDBGrid
            Left = 103
            Top = 0
            Width = 867
            Height = 379
            Align = alClient
            DataSource = FDMGerLicitacao.DProcessoLicIt
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid4DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEM'
                Title.Caption = 'Item'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMEPROD'
                Title.Caption = 'Descri'#231#227'o'
                Width = 273
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Caption = 'Vlr Unit'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 293
                Visible = True
              end>
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Credenciamento'
          ImageIndex = 4
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 970
            Height = 379
            Align = alClient
            Enabled = False
            TabOrder = 0
            ExplicitLeft = 472
            ExplicitTop = 88
            ExplicitWidth = 17
            ExplicitHeight = 1
            object Label38: TLabel
              Left = 10
              Top = 181
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
              FocusControl = DBMemo2
              Transparent = True
            end
            object Label40: TLabel
              Left = 191
              Top = 23
              Width = 27
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit25
              Transparent = True
            end
            object Label42: TLabel
              Left = 191
              Top = 129
              Width = 27
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit26
              Transparent = True
            end
            object cxDBCheckBox11: TcxDBCheckBox
              Left = 10
              Top = 14
              Caption = 'Procura'#231#227'o do Signat'#225'rio'
              DataBinding.DataField = 'PROCURSIGNATARIO'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 0
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox12: TcxDBCheckBox
              Left = 10
              Top = 39
              Caption = 'Procura'#231#227'o do Representante'
              DataBinding.DataField = 'PROCURREPRESENTANTE'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 1
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox13: TcxDBCheckBox
              Left = 10
              Top = 64
              Caption = 'Procura'#231#227'o de Responsabilidade'
              DataBinding.DataField = 'PROCURRESPONSA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 2
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox14: TcxDBCheckBox
              Left = 10
              Top = 93
              Caption = 'Contrato Social'
              DataBinding.DataField = 'CONTRATOSOCIAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 3
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox15: TcxDBCheckBox
              Left = 10
              Top = 118
              Caption = 'Declara'#231#227'o de pr'#233'-requisitos'
              DataBinding.DataField = 'DECLARACAOPREREQ'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox16: TcxDBCheckBox
              Left = 10
              Top = 143
              Caption = 'Declara'#231#227'o conforme item'
              DataBinding.DataField = 'DECLARACAOITEM'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 5
              Transparent = True
              Width = 175
            end
            object DBMemo2: TDBMemo
              Left = 10
              Top = 196
              Width = 953
              Height = 69
              DataField = 'OBSCREDENCIAMENTO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 6
              OnKeyPress = DBMemo2KeyPress
            end
            object DBEdit25: TDBEdit
              Left = 191
              Top = 37
              Width = 772
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PROCURNOMEREPRE'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 7
            end
            object DBEdit26: TDBEdit
              Left = 191
              Top = 143
              Width = 772
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DECLARACAONOMEITEM'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 8
            end
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Habilita'#231#227'o'
          ImageIndex = 5
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 970
            Height = 379
            Align = alClient
            Enabled = False
            TabOrder = 0
            ExplicitLeft = 408
            ExplicitTop = 128
            ExplicitWidth = 185
            ExplicitHeight = 41
            object cxDBCheckBox17: TcxDBCheckBox
              Left = 18
              Top = 14
              Caption = 'Cadastro em Org'#227'o P'#250'blico'
              DataBinding.DataField = 'HCADORGAOPUBLICO'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 0
              Transparent = True
              Width = 177
            end
            object cxDBCheckBox18: TcxDBCheckBox
              Left = 18
              Top = 39
              Caption = 'Identidade dos S'#243'cios'
              DataBinding.DataField = 'HIDENTIDADESOCIO'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 1
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox19: TcxDBCheckBox
              Left = 18
              Top = 64
              Caption = 'CNPJ'
              DataBinding.DataField = 'HCNPJ'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 2
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox20: TcxDBCheckBox
              Left = 18
              Top = 91
              Caption = 'CICAD'
              DataBinding.DataField = 'HCICAD'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 3
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox21: TcxDBCheckBox
              Left = 18
              Top = 116
              Caption = 'SICAF'
              DataBinding.DataField = 'HSICAF'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 4
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox22: TcxDBCheckBox
              Left = 18
              Top = 141
              Caption = 'Contrato Social e Altera'#231#245'es'
              DataBinding.DataField = 'HCONTSOCIAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 5
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox23: TcxDBCheckBox
              Left = 18
              Top = 166
              Caption = 'Certid'#227'o Federal'
              DataBinding.DataField = 'HCERTFEDERAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 6
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox24: TcxDBCheckBox
              Left = 18
              Top = 193
              Caption = 'Certid'#227'o Estadual'
              DataBinding.DataField = 'HCERTESTADUAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 7
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox25: TcxDBCheckBox
              Left = 18
              Top = 218
              Caption = 'Certid'#227'o Municipal'
              DataBinding.DataField = 'HCERTMUNICIPAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 8
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox26: TcxDBCheckBox
              Left = 18
              Top = 243
              Caption = 'INSS'
              DataBinding.DataField = 'HINSS'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 9
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox27: TcxDBCheckBox
              Left = 260
              Top = 14
              Caption = 'FGTS'
              DataBinding.DataField = 'HFGTS'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 10
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox28: TcxDBCheckBox
              Left = 260
              Top = 39
              Caption = 'Balan'#231'o Patrimonial'
              DataBinding.DataField = 'HBALANCOPATRIMONIAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 11
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox29: TcxDBCheckBox
              Left = 260
              Top = 64
              Caption = 'Fal'#234'ncia e Concordata'
              DataBinding.DataField = 'HFALENCIA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 12
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox30: TcxDBCheckBox
              Left = 260
              Top = 91
              Caption = #205'ndice de Solv'#234'ncia'
              DataBinding.DataField = 'HINDICESOL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 13
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox31: TcxDBCheckBox
              Left = 260
              Top = 116
              Caption = 'Certid'#227'o Simplificada da Junta Comercial'
              DataBinding.DataField = 'HCERTJUNTACOMERC'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 14
              Transparent = True
              Width = 232
            end
            object cxDBCheckBox32: TcxDBCheckBox
              Left = 260
              Top = 141
              Caption = 'Atestado de Capacidade T'#233'cnica'
              DataBinding.DataField = 'HATESCAPACIDADE'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 15
              Transparent = True
              Width = 186
            end
            object cxDBCheckBox33: TcxDBCheckBox
              Left = 260
              Top = 166
              Caption = 'Licen'#231'a Sanit'#225'ria'
              DataBinding.DataField = 'HLICENCASANITARIA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 16
              Transparent = True
              Width = 197
            end
            object cxDBCheckBox34: TcxDBCheckBox
              Left = 260
              Top = 193
              Caption = 'Inscri'#231#227'o Estadual'
              DataBinding.DataField = 'HINCEST'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 17
              Transparent = True
              Width = 143
            end
            object cxDBCheckBox35: TcxDBCheckBox
              Left = 260
              Top = 218
              Caption = 'Inscri'#231#227'o Municipal'
              DataBinding.DataField = 'HINSCMUNIC'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 18
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox36: TcxDBCheckBox
              Left = 260
              Top = 243
              Caption = 'Alvara de Localiza'#231#227'o'
              DataBinding.DataField = 'HALVARA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 19
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox37: TcxDBCheckBox
              Left = 520
              Top = 14
              Caption = 'Autoriza'#231#227'o de Funcionamento Normal'
              DataBinding.DataField = 'HAUTFUNCNORMAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 20
              Transparent = True
              Width = 225
            end
            object cxDBCheckBox38: TcxDBCheckBox
              Left = 520
              Top = 39
              Caption = 'Autoriza'#231#227'o de Funcionamento Especial'
              DataBinding.DataField = 'HAUTFUNCESPECIAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 21
              Transparent = True
              Width = 241
            end
            object cxDBCheckBox39: TcxDBCheckBox
              Left = 520
              Top = 64
              Caption = 'CRF + Certid'#227'o'
              DataBinding.DataField = 'HCRF'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 22
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox40: TcxDBCheckBox
              Left = 520
              Top = 91
              Caption = 'Declara'#231#227'o de Inexist'#234'ncia'
              DataBinding.DataField = 'HDECINEXISTENCIA'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 23
              Transparent = True
              Width = 160
            end
            object cxDBCheckBox41: TcxDBCheckBox
              Left = 520
              Top = 116
              Caption = 'Declara'#231#227'o de Menor'
              DataBinding.DataField = 'HDECMENOR'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 24
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox42: TcxDBCheckBox
              Left = 520
              Top = 141
              Caption = 'Declara'#231#227'o de Micro Empresa'
              DataBinding.DataField = 'HDECMICRO'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 25
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox43: TcxDBCheckBox
              Left = 520
              Top = 166
              Caption = 'Atestado de Capacidade Financeira'
              DataBinding.DataField = 'HATESTADOCAPACIDADE'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 26
              Transparent = True
              Width = 203
            end
            object cxDBCheckBox44: TcxDBCheckBox
              Left = 520
              Top = 193
              Caption = 'Declara'#231#227'o Conforme Item'
              DataBinding.DataField = 'HDECITEM1'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 27
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox45: TcxDBCheckBox
              Left = 520
              Top = 218
              Caption = 'Declara'#231#227'o Conforme Item'
              DataBinding.DataField = 'HDECITEM2'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 28
              Transparent = True
              Width = 175
            end
            object cxDBCheckBox46: TcxDBCheckBox
              Left = 520
              Top = 243
              Caption = 'Declara'#231#227'o Conforme Item'
              DataBinding.DataField = 'HDECITEM3'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              TabOrder = 29
              Transparent = True
              Width = 175
            end
            object DBEdit27: TDBEdit
              Left = 729
              Top = 193
              Width = 234
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HNOMEITEM1'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 30
            end
            object DBEdit28: TDBEdit
              Left = 729
              Top = 218
              Width = 234
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HNOMEITEM2'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 31
            end
            object DBEdit29: TDBEdit
              Left = 729
              Top = 243
              Width = 234
              Height = 21
              CharCase = ecUpperCase
              DataField = 'HNOMEITEM3'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 32
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Duplicatas'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 970
            Height = 379
            Align = alClient
            Enabled = False
            TabOrder = 0
            object Panel10: TPanel
              Left = 1
              Top = 1
              Width = 137
              Height = 377
              Align = alLeft
              TabOrder = 0
              object BtGerar: TcxButton
                Left = 10
                Top = 19
                Width = 118
                Height = 33
                Caption = '&Gerar'
                Enabled = False
                OptionsImage.ImageIndex = 11
                OptionsImage.Images = FPrincipal.cxImageList1
                TabOrder = 0
              end
            end
            object GridDuplicatas: TDBGrid
              Left = 138
              Top = 1
              Width = 831
              Height = 377
              Align = alClient
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NUMDOC'
                  Title.Caption = 'N'#186'  Documento'
                  Width = 109
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMDUP'
                  Title.Caption = 'Duplicata'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENCIMENTO'
                  Title.Caption = 'Vencimento'
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PARCELA'
                  Title.Caption = 'Parcela'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALOR'
                  Title.Caption = 'Valor'
                  Width = 138
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SITUACAO'
                  Title.Caption = 'Sit.'
                  Width = 32
                  Visible = True
                end>
            end
          end
        end
        object cxTabSheet11: TcxTabSheet
          Caption = 'Resultado'
          ImageIndex = 8
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 970
            Height = 121
            Align = alTop
            Enabled = False
            TabOrder = 0
            object Label65: TLabel
              Left = 6
              Top = 8
              Width = 76
              Height = 13
              Caption = 'Resultado Geral'
              Transparent = True
            end
            object Label56: TLabel
              Left = 143
              Top = 8
              Width = 58
              Height = 13
              Caption = 'Valor Ganho'
              FocusControl = DBEdit33
              Transparent = True
            end
            object Label57: TLabel
              Left = 255
              Top = 8
              Width = 67
              Height = 13
              Caption = 'Comiss'#227'o (%)'
              FocusControl = DBEdit34
              Transparent = True
            end
            object Label58: TLabel
              Left = 6
              Top = 50
              Width = 100
              Height = 13
              Caption = 'Motivo / Observa'#231#227'o'
              FocusControl = DBMemo4
              Transparent = True
            end
            object Label59: TLabel
              Left = 436
              Top = 8
              Width = 116
              Height = 13
              Caption = 'Condi'#231#227'o de Pagamento'
              Transparent = True
            end
            object Label60: TLabel
              Left = 599
              Top = 8
              Width = 53
              Height = 13
              Caption = 'Localizador'
              Transparent = True
            end
            object Label61: TLabel
              Left = 327
              Top = 8
              Width = 72
              Height = 13
              Caption = 'Valor Comiss'#227'o'
              FocusControl = DBEdit35
              Transparent = True
            end
            object Label62: TLabel
              Left = 777
              Top = 8
              Width = 97
              Height = 13
              Caption = 'Data Inicio Contrato'
              FocusControl = DBEdit36
              Transparent = True
            end
            object DBComboBox4: TDBComboBox
              Left = 6
              Top = 23
              Width = 131
              Height = 21
              CharCase = ecUpperCase
              DataField = 'RESULTADOGERAL'
              DataSource = FDMGerLicitacao.DProcessoLic
              Items.Strings = (
                'VENCEDOR'
                'PERDEDOR'
                'ENCERRADO')
              TabOrder = 0
            end
            object DBEdit33: TDBEdit
              Left = 143
              Top = 23
              Width = 106
              Height = 21
              DataField = 'VALORRESULTADO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 1
              OnExit = DBEdit34Exit
            end
            object BtnAddResultado: TcxButton
              Left = 777
              Top = 65
              Width = 90
              Height = 48
              Caption = '&Adicionar'
              Enabled = False
              OptionsImage.ImageIndex = 9
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 6
              OnClick = BtnAddResultadoClick
            end
            object BtnRemResultado: TcxButton
              Left = 867
              Top = 65
              Width = 90
              Height = 48
              Caption = '&Remover'
              Enabled = False
              OptionsImage.ImageIndex = 8
              OptionsImage.Images = FPrincipal.cxImageList1
              TabOrder = 7
              OnClick = BtnRemResultadoClick
            end
            object DBEdit34: TDBEdit
              Left = 255
              Top = 23
              Width = 67
              Height = 21
              DataField = 'COMISSAO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 2
              OnExit = DBEdit34Exit
            end
            object DBMemo4: TDBMemo
              Left = 6
              Top = 65
              Width = 764
              Height = 48
              DataField = 'MOTIVO'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 5
              OnKeyPress = DBMemo4KeyPress
            end
            object CbLocalizador: TcxDBLookupComboBox
              Left = 599
              Top = 23
              DataBinding.DataField = 'CODLOCAL'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = FDM.DLocalizador
              Properties.PostPopupValueOnTab = True
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 4
              Width = 171
            end
            object EdCondPag: TcxDBLookupComboBox
              Left = 436
              Top = 23
              DataBinding.DataField = 'CONDPAG'
              DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = FDM.DConCondPag
              Properties.PostPopupValueOnTab = True
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 157
            end
            object DBEdit35: TDBEdit
              Left = 327
              Top = 23
              Width = 106
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'VLRCOMISSAO'
              DataSource = FDMGerLicitacao.DProcessoLic
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit36: TDBEdit
              Left = 777
              Top = 23
              Width = 106
              Height = 21
              DataField = 'DTINICIOCONT'
              DataSource = FDMGerLicitacao.DProcessoLic
              TabOrder = 9
              OnExit = DBEdit34Exit
            end
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 121
            Width = 970
            Height = 258
            Align = alClient
            DataSource = FDMGerLicitacao.DProcessoDup
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            OnExit = DBGrid2Exit
            OnKeyDown = DBGrid2KeyDown
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMDOC'
                Title.Caption = 'N'#186'  Documento'
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMDUP'
                Title.Caption = 'Duplicata'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCIMENTO'
                Title.Caption = 'Vencimento'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PARCELA'
                Title.Caption = 'Parcela'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Title.Caption = 'Sit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMECOND'
                ReadOnly = True
                Title.Caption = 'Condi'#231#227'o de Pagamento'
                Width = 193
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMELOCAL'
                ReadOnly = True
                Title.Caption = 'Localizador'
                Width = 178
                Visible = True
              end>
          end
        end
      end
      object PDados: TPanel
        Left = 0
        Top = 38
        Width = 977
        Height = 227
        Align = alTop
        Enabled = False
        TabOrder = 1
        object Label3: TLabel
          Left = 88
          Top = 8
          Width = 52
          Height = 13
          Caption = 'Dt Emiss'#227'o'
          FocusControl = DBEdit3
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 141
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
          FocusControl = DBMemo1
          Transparent = True
        end
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label48: TLabel
          Left = 504
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object Label22: TLabel
          Left = 819
          Top = 56
          Width = 41
          Height = 13
          Caption = 'Situa'#231#227'o'
          Transparent = True
        end
        object Label2: TLabel
          Left = 819
          Top = 8
          Width = 39
          Height = 13
          Caption = 'Contato'
          Transparent = True
        end
        object Label11: TLabel
          Left = 8
          Top = 56
          Width = 54
          Height = 13
          Caption = 'Modalidade'
          Transparent = True
        end
        object Label16: TLabel
          Left = 394
          Top = 101
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit8
          Transparent = True
        end
        object Label46: TLabel
          Left = 482
          Top = 101
          Width = 53
          Height = 13
          Caption = 'Valor Edital'
          FocusControl = DBEdit21
          Transparent = True
        end
        object Label4: TLabel
          Left = 153
          Top = 56
          Width = 42
          Height = 13
          Caption = 'Entidade'
          Transparent = True
        end
        object Label5: TLabel
          Left = 170
          Top = 8
          Width = 57
          Height = 13
          Caption = 'Dt Abertura'
          FocusControl = DBEdit2
          Transparent = True
        end
        object Label7: TLabel
          Left = 252
          Top = 8
          Width = 69
          Height = 13
          Caption = 'Hora Abertura'
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label8: TLabel
          Left = 8
          Top = 101
          Width = 28
          Height = 13
          Caption = 'Fonte'
          Transparent = True
        end
        object Label9: TLabel
          Left = 394
          Top = 56
          Width = 39
          Height = 13
          Caption = 'Contato'
          Transparent = True
        end
        object Label10: TLabel
          Left = 587
          Top = 101
          Width = 58
          Height = 13
          Caption = 'Republicado'
          Transparent = True
        end
        object Label6: TLabel
          Left = 683
          Top = 101
          Width = 46
          Height = 13
          Caption = 'Indica'#231#227'o'
          Transparent = True
        end
        object Label12: TLabel
          Left = 779
          Top = 101
          Width = 78
          Height = 13
          Caption = 'Recebido depois'
          Transparent = True
        end
        object Label14: TLabel
          Left = 875
          Top = 101
          Width = 24
          Height = 13
          Caption = 'Pago'
          Transparent = True
        end
        object Label15: TLabel
          Left = 153
          Top = 101
          Width = 88
          Height = 13
          Caption = 'Detalhes da Fonte'
          FocusControl = DBEdit4
          Transparent = True
        end
        object Label35: TLabel
          Left = 541
          Top = 56
          Width = 48
          Height = 13
          Caption = 'Prioridade'
          Transparent = True
        end
        object Label43: TLabel
          Left = 649
          Top = 56
          Width = 106
          Height = 13
          Caption = 'Empresa Faturamento'
          Transparent = True
        end
        object Label63: TLabel
          Left = 336
          Top = 8
          Width = 79
          Height = 13
          Caption = 'Dt Encerrament.'
          FocusControl = DBEdit37
          Transparent = True
        end
        object Label64: TLabel
          Left = 419
          Top = 8
          Width = 67
          Height = 13
          Caption = 'H. Encerramt.'
          FocusControl = DBEdit38
          Transparent = True
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 156
          Width = 957
          Height = 48
          DataField = 'OBSERVACAO'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 29
          OnKeyPress = DBMemo1KeyPress
        end
        object DBEdit3: TDBEdit
          Tag = 1
          Left = 88
          Top = 24
          Width = 78
          Height = 21
          DataField = 'DATA'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 24
          Width = 76
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'CODIGO'
          DataSource = FDMGerLicitacao.DProcessoLic
          ReadOnly = True
          TabOrder = 0
        end
        object BtConCli: TcxButton
          Left = 794
          Top = 24
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 7
          OnClick = BtConCliClick
        end
        object DBEdit20: TDBEdit
          Left = 819
          Top = 71
          Width = 146
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'SITUACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object EdCodigoCliente: TcxDBLookupComboBox
          Tag = 1
          Left = 504
          Top = 24
          DataBinding.DataField = 'CODCLI'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMCliente.DCliPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          OnExit = EdCodigoClienteExit
          Width = 289
        end
        object EdVendedor: TcxDBLookupComboBox
          Left = 8
          Top = 71
          DataBinding.DataField = 'CODMODALIDADE'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMGerLicitacao.DModalidadePesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          OnExit = EdVendedorExit
          Width = 120
        end
        object BtnContCli: TcxButton
          Left = 946
          Top = 24
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 9
          OnClick = BtnContCliClick
        end
        object BtnModalidade: TcxButton
          Left = 128
          Top = 71
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 12
          OnClick = BtnModalidadeClick
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 819
          Top = 24
          DataBinding.DataField = 'CODCONTATO'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'ITEM'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMCliente.DCliContPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          OnExit = cxDBLookupComboBox2Exit
          Width = 126
        end
        object DBEdit8: TDBEdit
          Left = 394
          Top = 115
          Width = 82
          Height = 21
          DataField = 'NUMERO'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 23
        end
        object DBEdit21: TDBEdit
          Left = 482
          Top = 115
          Width = 99
          Height = 21
          DataField = 'VALOREDITAL'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 24
        end
        object BtnEntidade: TcxButton
          Left = 369
          Top = 71
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 14
          OnClick = BtnEntidadeClick
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Tag = 1
          Left = 153
          Top = 71
          DataBinding.DataField = 'CODENTIDADE'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMGerLicitacao.DEntidadePesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          OnExit = cxDBLookupComboBox3Exit
          Width = 215
        end
        object DBEdit2: TDBEdit
          Left = 170
          Top = 24
          Width = 78
          Height = 21
          DataField = 'DATAABERTURA'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 252
          Top = 24
          Width = 78
          Height = 21
          DataField = 'HORAABERTURA'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 3
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 8
          Top = 115
          DataBinding.DataField = 'CODTIPOFONTE'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMGerLicitacao.DFonteLicPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 20
          OnExit = cxDBLookupComboBox4Exit
          Width = 120
        end
        object BtnFonte: TcxButton
          Left = 128
          Top = 115
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 21
          OnClick = BtnFonteClick
        end
        object BtnContato: TcxButton
          Left = 516
          Top = 71
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 16
          OnClick = BtnContatoClick
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 394
          Top = 71
          DataBinding.DataField = 'CODCONTATOENT'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'ITEM'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = FDMCliente.DCliContPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 15
          OnExit = cxDBLookupComboBox5Exit
          Width = 121
        end
        object DBEdit4: TDBEdit
          Left = 153
          Top = 115
          Width = 235
          Height = 21
          DataField = 'DETALHAMENTOFONTE'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 22
        end
        object BtnEmpFat: TcxButton
          Left = 794
          Top = 71
          Width = 19
          Height = 21
          Caption = '...'
          Enabled = False
          TabOrder = 19
          OnClick = BtnEmpFatClick
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Tag = 1
          Left = 649
          Top = 71
          DataBinding.DataField = 'CODEMPFAT'
          DataBinding.DataSource = FDMGerLicitacao.DProcessoLic
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOMEFANTA'
            end>
          Properties.ListSource = FDM.DEmpresaPesq
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 18
          OnExit = cxDBLookupComboBox1Exit
          Width = 144
        end
        object DBComboBox5: TDBComboBox
          Left = 587
          Top = 115
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'REPUBLICADO'
          DataSource = FDMGerLicitacao.DProcessoLic
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 25
        end
        object DBComboBox1: TDBComboBox
          Left = 683
          Top = 115
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INDICACAO'
          DataSource = FDMGerLicitacao.DProcessoLic
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 26
        end
        object DBComboBox2: TDBComboBox
          Left = 779
          Top = 115
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RECEBDEPOIS'
          DataSource = FDMGerLicitacao.DProcessoLic
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 27
        end
        object DBComboBox3: TDBComboBox
          Left = 875
          Top = 115
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAGO'
          DataSource = FDMGerLicitacao.DProcessoLic
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 28
        end
        object DBComboBox8: TDBComboBox
          Left = 541
          Top = 71
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRIORIDADE'
          DataSource = FDMGerLicitacao.DProcessoLic
          Items.Strings = (
            'BAIXA'
            'NORMAL'
            'ALTA')
          TabOrder = 17
        end
        object DBEdit37: TDBEdit
          Left = 336
          Top = 24
          Width = 78
          Height = 21
          DataField = 'DTENCERRAMENTO'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 4
        end
        object DBEdit38: TDBEdit
          Left = 419
          Top = 24
          Width = 78
          Height = 21
          DataField = 'HORAENCERRAMENTO'
          DataSource = FDMGerLicitacao.DProcessoLic
          TabOrder = 5
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 38
        Align = alTop
        TabOrder = 2
        object BtInsere: TcxButton
          Left = 2
          Top = 2
          Width = 108
          Height = 33
          Caption = '&Inserir'
          OptionsImage.ImageIndex = 9
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 0
          OnClick = BtInsereClick
        end
        object cxButton3: TcxButton
          Left = 866
          Top = 2
          Width = 108
          Height = 33
          Caption = '&Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object BtConfirma: TcxButton
          Left = 758
          Top = 2
          Width = 108
          Height = 33
          Caption = 'C&onfirmar'
          Enabled = False
          OptionsImage.ImageIndex = 12
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = BtConfirmaClick
        end
        object BtCancela: TcxButton
          Left = 650
          Top = 2
          Width = 108
          Height = 33
          Caption = '&Cancelar'
          Enabled = False
          OptionsImage.ImageIndex = 8
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = BtCancelaClick
        end
        object BtEdita: TcxButton
          Left = 110
          Top = 2
          Width = 108
          Height = 33
          Caption = '&Editar'
          OptionsImage.ImageIndex = 14
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 4
          OnClick = BtEditaClick
        end
        object BtExcluir: TcxButton
          Left = 542
          Top = 2
          Width = 108
          Height = 33
          Caption = '&Excluir'
          OptionsImage.ImageIndex = 15
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
          OnClick = BtExcluirClick
        end
        object BtnEmail: TcxButton
          Left = 218
          Top = 2
          Width = 108
          Height = 33
          Caption = 'E-mail'
          OptionsImage.ImageIndex = 23
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 6
          OnClick = BtnEmailClick
        end
        object BtnCliente: TcxButton
          Left = 326
          Top = 2
          Width = 108
          Height = 33
          Caption = 'Cliente'
          OptionsImage.ImageIndex = 22
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 7
          OnClick = BtnClienteClick
        end
        object cxButton21: TcxButton
          Left = 434
          Top = 2
          Width = 108
          Height = 33
          Caption = 'Proposta'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 8
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 977
        Height = 59
        Align = alTop
        TabOrder = 0
        object Label49: TLabel
          Left = 8
          Top = 10
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
          Transparent = True
        end
        object Label50: TLabel
          Left = 280
          Top = 10
          Width = 53
          Height = 13
          Caption = 'Data Inicial'
          Transparent = True
        end
        object Label51: TLabel
          Left = 408
          Top = 10
          Width = 48
          Height = 13
          Caption = 'Data Final'
          Transparent = True
        end
        object Label52: TLabel
          Left = 120
          Top = 10
          Width = 33
          Height = 13
          Caption = 'Cliente'
          Transparent = True
        end
        object Label36: TLabel
          Left = 537
          Top = 10
          Width = 76
          Height = 13
          Caption = 'Resultado Geral'
          Transparent = True
        end
        object cxButton5: TcxButton
          Left = 868
          Top = 17
          Width = 102
          Height = 33
          Caption = 'Fechar'
          OptionsImage.ImageIndex = 4
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 2
          OnClick = cxButton5Click
        end
        object cxButton6: TcxButton
          Left = 766
          Top = 17
          Width = 102
          Height = 33
          Caption = 'Relat'#243'rio'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 5
        end
        object EdCodCli: TEdit
          Left = 8
          Top = 26
          Width = 79
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = EdCodCliExit
        end
        object cxButton8: TcxButton
          Left = 666
          Top = 17
          Width = 100
          Height = 33
          Caption = 'Consultar'
          OptionsImage.ImageIndex = 6
          OptionsImage.Images = FPrincipal.cxImageList1
          TabOrder = 3
          OnClick = cxButton8Click
        end
        object EdNomeCli: TEdit
          Left = 120
          Top = 26
          Width = 153
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object cxButton9: TcxButton
          Left = 87
          Top = 26
          Width = 29
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = cxButton9Click
        end
        object DtInicial: TcxDateEdit
          Left = 279
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 118
        end
        object DtFinal: TcxDateEdit
          Left = 408
          Top = 26
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 118
        end
        object CbSituacao: TComboBox
          Left = 537
          Top = 26
          Width = 118
          Height = 21
          TabOrder = 8
          Text = 'TODOS'
          Items.Strings = (
            'VENCEDOR'
            'PERDEDOR'
            'ENCERRADO')
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 59
        Width = 977
        Height = 614
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnCellClick = cxGrid1DBTableView1CellClick
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = FDMGerLicitacao.DConProcessoLic
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
            Width = 47
          end
          object cxGrid1DBTableView1NOMEEMPFAT: TcxGridDBColumn
            Caption = 'Empresa Faturamento'
            DataBinding.FieldName = 'NOMEEMPFAT'
            Width = 116
          end
          object cxGrid1DBTableView1NOMECLI: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOMECLI'
            Width = 200
          end
          object cxGrid1DBTableView1NOMEENTIDADE: TcxGridDBColumn
            Caption = 'Entidade'
            DataBinding.FieldName = 'NOMEENTIDADE'
            Width = 200
          end
          object cxGrid1DBTableView1DATA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATA'
          end
          object cxGrid1DBTableView1DATAABERTURA: TcxGridDBColumn
            Caption = 'Dt. Abertura'
            DataBinding.FieldName = 'DATAABERTURA'
          end
          object cxGrid1DBTableView1HORAABERTURA: TcxGridDBColumn
            Caption = 'Hora Abertura'
            DataBinding.FieldName = 'HORAABERTURA'
          end
          object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
            Caption = 'N'#250'mero'
            DataBinding.FieldName = 'NUMERO'
            Width = 65
          end
          object cxGrid1DBTableView1VALOREDITAL: TcxGridDBColumn
            Caption = 'Valor Edital'
            DataBinding.FieldName = 'VALOREDITAL'
          end
          object cxGrid1DBTableView1RESULTADOGERAL: TcxGridDBColumn
            Caption = 'Resultado Geral'
            DataBinding.FieldName = 'RESULTADOGERAL'
            Width = 128
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Dt. Encerramento'
            DataBinding.FieldName = 'DTENCERRAMENTO'
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'H. Encerramento'
            DataBinding.FieldName = 'HORAENCERRAMENTO'
          end
          object cxGrid1DBTableView1SITUACAO: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'SITUACAO'
            Width = 126
          end
          object cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn
            Caption = 'Prioridade'
            DataBinding.FieldName = 'PRIORIDADE'
            Width = 137
          end
          object cxGrid1DBTableView1VALORMAX: TcxGridDBColumn
            Caption = 'Valor Max.'
            DataBinding.FieldName = 'VALORMAX'
          end
          object cxGrid1DBTableView1NOMEMODALIDADE: TcxGridDBColumn
            Caption = 'Modalidade'
            DataBinding.FieldName = 'NOMEMODALIDADE'
            Width = 133
          end
          object cxGrid1DBTableView1NOMETIPOFONTE: TcxGridDBColumn
            Caption = 'Fonte'
            DataBinding.FieldName = 'NOMETIPOFONTE'
            Width = 117
          end
          object cxGrid1DBTableView1VALORPROPOSTA: TcxGridDBColumn
            Caption = 'Valor Proposta'
            DataBinding.FieldName = 'VALORPROPOSTA'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
end
