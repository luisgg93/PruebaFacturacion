object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Principal'
  ClientHeight = 408
  ClientWidth = 606
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 336
    Width = 385
    Height = 19
    Caption = 'Prueba 2era Parte (Aplicando protocolo DCOM)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 160
    Top = 88
    Width = 113
    Height = 81
    Caption = 'Clientes'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 311
    Top = 88
    Width = 113
    Height = 81
    Caption = 'Productos'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 311
    Top = 199
    Width = 113
    Height = 81
    Caption = 'Facturaci'#243'n'
    Enabled = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 160
    Top = 199
    Width = 113
    Height = 81
    Caption = 'Historial de Factura'
    Enabled = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 375
    Width = 606
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 5
  end
end
