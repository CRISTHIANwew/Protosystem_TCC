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
  object cdsVendaProdutos: TClientDataSet
    PersistDataPacket.Data = {
      810000009619E0BD010000001800000005000000000003000000810002494404
      000100000000000944657363726963616F010049000000010005574944544802
      00020014000E56616C6F7220556E69746172696F08000400000000000A517561
      6E74696461646504000100000000000B56616C6F7220546F74616C0800040000
      0000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor Unitario'
        DataType = ftFloat
      end
      item
        Name = 'Quantidade'
        DataType = ftInteger
      end
      item
        Name = 'Valor Total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 799
    Top = 98
    object cdsVendaProdutosIDPEDIDO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'IDPEDIDO'
      Calculated = True
    end
    object cdsVendaProdutosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsVendaProdutosDescricao: TStringField
      FieldName = 'Descricao'
    end
    object cdsVendaProdutosValorUnitario: TFloatField
      FieldName = 'Valor Unitario'
    end
    object cdsVendaProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object cdsVendaProdutosValorTotal: TFloatField
      FieldName = 'Valor Total'
    end
  end
end
