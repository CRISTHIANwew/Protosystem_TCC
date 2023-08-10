program Project1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UCadprodpas in 'UCadprodpas.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Dark');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
