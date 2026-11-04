object FConUsuario: TFConUsuario
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consulta de Usu'#225'rios'
  ClientHeight = 456
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 562
    Height = 422
    Align = alClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 472
        Visible = True
      end>
  end
  object PConsulta: TPanel
    Left = 0
    Top = 422
    Width = 562
    Height = 34
    Align = alBottom
    TabOrder = 1
    object cxButton4: TcxButton
      Left = 354
      Top = 4
      Width = 102
      Height = 27
      Caption = 'OK'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 0
      OnClick = cxButton4Click
    end
    object cxButton5: TcxButton
      Left = 456
      Top = 4
      Width = 102
      Height = 27
      Caption = 'Cancelar'
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = FPrincipal.cxImageList1
      TabOrder = 1
      OnClick = cxButton5Click
    end
  end
end
