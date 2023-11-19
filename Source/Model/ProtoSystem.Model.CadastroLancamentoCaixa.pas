unit ProtoSystem.Model.CadastroLancamentoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmLancamentoDeCaixa = class(TForm)
    Panel1: TPanel;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    PgcUsuario: TPageControl;
    TabOperacao: TTabSheet;
    Panel4: TPanel;
    pnl_dados_user: TPanel;
    Panel15: TPanel;
    Shape34: TShape;
    edtID: TDBLabeledEdit;
    Panel5: TPanel;
    Shape1: TShape;
    edtUsuario: TDBLabeledEdit;
    Panel6: TPanel;
    Shape2: TShape;
    edtSenha: TDBLabeledEdit;
    Panel7: TPanel;
    Shape3: TShape;
    DBLabeledEdit1: TDBLabeledEdit;
    Panel9: TPanel;
    Shape4: TShape;
    gpTipo: TRadioGroup;
    Panel10: TPanel;
    Shape5: TShape;
    edtTipo: TDBLabeledEdit;
    TabPesquisa: TTabSheet;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    pnlButtons: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    pnlSalvar: TPanel;
    shpSalvar: TShape;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    ShpCancelar: TShape;
    btnCancelar: TSpeedButton;
    SQL_Lancamento_Caixa: TFDQuery;
    DS_Lancamento_Caixa: TDataSource;
    SQL_Lancamento_CaixaID: TFDAutoIncField;
    SQL_Lancamento_CaixaDATALANCAMENTO: TDateTimeField;
    SQL_Lancamento_CaixaVALORLANCAMENTO: TFloatField;
    SQL_Lancamento_CaixaTIPO: TStringField;
    SQL_Lancamento_CaixaOBSERVACAO: TStringField;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    var
    SALDOCX: double;
    ValorMov: double;
    procedure AtualizaSaldoBanco;
  public
    { Public declarations }
  end;

var
  frmLancamentoDeCaixa: TfrmLancamentoDeCaixa;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TfrmLancamentoDeCaixa.btnCadastrarClick(Sender: TObject);
begin
  SQL_Lancamento_Caixa.Insert;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TfrmLancamentoDeCaixa.btnCancelarClick(Sender: TObject);
begin
  SQL_Lancamento_Caixa.Cancel;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  btnCadastrar.Enabled := true;
end;

procedure TfrmLancamentoDeCaixa.btnSalvarClick(Sender: TObject);
begin
if gpTipo.ItemIndex >-1 then
begin
  if SQL_Lancamento_Caixa.State in [dsInsert, dsEdit] then
    begin
        ValorMov:= StrToFloat(edtSenha.Text);
        AtualizaSaldoBanco;
        SQL_Lancamento_Caixa.Post;
        // desabilitar salvar e cancelar
        btnSalvar.Enabled := false;
        btnCancelar.Enabled := false;
        btnCadastrar.Enabled := true;
        SQL_Lancamento_Caixa.Refresh;
      end;
    end;
    gpTipo.ItemIndex:=-1;
end;

procedure TfrmLancamentoDeCaixa.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLancamentoDeCaixa.AtualizaSaldoBanco;
  var
  NovoSaldo: double;
  SqlUpdate: string;
  TipoMov: string;
begin
  dm.FDQuery.SQL.Text.Empty;
  dm.FDQuery.SQL.Text:='SELECT SALDO_CAIXA FROM CAIXA WHERE ID=1';
  dm.FDQuery.Open;
  SALDOCX := dm.FDQuery.FieldByName('SALDO_CAIXA').AsFloat;
  dm.FDQuery.Close;
  ShowMessage('saldo do caixa: '+FloatToStr(SALDOCX));
  if gpTipo.ItemIndex=0 then
    begin
      NovoSaldo:=SALDOCX-ValorMov;
      TipoMov:='SAIDA';
      ShowMessage('Novo Saldo: '+FloatToStr(NovoSaldo));
    end
  else if gpTipo.ItemIndex=1 then
    begin
      NovoSaldo:=SALDOCX+ValorMov;
      TipoMov:='ENTRADA';
      ShowMessage('Novo Saldo: '+FloatToStr(NovoSaldo));
    end;
  edtTipo.Text:=TipoMov;
  dm.FDQuery.SQL.Text :='UPDATE CAIXA SET SALDO_CAIXA = :NovoSaldo WHERE ID =1';
  dm.FDQuery.ParamByName('NovoSaldo').AsFloat := NovoSaldo;
  dm.FDQuery.ExecSQL;
end;

end.
