unit ProtoSystem.Printed.ReportsRelatorioMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, RLReport;

type
  TfrmReportsRelatorioMovimentacoes = class(TForm)
    RLReport1: TRLReport;
    DS_RELATORIO: TDataSource;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    lbPeriodo: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    procedure RLReport1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportsRelatorioMovimentacoes: TfrmReportsRelatorioMovimentacoes;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TfrmReportsRelatorioMovimentacoes.RLReport1AfterPrint(
  Sender: TObject);
begin
//lbPeriodo.Caption:='Periodo Selecionado: '+dm.RPdtInicial+' At� '+dm.RPdtFinal;
end;

end.
