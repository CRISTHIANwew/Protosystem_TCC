unit ProtoSystem.Model.CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Buttons;

type
  TFrm_CadProd = class(TForm)
    DataSource1: TDataSource;
    Query_Produto: TFDQuery;
    PageControl1: TPageControl;
    TabOperacao: TTabSheet;
    TabPesquisa: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
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
    edtId: TDBLabeledEdit;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit3: TDBLabeledEdit;
    DBLabeledEdit4: TDBLabeledEdit;
    procedure Button1Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadProd: TFrm_CadProd;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TFrm_CadProd.btnCadastrarClick(Sender: TObject);
begin
  Query_Produto.Insert;
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

procedure TFrm_CadProd.btnCancelarClick(Sender: TObject);
begin
  Query_Produto.Cancel;
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

procedure TFrm_CadProd.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  Query_Produto.Edit;
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

procedure TFrm_CadProd.btnExcluirClick(Sender: TObject);
begin
  Query_Produto.Delete;
  Query_Produto.Refresh;
end;

procedure TFrm_CadProd.btnSalvarClick(Sender: TObject);
begin
  if Query_Produto.State in [dsInsert, dsEdit] then
    Query_Produto.Post;
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
  Query_Produto.Refresh;
end;

procedure TFrm_CadProd.Button1Click(Sender: TObject);
begin
  Query_Produto.Insert;
end;

procedure TFrm_CadProd.DBGrid1DblClick(Sender: TObject);
begin
  TabOperacao.Visible := true;
  TabPesquisa.Visible := false;
end;

end.
