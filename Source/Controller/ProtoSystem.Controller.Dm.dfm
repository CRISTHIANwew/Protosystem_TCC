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
      'LockingMode=Normal'
      
        'Database=C:\Users\CRISTHIAN\Documents\Projetos\Protosystem_TCC\b' +
        'in\Database\ProtoSystem.s3db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object FDQuery: TFDQuery
    Connection = conexao
    Left = 240
    Top = 8
  end
end
