unit ProtoSystem.Model.CadastroMovimentosBancarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadastroMovimento = class(TForm)
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
    SQL_MovimentoBan: TFDQuery;
    DS_MovimentoBan: TDataSource;
    SQL_MovimentoBanID: TFDAutoIncField;
    SQL_MovimentoBanVALORMOVIMENTO: TFloatField;
    SQL_MovimentoBanOBSERVACAO: TStringField;
    Panel7: TPanel;
    Shape3: TShape;
    DBLabeledEdit1: TDBLabeledEdit;
    Panel9: TPanel;
    Shape4: TShape;
    gpTipo: TRadioGroup;
    SQL_MovimentoBanTIPO: TStringField;
    Panel10: TPanel;
    Shape5: TShape;
    edtTipo: TDBLabeledEdit;
    SQL_MovimentoBanDATAMOVIMENTO: TDateTimeField;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var
    SALDOBAN: double;
    ValorMov: double;
    procedure AtualizaSaldoBanco;
  public
    { Public declarations }
  end;

var
  frmCadastroMovimento: TfrmCadastroMovimento;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TfrmCadastroMovimento.btnCadastrarClick(Sender: TObject);
begin
  SQL_MovimentoBan.Insert;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TfrmCadastroMovimento.btnCancelarClick(Sender: TObject);
begin
  SQL_MovimentoBan.Cancel;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  btnCadastrar.Enabled := true;
end;

procedure TfrmCadastroMovimento.btnSalvarClick(Sender: TObject);
begin
if gpTipo.ItemIndex >-1 then
begin
  if SQL_MovimentoBan.State in [dsInsert, dsEdit] then
    begin
        ValorMov:= StrToFloat(edtSenha.Text);
        AtualizaSaldoBanco;
        SQL_MovimentoBan.Post;
        // desabilitar salvar e cancelar
        btnSalvar.Enabled := false;
        btnCancelar.Enabled := false;
        btnCadastrar.Enabled := true;
        SQL_MovimentoBan.Refresh;
      end;
    end;
    gpTipo.ItemIndex:=-1;
end;
procedure TfrmCadastroMovimento.FormCreate(Sender: TObject);
begin
 SQL_MovimentoBan.open;
end;

procedure TfrmCadastroMovimento.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroMovimento.AtualizaSaldoBanco;
  var
  NovoSaldo: double;
  SqlUpdate: string;
  TipoMov: string;
begin
  dm.FDQuery.SQL.Text.Empty;
  dm.FDQuery.SQL.Text:='SELECT SALDO_BANCO FROM BANCO WHERE ID=1';
  dm.FDQuery.Open;
  SALDOBAN := dm.FDQuery.FieldByName('SALDO_BANCO').AsFloat;
  dm.FDQuery.Close;
  ShowMessage('saldo do banco: '+FloatToStr(SALDOBAN));
  if gpTipo.ItemIndex=0 then
    begin
      NovoSaldo:=SALDOBAN-ValorMov;
      TipoMov:='SAIDA';
      ShowMessage('Novo Saldo: '+FloatToStr(NovoSaldo));
    end
  else if gpTipo.ItemIndex=1 then
    begin
      NovoSaldo:=SALDOBAN+ValorMov;
      TipoMov:='ENTRADA';
      ShowMessage('Novo Saldo: '+FloatToStr(NovoSaldo));
    end;
  edtTipo.Text:=TipoMov;
  dm.FDQuery.SQL.Text :='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';
  dm.FDQuery.ParamByName('NovoSaldo').AsFloat := NovoSaldo;
  dm.FDQuery.ExecSQL;
end;

end.
