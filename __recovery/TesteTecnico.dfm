object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 372
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblCliente: TLabel
    Left = 25
    Top = 24
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label1: TLabel
    Left = 25
    Top = 340
    Width = 149
    Height = 13
    Caption = 'Valor Total do pedido: R$13,00'
  end
  object BtnGravarPedido: TButton
    Left = 298
    Top = 175
    Width = 168
    Height = 33
    Caption = 'Gravar Pedido'
    TabOrder = 0
  end
  object BtnConfirmarProduto: TButton
    Left = 25
    Top = 183
    Width = 129
    Height = 25
    Caption = 'Inserir produto'
    TabOrder = 1
    OnClick = BtnConfirmarProdutoClick
  end
  object PnlProdutoInfo: TPanel
    Left = 25
    Top = 70
    Width = 441
    Height = 89
    TabOrder = 2
    object LblProduto: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object LblQtdeProduto: TLabel
      Left = 201
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object LblVlrUnitario: TLabel
      Left = 320
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object CbbProduto: TDBLookupComboBox
      Left = 16
      Top = 35
      Width = 145
      Height = 21
      KeyField = 'prod_codigo'
      ListField = 'prod_descricao'
      ListSource = DM.DSProdutos
      TabOrder = 0
    end
    object NumQtde: TNumberBox
      Left = 201
      Top = 35
      Width = 72
      Height = 21
      TabOrder = 1
    end
    object NumVlr: TNumberBox
      Left = 320
      Top = 35
      Width = 64
      Height = 21
      TabOrder = 2
    end
  end
  object CbbClientes: TDBLookupComboBox
    Left = 25
    Top = 43
    Width = 168
    Height = 21
    Ctl3D = True
    KeyField = 'cli_codigo'
    ListField = 'cli_nome'
    ListSource = DM.DSClientes
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 214
    Width = 441
    Height = 120
    DataSource = DM.DSItens
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'prod_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_vlrUnit'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_vlrTot'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'item_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_num'
        Visible = True
      end>
  end
end
