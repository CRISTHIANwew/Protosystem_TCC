unit ProtoSystem.Model.VendasFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;

type
  TfrmVendasFechamento = class(TForm)
    pnlPrincipal: TPanel;
    pnl2: TPanel;
    pnlCondicao: TPanel;
    GB_Total: TGroupBox;
    Sh_Total: TShape;
    edtTotalVenda: TEdit;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    edtDespesas: TEdit;
    GroupBox2: TGroupBox;
    Shape2: TShape;
    edtFrete: TEdit;
    GroupBox3: TGroupBox;
    Shape3: TShape;
    edtPorcDesconto: TEdit;
    GroupBox4: TGroupBox;
    Shape4: TShape;
    edtValorDesconto: TEdit;
    Panel1: TPanel;
    Shape5: TShape;
    Label1: TLabel;
    sqlCliente: TFDQuery;
    dsClientes: TDataSource;
    pnl_cliente: TPanel;
    gridTabelaCliente: TDBGrid;
    pnlIdCliente: TPanel;
    shp2IdCliente: TShape;
    edtIdCliente: TEdit;
    pnlNomeCliente: TPanel;
    shpNomeCliente: TShape;
    edtNomeCliente: TEdit;
    pnlPesquisaCliente: TPanel;
    shpPesquisaCliente: TShape;
    edtPesquisaCliente: TEdit;
    pnlCPFCNPJ: TPanel;
    shpCPFCNPJ: TShape;
    edtCPFCNPJ: TEdit;
    pnlRGIE: TPanel;
    shpRGIE: TShape;
    edtRGIE: TEdit;
    Panel3: TPanel;
    Shape6: TShape;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    rgCondicao: TRadioGroup;
    sqlInsertProdutos: TFDQuery;
    sqlInsertPedido: TFDQuery;
    Panel5: TPanel;
    Pnl_sair: TPanel;
    Shape15: TShape;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Shape7: TShape;
    Label3: TLabel;
    procedure gridTabelaClienteCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaClienteChange(Sender: TObject);
    procedure edtDespesasExit(Sender: TObject);
    procedure edtFreteExit(Sender: TObject);
    procedure edtValorDescontoExit(Sender: TObject);
    procedure edtDespesasKeyPress(Sender: TObject; var Key: Char);
    procedure edtFreteKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rgCondicaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    var
      idClienteINT: Integer;
      cpfcnpjINT: integer;
      rgieINT: integer;
      idClienteSTR: string;
      cpfcnpjSTR: string;
      rgieSTR: string;
      NomeClienteSTR: string;
      DespesasFLT: double;
      DespesasSTR: string;
      FreteFLT: double;
      FreteSTR: string;
      ValorDescontoFLT: double;
      ValorDescontoSTR: string;
      PorcentagemDescontoSTR: string;
      Cond_pagINT: integer;
      Descricao_pagSTR: string;
      SALDOCXA: double;
      SALDOBAN: double;
  procedure TransfereInformacoes;
  procedure IniciaComponentes;
  procedure AtualizaTotais;
  procedure FechaVenda;
  procedure ResetaVendafechamento;
  procedure ImpressaoPedido;
  procedure InsereMovimentacoesBA;
  procedure InsereLancamentoCX;
  procedure AtualizaSaldoCXBA;
  procedure BuscaSaldoCXBA;

  public
    { Public declarations }
    var
      TotalGeralFLT: double;
  end;

var
  frmVendasFechamento: TfrmVendasFechamento;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.Vendas,
  ProtoSystem.Model.ReportsPedidoDeVenda;

procedure TfrmVendasFechamento.edtDespesasExit(Sender: TObject);
begin
if edtDespesas.Text = '' then
begin
edtDespesas.Text:='0';
end;
  AtualizaTotais;
end;

procedure TfrmVendasFechamento.edtDespesasKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

procedure TfrmVendasFechamento.edtFreteExit(Sender: TObject);
begin
if edtFrete.Text = '' then
begin
edtFrete.Text:='0';
end;
  AtualizaTotais;
end;

procedure TfrmVendasFechamento.edtFreteKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

procedure TfrmVendasFechamento.edtPesquisaClienteChange(Sender: TObject);
begin
  sqlCliente.Filtered := true;
  if edtPesquisaCliente.Text <> '' then
    begin
    sqlCliente.Filtered := False;
    sqlCliente.Filter := 'NOME LIKE ' +
      QuotedStr('%' + edtPesquisaCliente.Text + '%');
    sqlCliente.Filtered := True;
  end
  else
    sqlCliente.Filtered := False;
end;

procedure TfrmVendasFechamento.edtValorDescontoExit(Sender: TObject);
begin
if edtValorDesconto.Text = '' then
begin
edtValorDesconto.Text:='0';
end;
  AtualizaTotais;
end;

procedure TfrmVendasFechamento.edtValorDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

procedure TfrmVendasFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dm.VendasFechamentoStatus:=false;
end;

procedure TfrmVendasFechamento.FormCreate(Sender: TObject);
begin
  IniciaComponentes;
  AtualizaTotais;
end;

procedure TfrmVendasFechamento.gridTabelaClienteCellClick(Column: TColumn);
begin
   TransfereInformacoes;
end;

procedure TfrmVendasFechamento.TransfereInformacoes;
begin
 var CellClient := gridTabelaCliente.DataSource.DataSet.RecNo;
  idClienteINT := sqlCliente.FieldByName('ID').AsInteger;
  NomeClienteSTR := sqlCliente.FieldByName('NOME').AsString;
  cpfcnpjSTR := sqlCliente.FieldByName('CPFCNPJ').AsString;
  rgieSTR := sqlCliente.FieldByName('RGIE').AsString;
  idClienteSTR := IntToStr(idClienteINT);
  edtIdCliente.Text := idClienteSTR;
  edtNomeCliente.Text := NomeClienteSTR;
  edtCPFCNPJ.Text := cpfcnpjSTR;
  edtRGIE.Text := rgieSTR;
end;

procedure TfrmVendasFechamento.IniciaComponentes;
begin
    sqlCliente.Connection:=DM.conexao;
    sqlCliente.Active:=true;
    dsClientes.DataSet:=sqlCliente;
    dsClientes.Enabled:=true;
    gridTabelaCliente.DataSource:=dsClientes;
    edtDespesas.Text:='0';
    edtFrete.Text:='0';
    edtValorDesconto.Text:='0';
end;

procedure TfrmVendasFechamento.rgCondicaoClick(Sender: TObject);
var index: integer;
begin
index:=rgCondicao.ItemIndex;
case index of
      0:
      begin
        Cond_pagINT:=0;
        Descricao_pagSTR:='';
        Cond_pagINT:=01;
        Descricao_pagSTR:='A VISTA';
      end;
      1:
     begin
        Cond_pagINT:=0;
        Descricao_pagSTR:='';
        Cond_pagINT:=02;
        Descricao_pagSTR:='CARTAO DEBITO';
      end;
      2:
     begin
        Cond_pagINT:=0;
        Descricao_pagSTR:='';
        Cond_pagINT:=03;
        Descricao_pagSTR:='CARTAO CREDITO';
      end;
      3:
     begin
        Cond_pagINT:=0;
        Descricao_pagSTR:='';
        Cond_pagINT:=04;
        Descricao_pagSTR:='PIX/DEPOSITO';
      end;
     else
     ShowMessage('Sele��o inv�lida!!');
  end;
end;

procedure TfrmVendasFechamento.SpeedButton1Click(Sender: TObject);
begin
  FechaVenda;
end;

procedure TfrmVendasFechamento.SpeedButton2Click(Sender: TObject);
begin
     frmVendasFechamento.Close;
end;

procedure TfrmVendasFechamento.AtualizaTotais;
var TotalGeralSTR: string;
begin
  TotalGeralFLT:= dm.TotalGeralFLT;
     DespesasSTR:=edtDespesas.Text;
     FreteSTR:=edtFrete.Text;
     ValorDescontoSTR:=edtValorDesconto.Text;

     DespesasFLT:= StrToFloat(DespesasSTR);
     FreteFLT:= StrToFloat(FreteSTR);
     ValorDescontoFLT:= StrToFloat(ValorDescontoSTR);

     TotalGeralFLT:= TotalGeralFLT + DespesasFLT + FreteFLT - ValorDescontoFLT;
     edtTotalVenda.Text:='';
     TotalGeralSTR:= FloatToStr(TotalGeralFLT);
     edtTotalVenda.Text:=TotalGeralSTR;
end;

Procedure TfrmVendasFechamento.FechaVenda;
begin
  sqlInsertPedido.Connection:=DM.conexao;
  sqlInsertProdutos.Connection:=DM.conexao;
  //inser��o dos dados da venda
  sqlInsertPedido.SQL.Text := 'INSERT INTO VENDA_PEDIDOS (TOTAL_PROD, ID_CLIENTE, NOME_CLIENTE, CPF_CNPJ, RG_IE, ID_PAG, DESCRICAO_PAG, VALOR_DESPESAS, VALOR_FRETE, VALOR_DESCONTO, TOTAL_GERAL) VALUES '+'(:TOTAL_PROD, :ID_CLIENTE, :NOME_CLIENTE, :CPF_CNPJ, :RG_IE, :ID_PAG, :DESCRICAO_PAG, :VALOR_DESPESAS, :VALOR_FRETE, :VALOR_DESCONTO, :TOTAL_GERAL)';
  sqlInsertPedido.ParamByName('TOTAL_PROD').Value:= DM.TotalGeralFLT;
  sqlInsertPedido.ParamByName('ID_CLIENTE').Value:= idClienteINT;
  sqlInsertPedido.ParamByName('NOME_CLIENTE').Value:= NomeClienteSTR;
  sqlInsertPedido.ParamByName('CPF_CNPJ').Value:= cpfcnpjSTR;
  sqlInsertPedido.ParamByName('RG_IE').Value:= rgieSTR;
  sqlInsertPedido.ParamByName('ID_PAG').Value:= Cond_pagINT;
  sqlInsertPedido.ParamByName('DESCRICAO_PAG').Value:= Descricao_pagSTR;
  sqlInsertPedido.ParamByName('VALOR_DESPESAS').Value:= DespesasFLT;
  sqlInsertPedido.ParamByName('VALOR_FRETE').Value:= FreteFLT;
  sqlInsertPedido.ParamByName('VALOR_DESCONTO').Value:= ValorDescontoFLT;
  sqlInsertPedido.ParamByName('TOTAL_GERAL').Value:= TotalGeralFLT;
  sqlInsertPedido.ExecSQL;
  //inser��o dos produtos
  dm.cdsVendaProdutos.First;
  while not dm.cdsVendaProdutos.Eof do
  begin
    sqlInsertProdutos.SQL.Text := 'INSERT INTO VENDA_PRODUTO (ID_PEDIDO, ID_PRODUTO, DESCRICAO, VALOR_UNIT, QUANTIDADE, VALOR_TOTAL) VALUES (:ID_PEDIDO, :ID_PRODUTO, :DESCRICAO, :VALOR_UNIT, :QUANTIDADE, :VALOR_TOTAL)';
    sqlInsertProdutos.ParamByName('ID_PEDIDO').Value := Dm.IdPedido;
    sqlInsertProdutos.ParamByName('ID_PRODUTO').Value := DM.cdsVendaProdutos.FieldByName('ID').Value;
    sqlInsertProdutos.ParamByName('DESCRICAO').Value := DM.cdsVendaProdutos.FieldByName('Descricao').Value;
    sqlInsertProdutos.ParamByName('VALOR_UNIT').Value := DM.cdsVendaProdutos.FieldByName('Valor Unitario').Value;
    sqlInsertProdutos.ParamByName('QUANTIDADE').Value := DM.cdsVendaProdutos.FieldByName('Quantidade').Value;
    sqlInsertProdutos.ParamByName('VALOR_TOTAL').Value := DM.cdsVendaProdutos.FieldByName('Valor Total').Value;
    sqlInsertProdutos.ExecSQL;
    dm.cdsVendaProdutos.Next;
  end;
  BuscaSaldoCXBA;
  AtualizaSaldoCXBA;
  ResetaVendafechamento;
end;

procedure TfrmVendasFechamento.ResetaVendafechamento;
begin
  edtIdCliente.Text:='';
  edtNomeCliente.Text:='';
  edtCPFCNPJ.Text:='';
  edtRGIE.Text:='';
  edtDespesas.Text:='';
  edtFrete.Text:='';
  edtValorDesconto.Text:='';
  edtTotalVenda.Text:='';
  idClienteINT:=0;
  NomeClienteSTR:='';
  cpfcnpjINT:=0;
  rgieINT:=0;
  DespesasFLT:=0;
  FreteFLT:=0;
  ValorDescontoFLT:=0;
  TotalGeralFLT:=0;
  frmVendasFechamento.Close;
end;

procedure TfrmVendasFechamento.ImpressaoPedido;
begin
  dm.SQL_empresa.SQL.Text:= 'SELECT * FROM EMPRESA';
  dm.SQL_empresa.Open;
  dm.SQL_ImpressaoPedido.SQL.Text:= 'select * from VENDA_PEDIDOS PE inner join VENDA_PRODUTO PO ON (PO.ID_PEDIDO = PE.ID) WHERE PE.ID= :IDPEDIDO';
  dm.SQL_ImpressaoPedido.ParamByName('IDPEDIDO').AsString:=IntToStr(DM.IdPedido-1);
  dm.SQL_ImpressaoPedido.Open;
  frmReportsPedidoDeVenda.RLReport1.Preview();
end;

procedure TfrmVendasFechamento.BuscaSaldoCXBA;
begin  // fazer uma pesquisa do saldo atual
SALDOBAN:=0;
SALDOCXA:=0;
dm.FDQuery.SQL.Text.Empty;
dm.FDQuery.SQL.Text:='SELECT SALDO_BANCO FROM BANCO WHERE ID=1';
dm.FDQuery.Open;
SALDOBAN := dm.FDQuery.FieldByName('SALDO_BANCO').AsFloat;
dm.FDQuery.Close;
dm.FDQuery.SQL.Text.Empty;
dm.FDQuery.SQL.Text:='SELECT SALDO_CAIXA FROM CAIXA WHERE ID=1';
dm.FDQuery.Open;
SALDOCXA := dm.FDQuery.FieldByName('SALDO_CAIXA').AsFloat;
dm.FDQuery.Close;
//ShowMessage('pesquisa saldo ok!');
end;

procedure TfrmVendasFechamento.AtualizaSaldoCXBA;
var
  NovoSaldo: double;
  SqlUpdate: string;
begin
BuscaSaldoCXBA;
// calcular o movimento deacordo com o valor da venda e tipo
case Cond_pagINT of
  01:
  begin //caixa a vista
    NovoSaldo:=SALDOCXA+TotalGeralFLT;
    SqlUpdate:='UPDATE CAIXA SET SALDO_CAIXA = :NovoSaldo WHERE ID =1';
    InsereLancamentoCX;
  end;

  02:
  begin //banco  cart deb
    NovoSaldo:=SALDOBAN+TotalGeralFLT;
    SqlUpdate:='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';
    InsereMovimentacoesBA;
  end;

  03:
  begin //banco   cart cred
    NovoSaldo:=SALDOBAN+TotalGeralFLT;
    SqlUpdate:='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';
    InsereMovimentacoesBA;
  end;

  04:
  begin //banco  pix
    NovoSaldo:=SALDOBAN+TotalGeralFLT;
    SqlUpdate:='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';
    InsereMovimentacoesBA;
  end;
end;

  dm.FDQuery.SQL.Text := SQLUpdate;
  dm.FDQuery.ParamByName('NovoSaldo').AsFloat := NovoSaldo;
  dm.FDQuery.ExecSQL;

//ShowMessage('atualiza saldo ok!');
  dm.FDQuery.Close;
end;

procedure TfrmVendasFechamento.InsereMovimentacoesBA;
begin
// Insere os registros(MOVIMENTO/LANCAMENTO) de banco
  dm.FDQuery.SQL.Text := 'INSERT INTO BANCO_MOV (VALORMOVIMENTO, OBSERVACAO) VALUES (:VALORMOVIMENTO, :OBSERVACAO)';
  dm.FDQuery.ParamByName('VALORMOVIMENTO').AsFloat :=TotalGeralFLT;
  dm.FDQuery.ParamByName('OBSERVACAO').AsString := 'MOVIMENTO GERADO PELA TELA DE VENDAS';
  dm.FDQuery.ExecSQL;
 // ShowMessage('insere movimentos ok!');
  dm.FDQuery.Close;
end;

procedure TfrmVendasFechamento.InsereLancamentoCX;
begin
// Insere os registros(MOVIMENTO/LANCAMENTO) de caixa
  dm.FDQuery.SQL.Text := 'INSERT INTO CAIXA_LANC (VALORLANCAMENTO, OBSERVACAO) VALUES (:VALORLANCAMENTO, :OBSERVACAO)';
  dm.FDQuery.ParamByName('VALORLANCAMENTO').AsFloat :=TotalGeralFLT;
  dm.FDQuery.ParamByName('OBSERVACAO').AsString := 'LAN�AMENTO GERADO PELA TELA DE VENDAS';
  dm.FDQuery.ExecSQL;
 // ShowMessage('insere lancamentos ok!');
  dm.FDQuery.Close;
end;

end.
