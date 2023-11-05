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
        'CC\bin\Database\ProtoSystem.s3db'
      'DriverID=SQLite')
    Connected = True
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
    Left = 752
    Top = 48
  end
  object SQL_vendas: TFDQuery
    Connection = conexao
    Left = 752
    Top = 96
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
    Left = 663
    Top = 48
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
  object SQL_ImpressaoPedido: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      
        'select * from VENDA_PEDIDOS PE inner join VENDA_PRODUTO PO ON (P' +
        'O.ID_PEDIDO = PE.ID) WHERE PE.ID =1')
    Left = 768
    Top = 368
  end
  object SQL_empresa: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from EMPRESA')
    Left = 664
    Top = 368
  end
  object SQL_Dashboard_Estoque: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select descricao, estoque from produto')
    Left = 752
  end
end
