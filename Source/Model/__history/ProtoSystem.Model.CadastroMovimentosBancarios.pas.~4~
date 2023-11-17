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
    pnlEditar: TPanel;
    Shpeditar: TShape;
    btnEditar: TSpeedButton;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    pnlSalvar: TPanel;
    shpSalvar: TShape;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    ShpCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlExcluir: TPanel;
    shpExcluir: TShape;
    btnExcluir: TSpeedButton;
    SQL_MovimentoBan: TFDQuery;
    DS_MovimentoBan: TDataSource;
    SQL_MovimentoBanID: TFDAutoIncField;
    SQL_MovimentoBanDATAMOVIMENTO: TDateTimeField;
    SQL_MovimentoBanVALORMOVIMENTO: TFloatField;
    SQL_MovimentoBanOBSERVACAO: TStringField;
    Panel7: TPanel;
    Shape3: TShape;
    DBLabeledEdit1: TDBLabeledEdit;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
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
  // desabilita editar, excluir.
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TfrmCadastroMovimento.btnCancelarClick(Sender: TObject);
begin
  SQL_MovimentoBan.Cancel;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  // habilitar editar, excluir, cadastrar.
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  btnCadastrar.Enabled := true;
end;

procedure TfrmCadastroMovimento.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  SQL_MovimentoBan.Edit;
  // desabilitar cadastar, excluir.
  btnCadastrar.Enabled := false;
  btnExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TfrmCadastroMovimento.btnExcluirClick(Sender: TObject);
begin
  SQL_MovimentoBan.Delete;
end;

procedure TfrmCadastroMovimento.btnSalvarClick(Sender: TObject);
begin
if SQL_MovimentoBan.State in [dsInsert, dsEdit] then
  begin
      SQL_MovimentoBan.Post;
      // desabilitar salvar e cancelar
      btnSalvar.Enabled := false;
      btnCancelar.Enabled := false;
      // habilitar editar, excluir, cadastrar.
      btnEditar.Enabled := true;
      btnExcluir.Enabled := true;
      btnCadastrar.Enabled := true;
      SQL_MovimentoBan.Refresh;
    end;
  ValorMov:= StrToFloat(edtSenha.Text);
  end;

procedure TfrmCadastroMovimento.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroMovimento.AtualizaSaldoBanco;
  var
  NovoSaldo: double;
  SqlUpdate: string;
begin
  SALDOBAN:=0;
  dm.FDQuery.SQL.Text.Empty;
  dm.FDQuery.SQL.Text:='SELECT SALDO_BANCO FROM BANCO WHERE ID=1';
  dm.FDQuery.Open;
  SALDOBAN := dm.FDQuery.FieldByName('SALDO_BANCO').AsFloat;
  dm.FDQuery.Close;

  NovoSaldo:=SALDOBAN+ValorMov;
  SqlUpdate:='UPDATE BANCO SET SALDO_BANCO = :NovoSaldo WHERE ID =1';

end;

end.
