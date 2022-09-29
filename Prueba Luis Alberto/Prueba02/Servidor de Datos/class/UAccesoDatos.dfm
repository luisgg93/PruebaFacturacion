object AccesoDatos: TAccesoDatos
  OldCreateOrder = False
  Height = 244
  Width = 590
  object Connection: TFDConnection
    Params.Strings = (
      'Server=b9lvmiftfmaxjeratdce-mysql.services.clever-cloud.com'
      'Database=b9lvmiftfmaxjeratdce'
      'User_Name=utqaggvdcuya9f0l'
      'Password=SVsHKj8HPtsqMFuiTHRU'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object Clientes: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      'WHERE DOCUMENTO =:DOCU')
    Left = 32
    Top = 88
    ParamData = <
      item
        Name = 'DOCU'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object LstClientes: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      '')
    Left = 32
    Top = 144
  end
  object Productos: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT * FROM PRODUCTOS'
      'WHERE CODIGO =:COD'
      '')
    Left = 104
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object LstProductos: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT * FROM PRODUCTOS')
    Left = 104
    Top = 144
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 104
    Top = 24
  end
  object CabezaFactura: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      
        'SELECT CF.NUM_FACT, CF.FECHA, CF.DOC_CLIENTE, C.NOMBRE, C.DIRECC' +
        'ION, CF.TOTAL '
      'FROM CABEZA_FACTURA AS CF '
      'INNER JOIN CLIENTES AS C'
      'ON CF.DOC_CLIENTE = C.DOCUMENTO'
      'WHERE CF.NUM_FACT =:NUM_FACT')
    Left = 200
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'NUM_FACT'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object LstCabezaFactura: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      
        'SELECT CF.NUM_FACT, CF.FECHA, CF.DOC_CLIENTE, C.NOMBRE, C.DIRECC' +
        'ION, CF.TOTAL '
      'FROM CABEZA_FACTURA AS CF '
      'INNER JOIN CLIENTES AS C'
      'ON CF.DOC_CLIENTE = C.DOCUMENTO'
      'ORDER BY NUM_FACT DESC'
      '')
    Left = 200
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object DetalleFactura: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT '
      #9'DF.NUM_FACT, '
      #9'DF.LINEA, '
      #9'DF.COD_PRODUCTO, '
      #9'P.DESCRIPCION, '
      #9'P.VALOR, '
      #9'DF.VALOR_UNIDAD, '
      #9'DF.CANTIDAD, '
      #9'DF.VALOR_TOTAL '
      'FROM DETALLE_FACTURA AS DF'
      'INNER JOIN PRODUCTOS AS P'
      'ON DF.COD_PRODUCTO = P.CODIGO'
      'WHERE DF.NUM_FACT =:NUM_FACT')
    Left = 296
    Top = 88
    ParamData = <
      item
        Name = 'NUM_FACT'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object Parametros: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'SELECT * FROM PARAMETROS')
    Left = 296
    Top = 144
  end
  object DB_Driver: TFDPhysMySQLDriverLink
    Left = 296
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 466
    Top = 24
  end
end
