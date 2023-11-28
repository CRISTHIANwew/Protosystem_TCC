unit ProtoSystem.Printed.ReportsRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TfrmReportsRelatorioVenda = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    lbPeriodo: TRLLabel;
    RLBand4: TRLBand;
    RLLabel11: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    DS_RELATORIO: TDataSource;
    RLDBMemo4: TRLDBMemo;
    RLLabel8: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportsRelatorioVenda: TfrmReportsRelatorioVenda;

implementation

{$R *.dfm}

uses ProtoSystem.Model.InterfaceRelatorioVendas;

end.
