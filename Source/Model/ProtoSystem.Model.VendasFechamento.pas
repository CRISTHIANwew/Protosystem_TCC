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
    Panel4: TPanel;
    Shape7: TShape;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    sqlInsertProdutos: TFDQuery;
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
  procedure TransfereInformacoes;
  procedure IniciaComponentes;
  procedure AtualizaTotais;
  procedure FechaVenda;
  public
    { Public declarations }
    var
      TotalGeralFLT: double;
  end;

var
  frmVendasFechamento: TfrmVendasFechamento;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.Vendas;

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

procedure TfrmVendasFechamento.SpeedButton1Click(Sender: TObject);
begin
  FechaVenda;
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
  sqlInsertProdutos.Connection:=DM.conexao;
  dm.cdsVendaProdutos.First;
  while not dm.cdsVendaProdutos.Eof do
  begin
    //(ID_PEDIDO, ID_PRODUTO, DESCRICAO, VALOR_UNIT, QUANTIDADE, VALOR_TOTAL) VALUES (:ID_PEDIDO, :ID_PRODUTO, :DESCRICAO, :VALOR_UNIT, :QUANTIDADE, :VALOR_TOTAL)';
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



end;

end.
