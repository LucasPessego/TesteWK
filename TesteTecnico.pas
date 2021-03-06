unit TesteTecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Vcl.NumberBox;

type
  TForm1 = class(TForm)
    BtnGravarPedido: TButton;
    BtnConfirmarProduto: TButton;
    PnlProdutoInfo: TPanel;
    LblProduto: TLabel;
    LblQtdeProduto: TLabel;
    LblVlrUnitario: TLabel;
    LblCliente: TLabel;
    CbbClientes: TDBLookupComboBox;
    CbbProduto: TDBLookupComboBox;
    NumQtde: TNumberBox;
    NumVlr: TNumberBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure BtnConfirmarProdutoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DMTesteTecnico;




procedure TForm1.BtnConfirmarProdutoClick(Sender: TObject);
begin
with DM.tItens do
begin
  close;
  sql.clear;
  sql.add('insert into t_itenspedidos(prod_codigo,item_qtde,item_vlrUnit,item_vlrTot)');
  sql.add('values(:prod_codigo,:item_qtde,:item_vlrUnit,:item_vlrTot)');
  ParamByName('prod_codigo').AsString := CbbProduto.KeyField;
  ParamByName('item_qtde').AsFloat := NumQtde.Value;
  ParamByName('item_vlrUnit').AsFloat := NumVlr.Value;
  ParamByName('item_vlrTot').AsFloat := (NumVlr.Value * NumQtde.Value);
  ExecSQL;
  end;


with DM.tItens do
Begin
  close;
  sql.Clear;
  sql.Add('select itens.prod_codigo,itens.item_qtde,itens.item_vlrUnit,itens.item_vlrTot,produto.prod_descricao from t_itenspedidos as itens join t_produtos as produto on itens.prod_codigo = produto.prod_codigo');
  open;
End;

end;
end.
