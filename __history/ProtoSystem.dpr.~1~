program Project1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UCadprodpas in 'UCadprodpas.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  UCadCliente in 'UCadCliente.pas' {Form3},
  ULoguin in 'ULoguin.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);

  Form4 := TForm4.Create(nil);
  FORM4.ShowModal;

  Application.CreateForm(TForm1, Form1);

  FORM4.Hide;
  FORM4.Free;

  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);

  Application.Run;
end.
