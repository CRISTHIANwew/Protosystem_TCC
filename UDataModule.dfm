object DM: TDM
  Height = 363
  Width = 602
  PixelsPerInch = 120
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 136
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 72
    Top = 72
  end
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\ECO-03\Documents\PROJETOS DELPHI\Protosystem_T' +
        'CC\dados.s3db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object QueryPRODUTO: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 424
  end
  object QueryCLIENTE: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 424
    Top = 128
  end
end
