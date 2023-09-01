object DM: TDM
  Height = 246
  Width = 518
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
      
        'Database=C:\Users\CRISTHIAN\Documents\Projetos\Protosystem_TCC\S' +
        'ource\Database\dados.s3db'
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
      'select * from produto')
    Left = 424
  end
  object QueryCLIENTE: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 424
    Top = 160
  end
end
