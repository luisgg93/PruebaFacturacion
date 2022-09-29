object FLstClientes: TFLstClientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lista de Clientes'
  ClientHeight = 493
  ClientWidth = 830
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
    Width = 171
    Height = 25
    Caption = 'Lista de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BNuevo: TButton
    Left = 494
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 0
    OnClick = BNuevoClick
  end
  object BModificar: TButton
    Left = 575
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 1
    OnClick = BModificarClick
  end
  object BEliminar: TButton
    Left = 656
    Top = 415
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 2
    OnClick = BEliminarClick
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 460
    Width = 830
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = 4616993
    ParentBackground = False
    TabOrder = 5
  end
  object ListClientesGrid: TDBGrid
    Left = 8
    Top = 87
    Width = 804
    Height = 322
    DataSource = DSLstClientes
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
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -12
    TitleFont.Name = 'Dubai'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = ListClientesGridDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIRECCION'
        Width = 400
        Visible = True
      end>
  end
  object DSLstClientes: TDataSource
    DataSet = LogicaNegocio.TLstClientes
    Left = 592
    Top = 48
  end
end
