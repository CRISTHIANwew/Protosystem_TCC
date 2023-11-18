unit ProtoSystem.Model.BaixaDocumentoReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_BaixaDocumentoReceber = class(TForm)
    Panel1: TPanel;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    btn_Fechar: TSpeedButton;
    Panel2: TPanel;
    pnlButtons: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnComfirmar: TSpeedButton;
    grid_Documentos: TDBGrid;
    SQL_PesquisaDocumentos: TFDQuery;
    ds_PesquisaDocumentos: TDataSource;
    Panel6: TPanel;
    Shape3: TShape;
    gpTipoPag: TRadioGroup;
    procedure btn_FecharClick(Sender: TObject);
    procedure btnComfirmarClick(Sender: TObject);
    procedure gpTipoPagClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GeraMovimentações;
    procedure AtualizaStatusBaixado;
    var
    SALDOBAN: double;
    SALDOCXA: double;
    NovoSaldo: double;
    SqlUpdate: string;
    IndexCond: integer;
  public
    { Public declarations }
  end;

var
  frm_BaixaDocumentoReceber: Tfrm_BaixaDocumentoReceber;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure Tfrm_BaixaDocumentoReceber.GeraMovimentações;
var ValorMov: double;
begin
  //gera mov no banco e caixa

  //Transferencia da celula de pesquisa selecionada
  var CellProd := grid_Documentos.DataSource.DataSet.RecNo;
  //Obtém os dados da linha selecionada no DBGrid
  ValorMov := SQL_PesquisaDocumentos.FieldByName('VALOR').AsFloat;

  // fazer uma pesquisa do saldo atual
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

  // calcular o movimento deacordo com o valor da venda e tipo
case IndexCond of
  0:
  begin //caixa
    NovoSaldo:=SALDOCXA+ValorMov;
    SqlUpdate:='UPDATE CAIXA SET SALDO_CAIXA = :NovoSaldo WHERE ID =1';
    // Insere os registros(MOVIMENTO/LANCAMENTO) de caixa
    dm.FDQuery.SQL.Text := 'INSERT INTO CAIXA_LANC (VALORLANCAMENTO, OBSERVACAO, TIPO) VALUES (:VALORLANCAMENTO, :OBSERVACAO, :TIPO)';
    dm.FDQuery.ParamByName('VALORLANCAMENTO').AsFloat :=ValorMov;
    dm.FDQuery.ParamByName('OBSERVACAO').AsString := 'LANÇAMENTO GERADO PELA BAIXA DE DOCUMENTOS A RECEBER';
    dm.FDQuery.ParamByName('TIPO').AsString :='ENTRADA';
    dm.FDQuery.ExecSQL;
    dm.FDQuery.Close;
  end;

  1:
  begin //banco
    NovoSaldo:=SALDOBAN+ValorMov;
    SqlUpdate:='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';
    // Insere os registros(MOVIMENTO/LANCAMENTO) de banco
    dm.FDQuery.SQL.Text := 'INSERT INTO BANCO_MOV (VALORMOVIMENTO, OBSERVACAO, TIPO) VALUES (:VALORMOVIMENTO, :OBSERVACAO, :TIPO)';
    dm.FDQuery.ParamByName('VALORMOVIMENTO').AsFloat :=ValorMov;
    dm.FDQuery.ParamByName('OBSERVACAO').AsString := 'LANÇAMENTO GERADO PELA BAIXA DE DOCUMENTOS A RECEBER';
    dm.FDQuery.ParamByName('TIPO').AsString :='ENTRADA';
    dm.FDQuery.ExecSQL;
    dm.FDQuery.Close;
  end;

end;
dm.FDQuery.SQL.Text := SQLUpdate;
dm.FDQuery.ParamByName('NovoSaldo').AsFloat := NovoSaldo;
dm.FDQuery.ExecSQL;
dm.FDQuery.Close;
end;

procedure Tfrm_BaixaDocumentoReceber.gpTipoPagClick(Sender: TObject);
begin
IndexCond:=gpTipoPag.ItemIndex;
end;

procedure Tfrm_BaixaDocumentoReceber.AtualizaStatusBaixado;
var
IDDOC: INTEGER;
begin
  //altera registro do campo Baixado S/N

  var CellProd := grid_Documentos.DataSource.DataSet.RecNo;
  //Obtém os dados do documento selecionado(ID)
  IDDOC := SQL_PesquisaDocumentos.FieldByName('ID').AsInteger;

  //atualiza campo quitado do documento
  dm.FDQuery.SQL.Text :='UPDATE DOC_RECEBER SET QUITADO ="S" WHERE ID= :ID';
  dm.FDQuery.ParamByName('ID').Asinteger:=IDDOC;
  dm.FDQuery.ExecSQL;
  dm.FDQuery.Close;
  SQL_PesquisaDocumentos.Refresh;
end;

procedure Tfrm_BaixaDocumentoReceber.btnComfirmarClick(Sender: TObject);
begin
  GeraMovimentações;
  AtualizaStatusBaixado;
end;

procedure Tfrm_BaixaDocumentoReceber.btn_FecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_BaixaDocumentoReceber.FormCreate(Sender: TObject);
begin
 SQL_PesquisaDocumentos.Active:=true;
end;

end.
