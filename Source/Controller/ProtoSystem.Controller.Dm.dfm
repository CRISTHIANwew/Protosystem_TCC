object DM: TDM
  OnCreate = DataModuleCreate
  Height = 508
  Width = 883
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 58
    Top = 109
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 58
    Top = 58
  end
  object conexao: TFDConnection
    Params.Strings = (
      'LockingMode=Normal'
      
        'Database=C:\Users\ECO-03\Documents\PROJETOS DELPHI\Protosystem_T' +
        'CC\Database\ProtoSystem.s3db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 58
    Top = 6
  end
  object FDQuery: TFDQuery
    Connection = conexao
    Left = 56
    Top = 166
  end
  object Tb_venda: TFDTable
    Connection = conexao
    Left = 824
    Top = 16
  end
  object SQL_vendas: TFDQuery
    Connection = conexao
    Left = 824
    Top = 160
  end
end
