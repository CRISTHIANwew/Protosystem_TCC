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
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Shape2: TShape;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Shape3: TShape;
    Edit3: TEdit;
    GroupBox4: TGroupBox;
    Shape4: TShape;
    Edit4: TEdit;
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
    procedure gridTabelaClienteCellClick(Column: TColumn);
  private
    var
      idClienteINT: Integer;
      cpfcnpjINT: integer;
      rgieINT: integer;
      idClienteSTR: string;
      cpfcnpjSTR: string;
      rgieSTR: string;
      NomeClienteSTR: string;
  procedure TransfereInformacoes;
  public
    { Public declarations }
  end;

var
  frmVendasFechamento: TfrmVendasFechamento;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.Vendas;

procedure TfrmVendasFechamento.gridTabelaClienteCellClick(Column: TColumn);
begin
   TransfereInformacoes;
end;

procedure TfrmVendasFechamento.TransfereInformacoes;
begin
 var CellClient := gridTabelaCliente.DataSource.DataSet.RecNo;
  idClienteINT := sqlCliente.FieldByName('ID').AsInteger;
  NomeClienteSTR := sqlCliente.FieldByName('NOME').AsString;
  cpfcnpjINT := sqlCliente.FieldByName('CPFCNPJ').AsInteger;
  rgieINT := sqlCliente.FieldByName('RGIE').AsInteger;

  idClienteSTR := IntToStr(idClienteINT);
  cpfcnpjSTR := IntToStr(cpfcnpjINT);
  rgieSTR := IntToStr(rgieINT);

  edtIdCliente.Text := idClienteSTR;
  edtNomeCliente.Text := NomeClienteSTR;
  edtCPFCNPJ.Text := cpfcnpjSTR;
  edtRGIE.Text := rgieSTR;
end;

end.
