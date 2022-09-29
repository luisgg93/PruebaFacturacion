object FFacturacion: TFFacturacion
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Facturacion'
  ClientHeight = 586
  ClientWidth = 703
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
  object Label5: TLabel
    Left = 8
    Top = 48
    Width = 123
    Height = 25
    Caption = 'Facturaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelTotal: TLabel
    Left = 8
    Top = 479
    Width = 112
    Height = 16
    Caption = 'TOTAL A PAGAR: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 79
    Width = 665
    Height = 170
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 89
      Height = 19
      Caption = 'N Factura: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelNumFactura: TLabel
      Left = 111
      Top = 24
      Width = 122
      Height = 19
      Caption = 'LabelNumFactura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 78
      Height = 16
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 143
      Top = 52
      Width = 125
      Height = 16
      Caption = 'Nombre del Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 100
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
    object DBEditDocCliente: TDBEdit
      Left = 16
      Top = 74
      Width = 121
      Height = 24
      DataField = 'DOC_CLIENTE'
      DataSource = DSCabezaFactura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DBEditDocClienteChange
    end
    object DBEditNombreCliente: TDBEdit
      Left = 143
      Top = 74
      Width = 506
      Height = 24
      DataField = 'NOMBRE'
      DataSource = DSCliente
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBDireccionCliente: TDBEdit
      Left = 16
      Top = 122
      Width = 633
      Height = 24
      DataField = 'DIRECCION'
      DataSource = DSCliente
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBFechaFacturacion: TDBEdit
      Left = 511
      Top = 24
      Width = 138
      Height = 24
      DataField = 'FECHA'
      DataSource = DSCabezaFactura
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 255
    Width = 665
    Height = 210
    TabOrder = 1
    object ListadoProductosGrid: TDBGrid
      Left = 16
      Top = 17
      Width = 633
      Height = 176
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSDetalleFactura
      DrawingStyle = gdsGradient
      GradientEndColor = 4616993
      GradientStartColor = 4616993
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Dubai'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -12
      TitleFont.Name = 'Dubai'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = ListadoProductosGridDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODGIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          ReadOnly = True
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNI'
          ReadOnly = True
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Caption = 'CANT'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          ReadOnly = True
          Title.Caption = 'TOTAL'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 553
    Width = 703
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 584
  end
  object Button1: TButton
    Left = 517
    Top = 503
    Width = 75
    Height = 25
    Caption = 'Facturar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 598
    Top = 503
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DSCabezaFactura: TDataSource
    DataSet = LogicaNegocio.TCabezaFactura
    Left = 280
    Top = 8
  end
  object DSCliente: TDataSource
    DataSet = LogicaNegocio.TClientes
    Left = 352
    Top = 8
  end
  object DSDetalleFactura: TDataSource
    DataSet = MemDetalleFactura
    Left = 424
    Top = 8
  end
  object MemDetalleFactura: TFDMemTable
    Active = True
    AfterPost = MemDetalleFacturaAfterPost
    FieldDefs = <
      item
        Name = 'CODGIO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'VALOR_UNI'
        DataType = ftFloat
      end
      item
        Name = 'CANTIDAD'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftFloat
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 520
    Top = 8
    object MemDetalleFacturaCODGIO: TIntegerField
      FieldName = 'CODGIO'
      OnValidate = MemDetalleFacturaCODGIOValidate
    end
    object MemDetalleFacturaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 250
    end
    object MemDetalleFacturaVALOR_UNI: TFloatField
      FieldName = 'VALOR_UNI'
      DisplayFormat = '#,###.00'
    end
    object MemDetalleFacturaCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      OnChange = MemDetalleFacturaCANTIDADChange
    end
    object MemDetalleFacturaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#,###.00'
    end
  end
end
