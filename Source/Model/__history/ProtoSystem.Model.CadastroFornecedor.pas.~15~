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
    Panel4: TPanel;
    pnl_dados_user: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    Shape26: TShape;
    btnForEditar: TSpeedButton;
    Panel17: TPanel;
    Shape27: TShape;
    btnForCadastrar: TSpeedButton;
    Panel18: TPanel;
    Shape28: TShape;
    btnForSalvar: TSpeedButton;
    Panel19: TPanel;
    Shape29: TShape;
    btnForCancelar: TSpeedButton;
    Panel20: TPanel;
    Shape30: TShape;
    btnForExcluir: TSpeedButton;
    Panel15: TPanel;
    Shape34: TShape;
    edtId: TDBLabeledEdit;
    Panel5: TPanel;
    Shape9: TShape;
    edtNome2: TDBLabeledEdit;
    Panel6: TPanel;
    Shape13: TShape;
    edtCpfCnpj2: TDBLabeledEdit;
    Panel7: TPanel;
    Shape16: TShape;
    edtRgIe2: TDBLabeledEdit;
    Panel9: TPanel;
    Shape17: TShape;
    editEndereco2: TDBLabeledEdit;
    Panel10: TPanel;
    Shape21: TShape;
    edtBairro2: TDBLabeledEdit;
    Panel11: TPanel;
    Shape23: TShape;
    edtNumero2: TDBLabeledEdit;
    Panel12: TPanel;
    Shape25: TShape;
    edtCep2: TDBLabeledEdit;
    Panel13: TPanel;
    Shape31: TShape;
    edtCidade2: TDBLabeledEdit;
    Panel21: TPanel;
    Shape32: TShape;
    edtCelular2: TDBLabeledEdit;
    Panel22: TPanel;
    Shape33: TShape;
    edtEmail2: TDBLabeledEdit;
    TabPesquisa: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    SpeedButton6: TSpeedButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnForCadastrarClick(Sender: TObject);
    procedure btnForEditarClick(Sender: TObject);
    procedure btnForSalvarClick(Sender: TObject);
    procedure btnForCancelarClick(Sender: TObject);
    procedure btnForExcluirClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
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

procedure TFrm_CadFornecedor.btnForCadastrarClick(Sender: TObject);
begin
  QueryFORNECEDOR.Insert;
  // desabilita editar, excluir.
  btnForEditar.Enabled := false;
  btnForExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnForSalvar.Enabled := true;
  btnForCancelar.Enabled := true;
end;

procedure TFrm_CadFornecedor.btnForEditarClick(Sender: TObject);
begin
    TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  QueryFORNECEDOR.Edit;
  // desabilitar cadastar, excluir.
  btnForCadastrar.Enabled := false;
  btnForExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnForSalvar.Enabled := true;
  btnForCancelar.Enabled := true;
end;

procedure TFrm_CadFornecedor.btnForSalvarClick(Sender: TObject);
begin
  if QueryFORNECEDOR.State in [dsInsert, dsEdit] then
    QueryFORNECEDOR.Post;
  // desabilitar salvar e cancelar
  btnForSalvar.Enabled := false;
  btnForCancelar.Enabled := false;
  // habilitar editar, excluir, cadastrar.
  btnForEditar.Enabled := true;
  btnForExcluir.Enabled := true;
  btnForCadastrar.Enabled := true;
  QueryFORNECEDOR.Refresh;
end;

procedure TFrm_CadFornecedor.btnForCancelarClick(Sender: TObject);
begin
  QueryFORNECEDOR.Cancel;
  // desabilitar salvar e cancelar
  btnForSalvar.Enabled := false;
  btnForCancelar.Enabled := false;
  // habilitar editar, excluir, cadastrar.
  btnForEditar.Enabled := true;
  btnForExcluir.Enabled := true;
  btnForCadastrar.Enabled := true;
end;

procedure TFrm_CadFornecedor.btnForExcluirClick(Sender: TObject);
begin
  QueryFORNECEDOR.Delete
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

procedure TFrm_CadFornecedor.SpeedButton6Click(Sender: TObject);
begin
  CLOSE;
end;

end.
