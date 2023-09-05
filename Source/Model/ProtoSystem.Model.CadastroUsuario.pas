unit ProtoSystem.Model.CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrm_CadUsuario = class(TForm)
    Query_user: TFDQuery;
    DS_user: TDataSource;
    Query_userid: TFDAutoIncField;
    Query_userpassword: TStringField;
    Query_userusername: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    PageControl1: TPageControl;
    TabOperacao: TTabSheet;
    TabPesquisa: TTabSheet;
    pnl_dados_user: TPanel;
    pnlButtons: TPanel;
    pnlEditar: TPanel;
    ShpNovo: TShape;
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
    Panel1: TPanel;
    DBLabeledEdit1: TDBLabeledEdit;
    DBLabeledEdit2: TDBLabeledEdit;
    DBLabeledEdit3: TDBLabeledEdit;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadUsuario: TFrm_CadUsuario;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TFrm_CadUsuario.btnNovoClick(Sender: TObject);
begin
  Query_user.Insert
end;

procedure TFrm_CadUsuario.btnAlterarClick(Sender: TObject);
begin
  Query_user.Edit
end;

procedure TFrm_CadUsuario.btnSalvarClick(Sender: TObject);
begin

  if Query_user.State in [dsInsert, dsEdit] then
    Query_user.Post
end;

procedure TFrm_CadUsuario.DBGrid1DblClick(Sender: TObject);
begin
  TabOperacao.Visible := true;
  TabPesquisa.Visible := false;
end;

procedure TFrm_CadUsuario.btnEditarClick(Sender: TObject);
begin
  TabOperacao.Visible := false;
  TabPesquisa.Visible := true;
  Query_user.Edit
end;

procedure TFrm_CadUsuario.btnExcluirClick(Sender: TObject);
begin
  Query_user.Delete
end;

procedure TFrm_CadUsuario.btnCadastrarClick(Sender: TObject);
begin
  Query_user.Insert
end;

procedure TFrm_CadUsuario.btnCancelarClick(Sender: TObject);
begin
  Query_user.Cancel
end;

end.
