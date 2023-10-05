object DM: TDM
  OnCreate = DataModuleCreate
  Height = 635
  Width = 1104
  PixelsPerInch = 120
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 83
    Top = 136
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 83
    Top = 73
  end
  object conexao: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\ECO-03\Documents\PROJETOS DELPHI\Protosystem_T' +
        'CC\Database\ProtoSystem.s3db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 83
    Top = 8
  end
  object FDQuery: TFDQuery
    Connection = conexao
    Left = 84
    Top = 198
  end
  object Tb_venda: TFDTable
    Connection = conexao
    Left = 990
    Top = 110
  end
  object SQL_vendas: TFDQuery
    Connection = conexao
    Left = 990
    Top = 170
  end
end
