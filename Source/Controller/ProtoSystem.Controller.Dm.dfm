object DM: TDM
  OnCreate = DataModuleCreate
  Height = 556
  Width = 525
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
        'CC\Source\Database\dados.s3db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object QueryPRODUTO: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produto')
    Left = 424
  end
  object QueryCLIENTE: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 424
    Top = 128
  end
  object QueryFORNECEDOR: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from fornecedor')
    Left = 424
    Top = 64
  end
  object FDQuery: TFDQuery
    Connection = conexao
    Left = 304
    Top = 16
  end
end
