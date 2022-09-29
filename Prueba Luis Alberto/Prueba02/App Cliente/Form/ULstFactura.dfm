object FLstFacturas: TFLstFacturas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Historial de Facturas'
  ClientHeight = 506
  ClientWidth = 838
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 45
    Width = 217
    Height = 25
    Caption = 'Historial de Facturas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 0
  end
  object ListFacturasGrid: TDBGrid
    Left = 8
    Top = 87
    Width = 804
    Height = 322
    DataSource = DSLstFacturas
    DrawingStyle = gdsGradient
    FixedColor = clWhite
    GradientEndColor = 4616993
    GradientStartColor = 4616993
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Dubai'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -12
    TitleFont.Name = 'Dubai'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = ListFacturasGridDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_FACT'
        Title.Caption = 'FACTURA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Width = 100
        Visible = True
      end>
  end
  object BVisualizar: TButton
    Left = 656
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 2
    OnClick = BVisualizarClick
  end
  object BSalir: TButton
    Left = 737
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 3
    OnClick = BSalirClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 473
    Width = 838
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 4
  end
  object DSLstFacturas: TDataSource
    DataSet = LogicaNegocio.TLstCabezaFactura
    Left = 384
    Top = 32
  end
end
