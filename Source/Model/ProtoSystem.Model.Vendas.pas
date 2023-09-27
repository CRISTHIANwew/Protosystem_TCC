unit ProtoSystem.Model.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask;

type
  TFrm_Vendas = class(TForm)
    PNL_PRINCIPAL: TPanel;
    PNL_PRODUTO: TPanel;
    PNL_BUTTONS: TPanel;
    PNL_PRINCIPAL_MAIN: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    BTN_CANCELAR: TSpeedButton;
    pnlPesquisaProduto: TPanel;
    shpPesquisaProduto: TShape;
    btnPesquisaProduto: TSpeedButton;
    Panel3: TPanel;
    Shape3: TShape;
    BTN_AbrirCaixa: TSpeedButton;
    pnlFinalizarVenda: TPanel;
    shpFinalizarVenda: TShape;
    btn_FinalizarVenda: TSpeedButton;
    Panel5: TPanel;
    Shape5: TShape;
    BTN_CancelarItem: TSpeedButton;
    gridCarrinhoVendas: TDBGrid;
    PNL_OPERACOES: TPanel;
    GB_Total: TGroupBox;
    Sh_Total: TShape;
    GB_QTD: TGroupBox;
    Shape7: TShape;
    GB_SUBTOTAL: TGroupBox;
    Shape8: TShape;
    GB_PRECO: TGroupBox;
    Shape9: TShape;
    GB_PRODUTO: TGroupBox;
    Shape10: TShape;
    PNL_IMAGEM: TPanel;
    DBImage1: TDBImage;
    cdsCarrinho: TClientDataSet;
    gridTabelaProduto: TDBGrid;
    Panel2: TPanel;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    pnl2PesquisaProduto: TPanel;
    shp2PesquisaProduto: TShape;
    edtPesquisaProduto: TEdit;
    SQL_Produtos: TFDQuery;
    DS_produtos: TDataSource;
    cdsCarrinhoID: TIntegerField;
    cdsCarrinhoDescricao: TStringField;
    cdsCarrinhoValorUnitario: TFloatField;
    cdsCarrinhoQuantidade: TIntegerField;
    cdsCarrinhoValorTotal: TFloatField;
    ds_Carrinho: TDataSource;
    SQL_ProdutosID: TFDAutoIncField;
    SQL_ProdutosDESCRICAO: TStringField;
    SQL_ProdutosESTOQUE: TIntegerField;
    SQL_ProdutosCUSTO: TFloatField;
    SQL_ProdutosPRECO: TFloatField;
    SQL_ProdutosIMAGEM: TBlobField;
    SQL_ProdutosDATAHORACADASTRO: TDateTimeField;
    SQL_ProdutosDATAHORAALTERACAO: TDateTimeField;
    edtCodigoProduto: TEdit;
    edtPrecoProduto: TEdit;
    edtQuantidadeProduto: TEdit;
    edtSubTotalProduto: TEdit;
    edtTotalVenda: TEdit;
    procedure btnPesquisaProdutoClick(Sender: TObject);
    procedure btn_FinalizarVendaClick(Sender: TObject);
    procedure gridTabelaProdutoCellClick(Column: TColumn);
  private
    { Private declarations }
    TotalAmount: double;
    procedure AtualizaTotais;
    var
      SubTotalFLT: Double;
      QuantidadeProdINT: Integer;
      PrecoProd: Double;
      IdProd: Integer;
      QuantidadeProdSTR: string;
      TotalGeralFLT: Double;
  public
    { Public declarations }
  end;

var
  Frm_Vendas: TFrm_Vendas;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;


procedure TFrm_Vendas.btnPesquisaProdutoClick(Sender: TObject);
begin
         // Pesquisa Produto
end;

procedure TFrm_Vendas.btn_FinalizarVendaClick(Sender: TObject);
begin
         // Finalizar Venda
end;

procedure TFrm_Vendas.gridTabelaProdutoCellClick(Column: TColumn);
var
  CellProd: Integer;
  DescricaoProd: string;
  EstoqueProd: Integer;
begin
  //transferencia da celula de pesquisa selecionada
  CellProd := gridTabelaProduto.DataSource.DataSet.RecNo;
  //Obtém os dados da linha selecionada no DBGrid
  IdProd := gridTabelaProduto.DataSource.DataSet.FieldByName('ID').AsInteger;
  DescricaoProd := gridTabelaProduto.DataSource.DataSet.FieldByName('DESCRICAO').AsString;
  PrecoProd := gridTabelaProduto.DataSource.DataSet.FieldByName('PRECO').AsFloat;
  EstoqueProd := gridTabelaProduto.DataSource.DataSet.FieldByName('ESTOQUE').AsInteger;
  //Solicita ao usuário que insira a quantidade desejada
  QuantidadeProdSTR := InputBox('Quantidade', 'Informe a quantidade:', '');
  //Converte a string inserida pelo usuário em um valor inteiro
  TryStrToInt(QuantidadeProdSTR, QuantidadeProdINT);
  //Insere os dados no TClientDataSet
  cdsCarrinho.Append;
  cdsCarrinho.FieldByName('ID').AsInteger := IdProd;
  cdsCarrinho.FieldByName('Descricao').AsString := DescricaoProd;
  cdsCarrinho.FieldByName('Valor Unitario').AsFloat := PrecoProd;
  cdsCarrinho.FieldByName('Quantidade').AsInteger := QuantidadeProdInt;
  cdsCarrinho.FieldByName('Valor Total').AsFloat := QuantidadeProdInt * PrecoProd;
  cdsCarrinho.Post;
  AtualizaTotais;
end;

procedure TFrm_Vendas.AtualizaTotais;
var
  IdProdSTR: string;
  PrecoProdSTR: string;
  SubTotalSTR: string;
  TotalGeralSTR: string;
begin
  //Calcula Total Geral da venda
  TotalGeralFLT := 0.0;
  cdsCarrinho.First;
    while not cdsCarrinho.Eof do
    begin
      TotalGeralFLT := TotalGeralFLT + cdsCarrinho.FieldByName('Valor Total').AsFloat;
      cdsCarrinho.Next;
    end;
    //Limpa registros
    edtCodigoProduto.Text:='';
    edtPrecoProduto.Text:='';
    edtPrecoProduto.Text:='';
    edtQuantidadeProduto.Text:='';
    edtSubTotalProduto.Text:='';
    edtTotalVenda.Text:='';
    //Calcula SubTotal
    SubTotalFLT:= QuantidadeProdInt * PrecoProd;
    //Converte dados para string
    IdProdSTR := IntToStr(IdProd);
    PrecoProdSTR:= FloatToStr(PrecoProd);
    SubTotalSTR := FloatToStr(SubTotalFLT);
    TotalGeralSTR:= FloatToStr(TotalGeralFLT);
    //Atualiza o total da compra;
    edtCodigoProduto.Text:= IdProdSTR;
    edtPrecoProduto.Text:= PrecoProdSTR;
    edtQuantidadeProduto.Text:= QuantidadeProdSTR;
    edtSubTotalProduto.Text:= SubTotalSTR;
    edtTotalVenda.Text:= TotalGeralSTR;
end;


end.
