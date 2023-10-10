unit ProtoSystem.Model.ImpressaoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  TfrmImpressaoPedido = class(TForm)
    dsImpressaoPedido: TDataSource;
    RLReport1: TRLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressaoPedido: TfrmImpressaoPedido;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm, ProtoSystem.Model.Vendas;

end.
