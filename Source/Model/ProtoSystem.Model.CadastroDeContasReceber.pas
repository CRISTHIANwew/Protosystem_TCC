unit ProtoSystem.Model.CadastroDeContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFrm_CadastroContasReceber = class(TForm)
    SQL_DocumentosaReceber: TFDQuery;
    DS_DocumentosaReceber: TDataSource;
    Panel1: TPanel;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    Q: TPageControl;
    TabOperacao: TTabSheet;
    Panel4: TPanel;
    pnl_dados_user: TPanel;
    Panel15: TPanel;
    Shape34: TShape;
    edtID: TDBLabeledEdit;
    Panel5: TPanel;
    Shape1: TShape;
    edtNome: TDBLabeledEdit;
    Panel6: TPanel;
    Shape2: TShape;
    edtSenha: TDBLabeledEdit;
    TabPesquisa: TTabSheet;
    Panel3: TPanel;
    gridDocumentos: TDBGrid;
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
    Panel9: TPanel;
    Shape4: TShape;
    btnPesquisaCliente: TSpeedButton;
    Panel7: TPanel;
    Shape3: TShape;
    DBLabeledEdit1: TDBLabeledEdit;
    Panel10: TPanel;
    Shape5: TShape;
    DBLabeledEdit2: TDBLabeledEdit;
    Panel11: TPanel;
    Shape6: TShape;
    DBLabeledEdit3: TDBLabeledEdit;
    Panel12: TPanel;
    Shape7: TShape;
    DBLabeledEdit4: TDBLabeledEdit;
    Panel13: TPanel;
    Shape8: TShape;
    DBLabeledEdit5: TDBLabeledEdit;
    Panel14: TPanel;
    Shape9: TShape;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel16: TPanel;
    Shape10: TShape;
    DBLabeledEdit7: TDBLabeledEdit;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnPesquisaClienteClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBLabeledEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure gridDocumentosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadastroContasReceber: TFrm_CadastroContasReceber;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.PesquisaCliente;



procedure TFrm_CadastroContasReceber.btnCadastrarClick(Sender: TObject);
begin
  SQL_DocumentosaReceber.Insert;
  // desabilita editar, excluir.
  btnEditar.Enabled := false;
  btnExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TFrm_CadastroContasReceber.btnCancelarClick(Sender: TObject);
begin
  SQL_DocumentosaReceber.Cancel;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  // habilitar editar, excluir, cadastrar.
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  btnCadastrar.Enabled := true;
end;

procedure TFrm_CadastroContasReceber.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  SQL_DocumentosaReceber.Edit;
  // desabilitar cadastar, excluir.
  btnCadastrar.Enabled := false;
  btnExcluir.Enabled := false;
  // habilita salvar e cancelar
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
end;

procedure TFrm_CadastroContasReceber.btnExcluirClick(Sender: TObject);
begin
  SQL_DocumentosaReceber.Delete
end;

procedure TFrm_CadastroContasReceber.btnPesquisaClienteClick(
  Sender: TObject);
begin
var
    frmPesquisaCliente: TfrmPesquisaCliente; // Declare uma variável para o formulário
  frmPesquisaCliente := TfrmPesquisaCliente.Create(Self);
  // Crie uma instância do formulário
  try
    dm.PesquisaClienteStatus:=true;
    frmPesquisaCliente.Visible:=false;
    frmPesquisaCliente.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmPesquisaCliente.Free; // Libere a memória após fechar o formulário
  end;
  if dm.PesquisaClienteStatus=false then
    begin
      edtID.Text:= dm.IDCliente;
      edtNome.Text:= dm.NOMECliente;
    end;
end;

procedure TFrm_CadastroContasReceber.btnSalvarClick(Sender: TObject);
begin
  if SQL_DocumentosaReceber.State in [dsInsert, dsEdit] then
    SQL_DocumentosaReceber.Post;
  // desabilitar salvar e cancelar
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  // habilitar editar, excluir, cadastrar.
  btnEditar.Enabled := true;
  btnExcluir.Enabled := true;
  btnCadastrar.Enabled := true;
  SQL_DocumentosaReceber.Refresh;
end;

procedure TFrm_CadastroContasReceber.DBLabeledEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;
end;

procedure TFrm_CadastroContasReceber.gridDocumentosDblClick(Sender: TObject);
begin
  TabOperacao.Visible := true;
  TabPesquisa.Visible := false;
end;

procedure TFrm_CadastroContasReceber.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
