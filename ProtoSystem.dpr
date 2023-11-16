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
  ProtoSystem.Model.CadastroDeContasReceber in 'Source\Model\ProtoSystem.Model.CadastroDeContasReceber.pas' {Frm_CadastroContasReceber},
  ProtoSystem.Model.VendasFechamento in 'Source\Model\ProtoSystem.Model.VendasFechamento.pas' {frmVendasFechamento},
  ProtoSystem.Model.ReportsPedidoDeVenda in 'Source\Printed\ProtoSystem.Model.ReportsPedidoDeVenda.pas' {frmReportsPedidoDeVenda},
  ProtoSystem.Model.PesquisaCliente in 'Source\Model\ProtoSystem.Model.PesquisaCliente.pas' {frmPesquisaCliente},
  ProtoSystem.Model.BaixaDocumentoReceber in 'Source\Model\ProtoSystem.Model.BaixaDocumentoReceber.pas' {frm_BaixaDocumentoReceber},
  ProtoSystem.Utils.Validates in 'Source\Utils\ProtoSystem.Utils.Validates.pas',
  ProtoSystem.Model.PesquisaSaldoCaixa in 'Source\Model\ProtoSystem.Model.PesquisaSaldoCaixa.pas' {frmPesquisaSaldoCaixa},
  ProtoSystem.Model.PesquisaSaldoBanco in 'Source\Model\ProtoSystem.Model.PesquisaSaldoBanco.pas' {frmPesquisaSaldoBanco},
  ProtoSystem.Model.CadastroMovimentosBancarios in 'Source\Model\ProtoSystem.Model.CadastroMovimentosBancarios.pas' {frmCadastroMovimento};

{$R *.res}

begin
//ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_Login, Frm_Login);
  Application.CreateForm(TfrmReportsPedidoDeVenda, frmReportsPedidoDeVenda);
  Application.CreateForm(TfrmPesquisaSaldoCaixa, frmPesquisaSaldoCaixa);
  Application.CreateForm(TfrmPesquisaSaldoBanco, frmPesquisaSaldoBanco);
  Application.CreateForm(TfrmCadastroMovimento, frmCadastroMovimento);
  if TFrm_Login.Login then
    Application.Run
  else
    Application.Terminate
end.
