object DM: TDM
  OnCreate = DataModuleCreate
  Height = 508
  Width = 883
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 66
    Top = 109
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 66
    Top = 58
  end
  object conexao: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\ECO-03\Documents\PROJETOS DELPHI\Protosystem_T' +
        'CC\Database\ProtoSystem.s3db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 66
    Top = 6
  end
  object FDQuery: TFDQuery
    Connection = conexao
    Left = 67
    Top = 158
  end
  object Tb_venda: TFDTable
    Connection = conexao
    Left = 792
    Top = 88
  end
  object SQL_vendas: TFDQuery
    Connection = conexao
    Left = 792
    Top = 136
  end
end
