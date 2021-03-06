object DM: TDM
  OldCreateOrder = False
  Height = 687
  Width = 897
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=dblucas'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 169
    Top = 16
  end
  object DSClientes: TDataSource
    DataSet = tClientes
    Left = 288
    Top = 16
  end
  object DSProdutos: TDataSource
    DataSet = tProdutos
    Left = 296
    Top = 80
  end
  object tClientes: TFDTable
    Active = True
    IndexFieldNames = 'cli_codigo'
    Connection = Conexao
    TableName = 'dblucas.t_clientes'
    Left = 224
    Top = 16
  end
  object tProdutos: TFDTable
    Active = True
    IndexFieldNames = 'prod_codigo'
    Connection = Conexao
    TableName = 'dblucas.t_produtos'
    Left = 224
    Top = 80
  end
  object DSPedidos: TDataSource
    DataSet = tPedidos
    Left = 224
    Top = 224
  end
  object tPedidos: TFDTable
    Active = True
    IndexFieldNames = 'ped_num'
    Connection = Conexao
    TableName = 'dblucas.t_pedidos'
    Left = 312
    Top = 224
    object tPedidosped_num: TFDAutoIncField
      FieldName = 'ped_num'
      Origin = 'ped_num'
      ReadOnly = True
    end
    object tPedidosped_dtEmissao: TDateTimeField
      FieldName = 'ped_dtEmissao'
      Origin = 'ped_dtEmissao'
      Required = True
    end
    object tPedidoscli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      Origin = 'cli_codigo'
      Required = True
    end
    object tPedidosped_vlrTotal: TLargeintField
      FieldName = 'ped_vlrTotal'
      Origin = 'ped_vlrTotal'
      Required = True
    end
  end
  object DSItens: TDataSource
    DataSet = tItens
    Left = 296
    Top = 152
  end
  object tItens: TFDTable
    Active = True
    IndexFieldNames = 'item_codigo'
    Connection = Conexao
    TableName = 'dblucas.t_itenspedidos'
    Left = 224
    Top = 160
    object tItensprod_codigo: TIntegerField
      FieldName = 'prod_codigo'
      Origin = 'prod_codigo'
      Required = True
    end
    object tItensdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 50
    end
    object tItensitem_qtde: TIntegerField
      FieldName = 'item_qtde'
      Origin = 'item_qtde'
      Required = True
    end
    object tItensitem_vlrUnit: TLargeintField
      FieldName = 'item_vlrUnit'
      Origin = 'item_vlrUnit'
      Required = True
    end
    object tItensitem_vlrTot: TLargeintField
      FieldName = 'item_vlrTot'
      Origin = 'item_vlrTot'
      Required = True
    end
    object tItensitem_codigo: TFDAutoIncField
      FieldName = 'item_codigo'
      Origin = 'item_codigo'
    end
    object tItensped_num: TIntegerField
      FieldName = 'ped_num'
      Origin = 'ped_num'
      Required = True
    end
  end
end
