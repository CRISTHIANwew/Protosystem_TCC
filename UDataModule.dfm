object DataModule1: TDataModule1
  Height = 341
  Width = 529
  PixelsPerInch = 120
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 224
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 128
    Top = 224
  end
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\CRISTHIAN\Documents\Projetos\Protosystem_TCC\d' +
        'ados.s3db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 96
  end
  object Query: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 312
    Top = 96
  end
end
