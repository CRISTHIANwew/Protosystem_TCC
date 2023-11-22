unit ProtoSystem.Model.InterfaceRelatorioProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmInterfaceRelatorioProd = class(TForm)
    Panel1: TPanel;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    SpeedButton6: TSpeedButton;
    Panel2: TPanel;
    pnlButtons: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnGerar: TSpeedButton;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterfaceRelatorioProd: TfrmInterfaceRelatorioProd;

implementation

{$R *.dfm}

uses ProtoSystem.Printed.ReportsRelatorioProdutos, ProtoSystem.Controller.Dm;

procedure TfrmInterfaceRelatorioProd.btnGerarClick(Sender: TObject);
begin
Application.CreateForm(TfrmReportsRelatorioProdutos, frmReportsRelatorioProdutos);
dm.SQL_RelatorioProdutos.Connection:=dm.conexao;
dm.SQL_RelatorioProdutos.SQL.Text:='SELECT * FROM PRODUTO';
dm.SQL_RelatorioProdutos.open;
dm.SQL_RelatorioProdutos.Refresh;
frmReportsRelatorioProdutos.RLReport1.Preview();
end;

procedure TfrmInterfaceRelatorioProd.SpeedButton6Click(Sender: TObject);
begin
  close;
  frmReportsRelatorioProdutos.Free;
end;

end.
