object FCliente: TFCliente
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cliente'
  ClientHeight = 471
  ClientWidth = 404
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
    Left = 10
    Top = 109
    Width = 101
    Height = 16
    Caption = 'N'#186' Documento: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 157
    Width = 54
    Height = 16
    Caption = 'Nombre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 205
    Width = 64
    Height = 16
    Caption = 'Direcci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 56
    Width = 72
    Height = 25
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBTextDocumento: TDBEdit
    Left = 117
    Top = 106
    Width = 158
    Height = 24
    DataField = 'DOCUMENTO'
    DataSource = DSCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBTextNombre: TDBEdit
    Left = 117
    Top = 154
    Width = 254
    Height = 24
    CharCase = ecUpperCase
    DataField = 'NOMBRE'
    DataSource = DSCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBMemoDireccion: TDBMemo
    Left = 117
    Top = 204
    Width = 254
    Height = 143
    DataField = 'DIRECCION'
    DataSource = DSCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 202
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 404
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 404
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 6
  end
  object DSCliente: TDataSource
    DataSet = LogicaNegocio.TClientes
    Left = 306
    Top = 98
  end
end
