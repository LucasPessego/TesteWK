unit DMTesteTecnico;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    DSClientes: TDataSource;
    DSProdutos: TDataSource;
    tClientes: TFDTable;
    tProdutos: TFDTable;
    DSPedidos: TDataSource;
    tPedidos: TFDTable;
    tPedidosped_num: TFDAutoIncField;
    tPedidosped_dtEmissao: TDateTimeField;
    tPedidoscli_codigo: TIntegerField;
    tPedidosped_vlrTotal: TLargeintField;
    DSItens: TDataSource;
    tItens: TFDTable;
    tItensprod_codigo: TIntegerField;
    tItensdescricao: TStringField;
    tItensitem_qtde: TIntegerField;
    tItensitem_vlrUnit: TLargeintField;
    tItensitem_vlrTot: TLargeintField;
    tItensitem_codigo: TFDAutoIncField;
    tItensped_num: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
