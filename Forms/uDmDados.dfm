object DmDados: TDmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 264
  Width = 615
  object FdCon: TFDConnection
    Params.Strings = (
      'Database=C:\projetos ucrso udemy\Banco de dados\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=192.168.20.123'
      'Port=3051'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 40
  end
end