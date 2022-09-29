object LogicaNegocio: TLogicaNegocio
  OldCreateOrder = False
  Height = 371
  Width = 566
  object DSPClientes: TDataSetProvider
    DataSet = AccesoDatos.Clientes
    Left = 32
    Top = 24
  end
  object TClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'DOCU'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPClientes'
    AfterPost = TClientesAfterPost
    Left = 32
    Top = 80
    object TClientesDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Required = True
    end
    object TClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 60
    end
    object TClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 250
    end
  end
  object DSPLstClientes: TDataSetProvider
    DataSet = AccesoDatos.LstClientes
    Left = 32
    Top = 136
  end
  object TLstClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DSPLstClientes'
    AfterDelete = TLstClientesAfterDelete
    OnReconcileError = TLstClientesReconcileError
    Left = 32
    Top = 192
    object TLstClientesDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Required = True
    end
    object TLstClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 60
    end
    object TLstClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 250
    end
  end
  object DSPProductos: TDataSetProvider
    DataSet = AccesoDatos.Productos
    Left = 128
    Top = 24
  end
  object TProductos: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPProductos'
    AfterPost = TProductosAfterPost
    Left = 128
    Top = 80
    object TProductosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object TProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 150
    end
    object TProductosVALOR: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '#,###.#0'
    end
  end
  object DSPLstProductos: TDataSetProvider
    DataSet = AccesoDatos.LstProductos
    Left = 128
    Top = 136
  end
  object TLstProductos: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DSPLstProductos'
    AfterDelete = TLstProductosAfterDelete
    OnReconcileError = TLstProductosReconcileError
    Left = 128
    Top = 192
    object TLstProductosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object TLstProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 150
    end
    object TLstProductosVALOR: TSingleField
      FieldName = 'VALOR'
      DisplayFormat = '#,###.#0'
    end
  end
  object DSPCabezaFactura: TDataSetProvider
    DataSet = AccesoDatos.CabezaFactura
    Left = 224
    Top = 24
  end
  object TCabezaFactura: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_FACT'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCabezaFactura'
    AfterPost = TProductosAfterPost
    Left = 224
    Top = 80
    object TCabezaFacturaNUM_FACT: TIntegerField
      FieldName = 'NUM_FACT'
      Required = True
    end
    object TCabezaFacturaFECHA: TStringField
      FieldName = 'FECHA'
    end
    object TCabezaFacturaDOC_CLIENTE: TIntegerField
      FieldName = 'DOC_CLIENTE'
    end
    object TCabezaFacturaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 60
    end
    object TCabezaFacturaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      ReadOnly = True
      Size = 250
    end
    object TCabezaFacturaTOTAL: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#,###.#0'
    end
  end
  object DSPLstCabezaFactura: TDataSetProvider
    DataSet = AccesoDatos.LstCabezaFactura
    Left = 224
    Top = 136
  end
  object TLstCabezaFactura: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPLstCabezaFactura'
    AfterPost = TProductosAfterPost
    Left = 224
    Top = 192
    object TLstCabezaFacturaNUM_FACT: TIntegerField
      FieldName = 'NUM_FACT'
      Required = True
    end
    object TLstCabezaFacturaFECHA: TStringField
      FieldName = 'FECHA'
    end
    object TLstCabezaFacturaDOC_CLIENTE: TIntegerField
      FieldName = 'DOC_CLIENTE'
    end
    object TLstCabezaFacturaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 60
    end
    object TLstCabezaFacturaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      ReadOnly = True
      Size = 250
    end
    object TLstCabezaFacturaTOTAL: TSingleField
      FieldName = 'TOTAL'
      DisplayFormat = '#,###.#0'
    end
  end
  object DSPParametros: TDataSetProvider
    DataSet = AccesoDatos.Parametros
    Left = 336
    Top = 25
  end
  object TParametros: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPParametros'
    AfterPost = TProductosAfterPost
    Left = 336
    Top = 81
    object TParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TParametrosTAG: TStringField
      FieldName = 'TAG'
      Size = 30
    end
    object TParametrosVALUE: TIntegerField
      FieldName = 'VALUE'
    end
  end
  object DSPDetalleFactura: TDataSetProvider
    DataSet = AccesoDatos.DetalleFactura
    Left = 336
    Top = 137
  end
  object TDetalleFactura: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUM_FACT'
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_FACT'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'DSPDetalleFactura'
    AfterPost = TProductosAfterPost
    Left = 336
    Top = 193
    object TDetalleFacturaNUM_FACT: TIntegerField
      FieldName = 'NUM_FACT'
      Required = True
    end
    object TDetalleFacturaLINEA: TIntegerField
      FieldName = 'LINEA'
      Required = True
    end
    object TDetalleFacturaCOD_PRODUCTO: TIntegerField
      FieldName = 'COD_PRODUCTO'
    end
    object TDetalleFacturaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      ReadOnly = True
      Size = 150
    end
    object TDetalleFacturaVALOR: TSingleField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '#,###.#0'
    end
    object TDetalleFacturaVALOR_UNIDAD: TSingleField
      FieldName = 'VALOR_UNIDAD'
      DisplayFormat = '#,###.#0'
    end
    object TDetalleFacturaCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
    end
    object TDetalleFacturaVALOR_TOTAL: TSingleField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '#,###.#0'
    end
  end
end
