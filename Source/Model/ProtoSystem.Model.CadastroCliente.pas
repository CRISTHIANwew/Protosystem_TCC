unit ProtoSystem.Model.CadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrm_CadCliente = class(TForm)
    DataSource1: TDataSource;
    QueryCLIENTE: TFDQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    PgcUsuario: TPageControl;
    TabOperacao: TTabSheet;
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
    TabPesquisa: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Panel4: TPanel;
    pnl_dados_user: TPanel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    edtID: TDBLabeledEdit;
    edtNome: TDBLabeledEdit;
    edtBairro: TDBLabeledEdit;
    edtCelular: TDBLabeledEdit;
    edtCep: TDBLabeledEdit;
    edtCidade: TDBLabeledEdit;
    edtCpfCnpj: TDBLabeledEdit;
    edtEmail: TDBLabeledEdit;
    editEndereco: TDBLabeledEdit;
    edtNumero: TDBLabeledEdit;
    edtRgIe: TDBLabeledEdit;
    DBImage1: TDBImage;
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
  Frm_CadCliente: TFrm_CadCliente;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TFrm_CadCliente.btnCadastrarClick(Sender: TObject);
begin
  QueryCLIENTE.Insert;
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

procedure TFrm_CadCliente.btnCancelarClick(Sender: TObject);
begin
  QueryCLIENTE.Cancel;
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

procedure TFrm_CadCliente.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  QueryCLIENTE.Edit;
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

procedure TFrm_CadCliente.btnExcluirClick(Sender: TObject);
begin
 QueryCLIENTE.Delete
end;

procedure TFrm_CadCliente.btnSalvarClick(Sender: TObject);
begin
  if QueryCLIENTE.State in [dsInsert, dsEdit] then
    QueryCLIENTE.Post;
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
  QueryCLIENTE.Refresh;
end;

procedure TFrm_CadCliente.DBGrid1DblClick(Sender: TObject);
begin
  TabOperacao.Visible := true;
  TabPesquisa.Visible := false;
end;

procedure TFrm_CadCliente.FormCreate(Sender: TObject);
begin
         QueryCLIENTE.Active := true;
end;

end.
