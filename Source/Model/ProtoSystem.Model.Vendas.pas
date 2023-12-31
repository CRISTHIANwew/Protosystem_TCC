unit ProtoSystem.Model.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, CommCtrl, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider;

type
  TFrm_Vendas = class(TForm)
    PNL_PRINCIPAL: TPanel;
    PNL_PRODUTO: TPanel;
    PNL_BUTTONS: TPanel;
    PNL_PRINCIPAL_MAIN: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    btnCancelaVenda: TSpeedButton;
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
    gridTabelaProduto: TDBGrid;
    Panel2: TPanel;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    pnl2PesquisaProduto: TPanel;
    shp2PesquisaProduto: TShape;
    edtPesquisaProduto: TEdit;
    SQL_Produtos: TFDQuery;
    DS_produtos: TDataSource;
    ds_VendaProdutos: TDataSource;
    SQL_ProdutosID: TFDAutoIncField;
    SQL_ProdutosDESCRICAO: TStringField;
    SQL_ProdutosESTOQUE: TIntegerField;
    SQL_ProdutosCUSTO: TFloatField;
    SQL_ProdutosPRECO: TFloatField;
    SQL_ProdutosIMAGEM: TBlobField;
    SQL_ProdutosDATAHORAALTERACAO: TDateTimeField;
    edtCodigoProduto: TEdit;
    edtPrecoProduto: TEdit;
    edtQuantidadeProduto: TEdit;
    edtSubTotalProduto: TEdit;
    edtTotalVenda: TEdit;
    cdsVendaPedidos: TClientDataSet;
    dsVendaPedidos: TDataSource;
    Panel4: TPanel;
    Pnl_sair: TPanel;
    Shape15: TShape;
    SpeedButton2: TSpeedButton;
    SQL_ProdutosDATAHORACADASTRO: TDateField;
    procedure btnPesquisaProdutoClick(Sender: TObject);
    procedure btn_FinalizarVendaClick(Sender: TObject);
    procedure gridTabelaProdutoCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaProdutoChange(Sender: TObject);
    procedure BTN_CancelarItemClick(Sender: TObject);
    procedure btnCancelaVendaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    TotalAmount: double;
    procedure InicializaComponentes;
    procedure AtualizaTotais;
    procedure TransfereInformacoes;
    procedure VerificaIdPedido;
    procedure ResetaVenda;
    procedure ImprimePedido;
    var
      SubTotalFLT: Double;
      QuantidadeProdINT: Integer;
      PrecoProd: Double;
      IdProd: Integer;
      QuantidadeProdSTR: string;

  public
    var
      TotalGeralFLT: Double;
      IdPedido: integer;
  end;

var
  Frm_Vendas: TFrm_Vendas;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.VendasFechamento,
  ProtoSystem.View.MenuPrincipal, ProtoSystem.Printed.ReportsPedidoDeVenda;

procedure TFrm_Vendas.btnCancelaVendaClick(Sender: TObject);
begin
if not dm.cdsVendaProdutos.IsEmpty then
with TTaskDialog.Create(Self) do
  try
    Caption := 'Cancelamento';
    Title := 'Deseja realmente cancelar esta venda ?';
    CommonButtons := [tcbYes, tcbNo];
    MainIcon := tdiInformation;
    if Execute then
      if ModalResult = mrYes then
        begin
          while not dm.cdsVendaProdutos.IsEmpty do
            begin
            dm.cdsVendaProdutos.Delete;
            end;
            AtualizaTotais;
        //Limpa registros
        edtCodigoProduto.Text:='';
        edtPrecoProduto.Text:='';
        edtPrecoProduto.Text:='';
        edtQuantidadeProduto.Text:='';
        edtSubTotalProduto.Text:='';
        edtTotalVenda.Text:='';
        ShowMessage('Venda cancelada com sucesso.');
      end
  finally
    Free;
  end;
end;

procedure TFrm_Vendas.btnPesquisaProdutoClick(Sender: TObject);
begin
  // Pesquisa Produto
  gridCarrinhoVendas.Visible:=false;
  gridTabelaProduto.Visible:=true;
  pnl2PesquisaProduto.Visible:=true;
  edtPesquisaProduto.SetFocus;
end;

procedure TFrm_Vendas.BTN_CancelarItemClick(Sender: TObject);
begin
  //Cancela item
  if not dm.cdsVendaProdutos.IsEmpty then
  dm.cdsVendaProdutos.Delete;
  AtualizaTotais;
end;

procedure TFrm_Vendas.btn_FinalizarVendaClick(Sender: TObject);
begin
  // Finalizar Venda
  if not dm.cdsVendaProdutos.IsEmpty then
  begin
    dm.VendasFechamentoStatus:=true;
    Application.CreateForm(TfrmVendasFechamento, frmVendasFechamento);
    frmVendasFechamento.ShowModal;
  end;
  if dm.VendasFechamentoStatus=false then
  begin
     while not dm.cdsVendaProdutos.IsEmpty do
        begin
          dm.cdsVendaProdutos.Delete;
        end;
      AtualizaTotais;
      edtCodigoProduto.Text:='';
      edtPrecoProduto.Text:='';
      edtPrecoProduto.Text:='';
      edtQuantidadeProduto.Text:='';
      edtSubTotalProduto.Text:='';
      edtTotalVenda.Text:='';
      VerificaIdPedido;
      ImprimePedido;
  end;
end;

procedure TFrm_Vendas.ImprimePedido;
begin
  dm.SQL_empresa.SQL.Text:= 'SELECT * FROM EMPRESA';
  dm.SQL_empresa.Open;
  dm.SQL_ImpressaoPedido.SQL.Text:= 'select * from VENDA_PEDIDOS PE inner join VENDA_PRODUTO PO ON (PO.ID_PEDIDO = PE.ID) WHERE PE.ID= :IDPEDIDO';
  dm.SQL_ImpressaoPedido.ParamByName('IDPEDIDO').AsString:=IntToStr(DM.IdPedido-1);
  dm.SQL_ImpressaoPedido.Open;
  frmReportsPedidoDeVenda.RLReport1.Preview();
end;

procedure TFrm_Vendas.edtPesquisaProdutoChange(Sender: TObject);
begin
  if edtPesquisaProduto.Text <> '' then
  begin
    SQL_Produtos.Filtered := False;
    SQL_Produtos.Filter := 'DESCRICAO LIKE ' +
      QuotedStr('%' + edtPesquisaProduto.Text + '%');
    SQL_Produtos.Filtered := True;
  end
  else
    SQL_Produtos.Filtered := False;
end;

procedure TFrm_Vendas.FormCreate(Sender: TObject);
begin
  InicializaComponentes;
  VerificaIdPedido;
  Application.CreateForm(TfrmReportsPedidoDeVenda, frmReportsPedidoDeVenda);
end;

procedure TFrm_Vendas.gridTabelaProdutoCellClick(Column: TColumn);
begin
  TransfereInformacoes;
  AtualizaTotais;
end;

procedure TFrm_Vendas.TransfereInformacoes;
var
  DescricaoProd: string;
  EstoqueProd: Integer;
begin
  //Transferencia da celula de pesquisa selecionada
 var CellProd := gridTabelaProduto.DataSource.DataSet.RecNo;
  //Obt�m os dados da linha selecionada no DBGrid
  IdProd := SQL_Produtos.FieldByName('ID').AsInteger;
  DescricaoProd := SQL_Produtos.FieldByName('DESCRICAO').AsString;
  PrecoProd := SQL_Produtos.FieldByName('PRECO').AsFloat;
  EstoqueProd := SQL_Produtos.FieldByName('ESTOQUE').AsInteger;
  //Solicita ao usu�rio que insira a quantidade desejada
  QuantidadeProdSTR := InputBox('Quantidade', 'Informe a quantidade:', '');
  if QuantidadeProdSTR = '' then
  begin
      ShowMessage('N�o � permitido valor zerado! ');
  end
  else
  begin
  TryStrToInt(QuantidadeProdSTR, QuantidadeProdINT);
  //Insere os dados no TClientDataSet
  dm.cdsVendaProdutos.Append;
  dm.cdsVendaProdutos.FieldByName('IDPEDIDO').AsInteger := IdPedido;
  dm.cdsVendaProdutos.FieldByName('ID').AsInteger := IdProd;
  dm.cdsVendaProdutos.FieldByName('Descricao').AsString := DescricaoProd;
  dm.cdsVendaProdutos.FieldByName('Valor Unitario').AsFloat := PrecoProd;
  dm.cdsVendaProdutos.FieldByName('Quantidade').AsInteger := QuantidadeProdInt;
  dm.cdsVendaProdutos.FieldByName('Valor Total').AsFloat := QuantidadeProdInt * PrecoProd;
  dm.cdsVendaProdutos.Post;
  end

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
  dm.cdsVendaProdutos.First;
    while not dm.cdsVendaProdutos.Eof do
    begin
      TotalGeralFLT := TotalGeralFLT + dm.cdsVendaProdutos.FieldByName('Valor Total').AsFloat;
      dm.cdsVendaProdutos.Next;
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
    // teste
    gridCarrinhoVendas.Visible:=true;
    gridTabelaProduto.Visible:=false;
    pnl2PesquisaProduto.Visible:=false;
    gridCarrinhoVendas.SetFocus;
    dm.TotalGeralFLT:=TotalGeralFLT;
end;

procedure TFrm_Vendas.InicializaComponentes;
begin
  //inicializa��o de componentes
  DS_produtos.dataset:=SQL_Produtos;
  DS_produtos.enabled:=true;
  SQL_Produtos.connection:=DM.conexao;
  SQL_Produtos.Active:=true;
  ds_VendaProdutos.dataset:=dm.cdsVendaProdutos;
  ds_VendaProdutos.Enabled:=true;
  gridCarrinhoVendas.Visible:=true;
  gridTabelaProduto.Visible:=false;
  pnl2PesquisaProduto.Visible:=false;
end;

procedure TFrm_Vendas.VerificaIdPedido;
var
Result: integer;
begin
   try
    Dm.FDQuery.SQL.Text := 'SELECT COUNT(*) AS TotalRegistros FROM VENDA_PEDIDOS';
    Dm.FDQuery.Open;
    if not Dm.FDQuery.IsEmpty then
      Result := Dm.FDQuery.FieldByName('TotalRegistros').AsInteger
    else
      Result := 0;
   finally
     IdPedido:= Result + 1;
     PNL_PRODUTO.Caption:= 'Pedido de Venda n� ' + IntToStr(IdPedido);
     dm.IdPedido:=IdPedido;
   end;
end;

procedure TFrm_Vendas.ResetaVenda;
begin

end;

procedure TFrm_Vendas.SpeedButton1Click(Sender: TObject);
begin
  dm.SQL_empresa.SQL.Text:= 'SELECT * FROM EMPRESA';
  dm.SQL_empresa.Open;
  dm.SQL_ImpressaoPedido.SQL.Text:= 'select * from VENDA_PEDIDOS PE inner join VENDA_PRODUTO PO ON (PO.ID_PEDIDO = PE.ID) WHERE PE.ID= :IDPEDIDO';
  dm.SQL_ImpressaoPedido.ParamByName('IDPEDIDO').AsString:=IntToStr(DM.IdPedido-1);
  dm.SQL_ImpressaoPedido.Open;
  frmReportsPedidoDeVenda.RLReport1.Preview();
end;

procedure TFrm_Vendas.SpeedButton2Click(Sender: TObject);
begin
    frmReportsPedidoDeVenda.Free;
    close;
end;

end.
