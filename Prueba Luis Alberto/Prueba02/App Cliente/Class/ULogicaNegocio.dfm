object LogicaNegocio: TLogicaNegocio
  OldCreateOrder = False
  Height = 257
  Width = 493
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
    RemoteServer = DCOMConnection
    AfterPost = TClientesAfterPost
    Left = 56
    Top = 104
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
  object TLstClientes: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DSPLstClientes'
    RemoteServer = DCOMConnection
    AfterDelete = TLstClientesAfterDelete
    OnReconcileError = TLstClientesReconcileError
    Left = 56
    Top = 168
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
    RemoteServer = DCOMConnection
    AfterPost = TProductosAfterPost
    Left = 152
    Top = 104
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
  object TLstProductos: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DSPLstProductos'
    RemoteServer = DCOMConnection
    AfterDelete = TLstProductosAfterDelete
    OnReconcileError = TLstProductosReconcileError
    Left = 152
    Top = 168
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
    RemoteServer = DCOMConnection
    AfterPost = TProductosAfterPost
    Left = 248
    Top = 104
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
    RemoteServer = DCOMConnection
    AfterPost = TProductosAfterPost
    Left = 248
    Top = 168
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
    RemoteServer = DCOMConnection
    AfterPost = TProductosAfterPost
    Left = 360
    Top = 105
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
    RemoteServer = DCOMConnection
    AfterPost = TProductosAfterPost
    Left = 360
    Top = 169
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
  object DCOMConnection: TDCOMConnection
    ServerGUID = '{48EDBBEA-BD52-4259-84FA-584DB92E606C}'
    ServerName = 'ServidorDatos.ServidorDCOM'
    Left = 56
    Top = 40
  end
end
