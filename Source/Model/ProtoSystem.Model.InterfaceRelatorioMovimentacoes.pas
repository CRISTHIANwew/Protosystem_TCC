unit ProtoSystem.Model.InterfaceRelatorioMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.WinXCalendars, Vcl.WinXPickers, Vcl.StdCtrls;

type
  TfrmInterfaceRelatorioMovimentacoes = class(TForm)
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
    DT_Inicial: TCalendarPicker;
    Label1: TLabel;
    Label2: TLabel;
    DT_Final: TCalendarPicker;
    procedure SpeedButton6Click(Sender: TObject);
    procedure DT_InicialChange(Sender: TObject);
    procedure DT_FinalChange(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaDatasSQL;
  public
    { Public declarations }
  end;

var
  frmInterfaceRelatorioMovimentacoes: TfrmInterfaceRelatorioMovimentacoes;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm,
  ProtoSystem.Printed.ReportsRelatorioMovimentacoes;

procedure TfrmInterfaceRelatorioMovimentacoes.btnGerarClick(Sender: TObject);
begin
frmReportsRelatorioMovimentacoes.lbPeriodo.Caption:='Periodo Selecionado: '+dm.RPdtInicial+' At� '+dm.RPdtFinal;
dm.SQL_RelatorioMovimentacoes.Open;
dm.SQL_RelatorioMovimentacoes.Refresh;
frmReportsRelatorioMovimentacoes.RLReport1.Preview();
end;

procedure TfrmInterfaceRelatorioMovimentacoes.DT_FinalChange(Sender: TObject);
begin
  dm.RPdtFinal:=DateToStr(DT_Final.Date);
  //AtualizaDatasSQL;
end;

procedure TfrmInterfaceRelatorioMovimentacoes.DT_InicialChange(Sender: TObject);
begin
  dm.RPdtInicial:=DateToStr(DT_Inicial.Date);
  //AtualizaDatasSQL;
end;

procedure TfrmInterfaceRelatorioMovimentacoes.SpeedButton6Click(
  Sender: TObject);
begin
  close;
end;

procedure TfrmInterfaceRelatorioMovimentacoes.AtualizaDatasSQL;
begin
  dm.SQL_RelatorioMovimentacoes.close;
  dm.SQL_RelatorioMovimentacoes.ParamByName('DATAINICIAL').AsDate:=DT_Inicial.Date;
  dm.SQL_RelatorioMovimentacoes.ParamByName('DATAFINAL').AsDate:=DT_Final.Date;
  dm.SQL_RelatorioMovimentacoes.Open;
end;

end.
