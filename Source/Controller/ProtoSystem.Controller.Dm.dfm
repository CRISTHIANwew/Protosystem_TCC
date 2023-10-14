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
    Left = 792
    Top = 88
  end
  object SQL_vendas: TFDQuery
    Connection = conexao
    Left = 792
    Top = 136
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
    Left = 639
    Top = 78
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
    Left = 792
    Top = 192
    object SQL_ImpressaoPedidoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_ImpressaoPedidoTOTAL_PROD: TFloatField
      FieldName = 'TOTAL_PROD'
      Origin = 'TOTAL_PROD'
    end
    object SQL_ImpressaoPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object SQL_ImpressaoPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_ImpressaoPedidoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 32767
    end
    object SQL_ImpressaoPedidoRG_IE: TStringField
      FieldName = 'RG_IE'
      Origin = 'RG_IE'
      Size = 32767
    end
    object SQL_ImpressaoPedidoID_PAG: TIntegerField
      FieldName = 'ID_PAG'
      Origin = 'ID_PAG'
    end
    object SQL_ImpressaoPedidoDESCRICAO_PAG: TStringField
      FieldName = 'DESCRICAO_PAG'
      Origin = 'DESCRICAO_PAG'
      Size = 32767
    end
    object SQL_ImpressaoPedidoVALOR_DESPESAS: TFloatField
      FieldName = 'VALOR_DESPESAS'
      Origin = 'VALOR_DESPESAS'
      DisplayFormat = '#,0.00'
    end
    object SQL_ImpressaoPedidoVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      DisplayFormat = '#,0.00'
    end
    object SQL_ImpressaoPedidoVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      DisplayFormat = '#,0.00'
    end
    object SQL_ImpressaoPedidoTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      Origin = 'TOTAL_GERAL'
      DisplayFormat = '#,0.00'
    end
    object SQL_ImpressaoPedidoID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ImpressaoPedidoID_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ImpressaoPedidoID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ImpressaoPedidoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_ImpressaoPedidoVALOR_UNIT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNIT'
      Origin = 'VALOR_UNIT'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,0.00'
    end
    object SQL_ImpressaoPedidoQUANTIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ImpressaoPedidoVALOR_TOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,0.00'
    end
  end
  object SQL_empresa: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from EMPRESA')
    Left = 792
    Top = 248
    object SQL_empresaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_empresaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object SQL_empresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 100
    end
    object SQL_empresaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Origin = 'CPFCNPJ'
      Size = 32767
    end
    object SQL_empresaRGIE: TStringField
      FieldName = 'RGIE'
      Origin = 'RGIE'
      Size = 32767
    end
    object SQL_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 32767
    end
    object SQL_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 32767
    end
    object SQL_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 32767
    end
    object SQL_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 32767
    end
    object SQL_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 32767
    end
    object SQL_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 32767
    end
  end
end
