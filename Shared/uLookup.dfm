object Lookup: TLookup
  OldCreateOrder = False
  Height = 328
  Width = 449
  object FdQryEstados: TFDQuery
    Connection = DmDados.FdCon
    Transaction = FdTransaction
    UpdateTransaction = FdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 104
    Top = 24
  end
  object DsEstados: TDataSource
    DataSet = FdQryEstados
    Left = 96
    Top = 128
  end
  object FdTransaction: TFDTransaction
    Connection = DmDados.FdCon
    Left = 40
    Top = 80
  end
  object FdQryCidades: TFDQuery
    Connection = DmDados.FdCon
    Transaction = FdTransaction
    UpdateTransaction = FdTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 48
    Top = 24
  end
  object DsCidades: TDataSource
    DataSet = FdQryCidades
    Left = 40
    Top = 128
  end
  object FDQuery1: TFDQuery
    Connection = DmDados.FdCon
    Transaction = FDTransaction2
    UpdateTransaction = FDTransaction2
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 241
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 241
    Top = 192
  end
  object FDTransaction2: TFDTransaction
    Connection = DmDados.FdCon
    Left = 241
    Top = 144
  end
  object FDQuery2: TFDQuery
    Connection = DmDados.FdCon
    Transaction = FDTransaction2
    UpdateTransaction = FDTransaction2
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 305
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 297
    Top = 200
  end
end
