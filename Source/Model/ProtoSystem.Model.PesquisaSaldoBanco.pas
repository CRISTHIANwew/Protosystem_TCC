unit ProtoSystem.Model.PesquisaSaldoBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPesquisaSaldoBanco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    gridFornecedor: TDBGrid;
    Panel6: TPanel;
    Pnl_sair: TPanel;
    Shape15: TShape;
    btn_saircadprod: TSpeedButton;
    Panel3: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    SQL_PesquisaSaldo: TFDQuery;
    DS_PesquisaSaldo: TDataSource;
    procedure btn_saircadprodClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaSaldoBanco: TfrmPesquisaSaldoBanco;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TfrmPesquisaSaldoBanco.btnCadastrarClick(Sender: TObject);
begin
SQL_PesquisaSaldo.Refresh;
end;

procedure TfrmPesquisaSaldoBanco.btn_saircadprodClick(Sender: TObject);
begin
  close;
end;

end.
