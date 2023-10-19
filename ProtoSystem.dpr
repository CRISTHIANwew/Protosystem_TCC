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
  ProtoSystem.Model.CadastroFornecedor in 'Source\Model\ProtoSystem.Model.CadastroFornecedor.pas' {Frm_CadFornecedor},
  ProtoSystem.Model.Vendas in 'Source\Model\ProtoSystem.Model.Vendas.pas' {Frm_Vendas},
  ProtoSystem.View.TelaPadrao in 'Source\View\ProtoSystem.View.TelaPadrao.pas' {formTelaPadrao},
  ProtoSystem.Model.CadastroDeContasReceber in 'Source\Model\ProtoSystem.Model.CadastroDeContasReceber.pas' {Fom_CadastroContasReceber},
  ProtoSystem.Model.VendasFechamento in 'Source\Model\ProtoSystem.Model.VendasFechamento.pas' {frmVendasFechamento},
  ProtoSystem.Model.ReportsVenda in 'Source\Model\ProtoSystem.Model.ReportsVenda.pas' {frmReportsVenda},
  ProtoSystem.Model.Impressao in 'Source\Model\ProtoSystem.Model.Impressao.pas' {frmFortesReportes};

{$R *.res}

begin
//ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Login, Frm_Login);
  Application.CreateForm(TfrmFortesReportes, frmFortesReportes);
  if TFrm_Login.Login then
    Application.Run
  else
    Application.Terminate
end.
