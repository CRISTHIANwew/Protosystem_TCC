unit ProtoSystem.Model.ReportsVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmReportsVenda = class(TForm)
    ReportPedido: TRLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportsVenda: TfrmReportsVenda;

implementation

{$R *.dfm}

end.
