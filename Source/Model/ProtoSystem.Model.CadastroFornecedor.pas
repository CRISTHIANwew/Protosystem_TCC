unit ProtoSystem.Model.CadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrm_CadFornecedor = class(TForm)
    DataSource1: TDataSource;
    QueryFORNECEDOR: TFDQuery;
    PgcUsuario: TPageControl;
    TabOperacao: TTabSheet;
    pnl_dados_user: TPanel;
    edtID: TDBLabeledEdit;
    edtNome: TDBLabeledEdit;
    edtBairro: TDBLabeledEdit;
    TabPesquisa: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    edtCelular: TDBLabeledEdit;
    edtCep: TDBLabeledEdit;
    edtCidade: TDBLabeledEdit;
    edtCpfCnpj: TDBLabeledEdit;
    edtEmail: TDBLabeledEdit;
    edtEndereco: TDBLabeledEdit;
    edtNumero: TDBLabeledEdit;
    edtRgIe: TDBLabeledEdit;
    Panel2: TPanel;
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
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadFornecedor: TFrm_CadFornecedor;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TFrm_CadFornecedor.btnCadastrarClick(Sender: TObject);
begin
  QueryFORNECEDOR.Insert;
  // desabilita editar, excluir.
  btnEditar.Enabled := false;
  Shpeditar.Brush.Color := $00D6D6D6;
  btnExcluir.Enabled := false;
  shpExcluir.Brush.Color := $00D6D6D6;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  shpSalvar.Brush.Color := $00838181;
  btnCancelar.Enabled := true;
  ShpCancelar.Brush.Color := $00838181;
end;

procedure TFrm_CadFornecedor.btnCancelarClick(Sender: TObject);
begin
  QueryFORNECEDOR.Cancel;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  shpSalvar.Brush.Color := $00D6D6D6;
  btnCancelar.Enabled := false;
  ShpCancelar.Brush.Color := $00D6D6D6;
  // habilitar editar, excluir, cadastrar.
  btnEditar.Enabled := true;
  Shpeditar.Brush.Color := $00838181;
  btnExcluir.Enabled := true;
  shpExcluir.Brush.Color := $00838181;
  btnCadastrar.Enabled := true;
  ShpCadastrar.Brush.Color := $00838181;
end;

procedure TFrm_CadFornecedor.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  QueryFORNECEDOR.Edit;
  // desabilitar cadastar, excluir.
  btnCadastrar.Enabled := false;
  ShpCadastrar.Brush.Color := $00D6D6D6;
  btnExcluir.Enabled := false;
  shpExcluir.Brush.Color := $00D6D6D6;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  shpSalvar.Brush.Color := $00838181;
  btnCancelar.Enabled := true;
  ShpCancelar.Brush.Color := $00838181;
end;

procedure TFrm_CadFornecedor.btnExcluirClick(Sender: TObject);
begin
  QueryFORNECEDOR.Delete
end;

procedure TFrm_CadFornecedor.btnSalvarClick(Sender: TObject);
begin
  if QueryFORNECEDOR.State in [dsInsert, dsEdit] then
    QueryFORNECEDOR.Post;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  shpSalvar.Brush.Color := $00D6D6D6;
  btnCancelar.Enabled := false;
  ShpCancelar.Brush.Color := $00D6D6D6;
  // habilitar editar, excluir, cadastrar.
  btnEditar.Enabled := true;
  Shpeditar.Brush.Color := $00838181;
  btnExcluir.Enabled := true;
  shpExcluir.Brush.Color := $00838181;
  btnCadastrar.Enabled := true;
  ShpCadastrar.Brush.Color := $00838181;
  QueryFORNECEDOR.Refresh;
end;

procedure TFrm_CadFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  TabOperacao.Visible := true;
  TabPesquisa.Visible := false;
end;

procedure TFrm_CadFornecedor.FormCreate(Sender: TObject);
begin
  QueryFORNECEDOR.Active := true;
end;

end.
