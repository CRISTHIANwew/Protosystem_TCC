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
  ProtoSystem.Model.CadastroDeContasReceber in 'Source\Model\ProtoSystem.Model.CadastroDeContasReceber.pas' {Frm_CadastroContasReceber},
  ProtoSystem.Model.VendasFechamento in 'Source\Model\ProtoSystem.Model.VendasFechamento.pas' {frmVendasFechamento},
  ProtoSystem.Printed.ReportsPedidoDeVenda in 'Source\Printed\ProtoSystem.Printed.ReportsPedidoDeVenda.pas' {frmReportsPedidoDeVenda},
  ProtoSystem.Model.PesquisaCliente in 'Source\Model\ProtoSystem.Model.PesquisaCliente.pas' {frmPesquisaCliente},
  ProtoSystem.Model.BaixaDocumentoReceber in 'Source\Model\ProtoSystem.Model.BaixaDocumentoReceber.pas' {frm_BaixaDocumentoReceber},
  ProtoSystem.Utils.Validates in 'Source\Utils\ProtoSystem.Utils.Validates.pas',
  ProtoSystem.Model.PesquisaSaldoCaixa in 'Source\Model\ProtoSystem.Model.PesquisaSaldoCaixa.pas' {frmPesquisaSaldoCaixa},
  ProtoSystem.Model.PesquisaSaldoBanco in 'Source\Model\ProtoSystem.Model.PesquisaSaldoBanco.pas' {frmPesquisaSaldoBanco},
  ProtoSystem.Model.CadastroMovimentosBancarios in 'Source\Model\ProtoSystem.Model.CadastroMovimentosBancarios.pas' {frmCadastroMovimento},
  ProtoSystem.Model.CadastroLancamentoCaixa in 'Source\Model\ProtoSystem.Model.CadastroLancamentoCaixa.pas' {frmLancamentoDeCaixa},
  ProtoSystem.Model.CadastroDeContasPagar in 'Source\Model\ProtoSystem.Model.CadastroDeContasPagar.pas' {frmCadastroContasPagar},
  ProtoSystem.Model.PesquisaFornecedor in 'Source\Model\ProtoSystem.Model.PesquisaFornecedor.pas' {frmPesquisaFornecedor},
  ProtoSystem.Model.BaixaDocumentoPagar in 'Source\Model\ProtoSystem.Model.BaixaDocumentoPagar.pas' {frmBaixaDocumentosPagar},
  ProtoSystem.Printed.ReportsRelatorioProdutos in 'Source\Printed\ProtoSystem.Printed.ReportsRelatorioProdutos.pas' {frmReportsRelatorioProdutos},
  ProtoSystem.Model.InterfaceRelatorioProd in 'Source\Model\ProtoSystem.Model.InterfaceRelatorioProd.pas' {frmInterfaceRelatorioProd},
  ProtoSystem.Model.InterfaceRelatorioMovimentacoes in 'Source\Model\ProtoSystem.Model.InterfaceRelatorioMovimentacoes.pas' {frmInterfaceRelatorioMovimentacoes},
  ProtoSystem.Printed.ReportsRelatorioMovimentacoes in 'Source\Printed\ProtoSystem.Printed.ReportsRelatorioMovimentacoes.pas' {frmReportsRelatorioMovimentacoes},
  ProtoSystem.Model.InterfaceRelatorioLancamentos in 'Source\Model\ProtoSystem.Model.InterfaceRelatorioLancamentos.pas' {frmInterfaceRelatorioLancamentos},
  ProtoSystem.Printed.ReportsRelatoriolancamentos in 'Source\Printed\ProtoSystem.Printed.ReportsRelatoriolancamentos.pas' {frmReportsRelatorioLancamentos},
  ProtoSystem.Model.InterfaceRelatorioVendas in 'Source\Model\ProtoSystem.Model.InterfaceRelatorioVendas.pas' {frmInterfaceRelatorioVendas},
  ProtoSystem.Printed.ReportsRelatorioVendas in 'Source\Printed\ProtoSystem.Printed.ReportsRelatorioVendas.pas' {frmReportsRelatorioVenda};

{$R *.res}

begin
//ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := false;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Login, Frm_Login);
  if TFrm_Login.Login then
    Application.Run
  else
    Application.Terminate
end.
