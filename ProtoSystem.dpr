program Project1;

uses
  Vcl.Forms,
  ProtoSystem.View.MenuPrincipal in 'Source\View\ProtoSystem.View.MenuPrincipal.pas' {Frm_Principal},
  ProtoSystem.Controller.Dm in 'Source\Controller\ProtoSystem.Controller.Dm.pas' {DM: TDataModule},
  ProtoSystem.Model.CadastroProduto in 'Source\Model\ProtoSystem.Model.CadastroProduto.pas' {Frm_CadProd},
  Vcl.Themes,
  Vcl.Styles,
  ProtoSystem.Model.CadastroCliente in 'Source\Model\ProtoSystem.Model.CadastroCliente.pas' {Frm_CadCliente},
  ProtoSystem.View.Login in 'Source\View\ProtoSystem.View.Login.pas' {Frm_Login},
  ProtoSystem.Model.PesquisaEstoque in 'Source\Model\ProtoSystem.Model.PesquisaEstoque.pas' {Frm_PesEstoque},
  ProtoSystem.Model.CadastroUsuario in 'Source\Model\ProtoSystem.Model.CadastroUsuario.pas' {Frm_CadUsuario},
  ProtoSystem.Model.CadastroFornecedor in 'Source\Model\ProtoSystem.Model.CadastroFornecedor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TForm1, Form1);
  if TFrm_Login.Login then
    Application.Run
  else
    Application.Terminate

end.
