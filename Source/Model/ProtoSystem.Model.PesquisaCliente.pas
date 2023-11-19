unit ProtoSystem.Model.PesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPesquisaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel12: TPanel;
    Shape12: TShape;
    Edit_pesquisa: TEdit;
    gridFornecedor: TDBGrid;
    Panel6: TPanel;
    Pnl_sair: TPanel;
    Shape15: TShape;
    btn_saircadprod: TSpeedButton;
    Panel3: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    SQL_PesquisaFornecedor: TFDQuery;
    SQL_PesquisaFornecedorID: TFDAutoIncField;
    SQL_PesquisaFornecedorNOME: TStringField;
    SQL_PesquisaFornecedorCPFCNPJ: TStringField;
    SQL_PesquisaFornecedorRGIE: TStringField;
    SQL_PesquisaFornecedorENDERECO: TStringField;
    SQL_PesquisaFornecedorBAIRRO: TStringField;
    SQL_PesquisaFornecedorCIDADE: TStringField;
    SQL_PesquisaFornecedorCEP: TStringField;
    SQL_PesquisaFornecedorNUMERO: TStringField;
    SQL_PesquisaFornecedorCELULAR: TStringField;
    SQL_PesquisaFornecedorEMAIL: TStringField;
    DS_PesquisaCliente: TDataSource;
    procedure btn_saircadprodClick(Sender: TObject);
    procedure Edit_pesquisaChange(Sender: TObject);
    procedure gridFornecedorCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure transfereinformacoes;
  end;

var
  frmPesquisaCliente: TfrmPesquisaCliente;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TfrmPesquisaCliente.btn_saircadprodClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPesquisaCliente.gridFornecedorCellClick(Column: TColumn);
begin
  transfereinformacoes;
  dm.PesquisaClienteStatus:=false;
  close;
end;

procedure TfrmPesquisaCliente.Edit_pesquisaChange(Sender: TObject);
begin
  // Verifique se o crit�rio de pesquisa n�o est� vazio
  if Edit_pesquisa.Text <> '' then
    begin
    // Atualize o filtro do DataSet ligado ao DBGrid
    // Suponha que o seu DataSet se chame "qryData" e o campo que voc� quer pesquisar seja "Nome"
    SQL_PesquisaFornecedor.Filtered := False;
    SQL_PesquisaFornecedor.Filter := 'NOME LIKE ' +
      QuotedStr('%' + Edit_pesquisa.Text + '%');
    SQL_PesquisaFornecedor.Filtered := True;
  end
  else
    // Se o crit�rio de pesquisa estiver vazio, remova o filtro
    SQL_PesquisaFornecedor.Filtered := False;
end;

procedure TfrmPesquisaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dm.PesquisaClienteStatus:=false;
end;

procedure TfrmPesquisaCliente.transfereinformacoes;
begin
  //Transferencia da celula de pesquisa selecionada
 var CellProd := gridFornecedor.DataSource.DataSet.RecNo;
  //Obt�m os dados da linha selecionada no DBGrid
  DM.IDCliente := SQL_PesquisaFornecedor.FieldByName('ID').AsString;
  DM.NOMECliente := SQL_PesquisaFornecedor.FieldByName('NOME').AsString;
end;

end.
