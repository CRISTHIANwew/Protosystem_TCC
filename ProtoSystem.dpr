program Project1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Frm_Principal},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UCadprodpas in 'UCadprodpas.pas' {Frm_CadProd},
  Vcl.Themes,
  Vcl.Styles,
  UCadCliente in 'UCadCliente.pas' {Frm_CadCliente},
  ULoguin in 'ULoguin.pas' {Frm_Loguin},
  UPesEstoque in 'UPesEstoque.pas' {Frm_PesEstoqe},
  UCadUsuario in 'UCadUsuario.pas' {Frm_CadUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  // Application.CreateForm(TForm1, Form1);
  Frm_Loguin := TFrm_Loguin.Create(nil);

  Frm_Loguin.ShowModal;

  Application.CreateForm(TFrm_Principal, Frm_Principal);

  Frm_Loguin.Hide;
  Frm_Loguin.Free;

  Application.CreateForm(TFrm_CadProd, Frm_CadProd);
  Application.CreateForm(TFrm_PesEstoqe, Frm_PesEstoqe);
  Application.CreateForm(TFrm_CadCliente, Frm_CadCliente);

  Application.Run;
end.