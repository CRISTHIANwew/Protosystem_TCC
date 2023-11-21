unit ProtoSystem.Model.InterfaceRelatorioLancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmInterfaceRelatorioLancamentos = class(TForm)
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
    Panel3: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    DT_Inicial: TCalendarPicker;
    DT_Final: TCalendarPicker;
    SQL_Relatorio: TFDQuery;
    procedure btnGerarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterfaceRelatorioLancamentos: TfrmInterfaceRelatorioLancamentos;

implementation

{$R *.dfm}

uses ProtoSystem.Printed.ReportsRelatoriolancamentos;

procedure TfrmInterfaceRelatorioLancamentos.btnGerarClick(Sender: TObject);
begin
  SQL_Relatorio.Open;
  SQL_Relatorio.Refresh;
  frmReportsRelatorioLancamentos.RLReport1.Preview();
end;

procedure TfrmInterfaceRelatorioLancamentos.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

end.
