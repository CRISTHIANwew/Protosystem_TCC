program Project1;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Frm_Principal} ,
  UDataModule in 'UDataModule.pas' {DM: TDataModule} ,
  UCadprodpas in 'UCadprodpas.pas' {Frm_CadProd} ,
  Vcl.Themes,
  Vcl.Styles,
  UCadCliente in 'UCadCliente.pas' {Frm_CadCliente} ,
  ULoguin in 'ULoguin.pas' {Frm_Loguin} ,
  UPesEstoque in 'UPesEstoque.pas' {Frm_PesEstoqe} ,
  UCadUsuario in 'UCadUsuario.pas' {Frm_CadUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  if TFrm_Loguin.Login then
    Application.Run
  else
    Application.Terminate

end.
