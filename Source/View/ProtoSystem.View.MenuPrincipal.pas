unit ProtoSystem.View.MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Vcl.VirtualImage, Vcl.ColorGrd, Vcl.Tabs, System.Win.TaskbarCore, Vcl.Taskbar,
  Vcl.WinXCtrls, Vcl.Themes, Vcl.Styles, System.IOUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, Vcl.Buttons, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab, midas, midaslib;

type
  TFrm_Principal = class(TForm)
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    PGC_MENU: TPageControl;
    TabSheet1: TTabSheet;
    pnl_boasvindas: TPanel;
    TabSheet2: TTabSheet;
    PGC_ESTOQUE: TPageControl;
    TabSheet8: TTabSheet;
    Panel3: TPanel;
    PnlCadastroProdutos: TPanel;
    shpCadastroProdutos: TShape;
    btnCadastroProdutos: TSpeedButton;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet3: TTabSheet;
    PGC_VENDAS: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet4: TTabSheet;
    PGC_CAIXA: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet5: TTabSheet;
    PGC_BANCO: TPageControl;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet6: TTabSheet;
    PGC_RECEBER: TPageControl;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    TabSheet7: TTabSheet;
    PGC_PAGAR: TPageControl;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    TabSheet32: TTabSheet;
    TabSheet12: TTabSheet;
    PGC_CONFIGURACAO: TPageControl;
    TabSheet33: TTabSheet;
    TabSheet34: TTabSheet;
    CB_STYLES: TComboBox;
    ComboBox1: TComboBox;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    pnlBarraSuperior: TPanel;
    Pnl_sair: TPanel;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Shape1: TShape;
    SpeedButton2: TSpeedButton;
    Panel5: TPanel;
    Shape9: TShape;
    SpeedButton3: TSpeedButton;
    lb_logo: TLabel;
    Label1: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    lbHORA: TLabel;
    PageControl1: TPageControl;
    TabSheet37: TTabSheet;
    TabSheet38: TTabSheet;
    TabSheet39: TTabSheet;
    TabSheet40: TTabSheet;
    TabSheet41: TTabSheet;
    TabSheet42: TTabSheet;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Chart1: TChart;
    DBCrossTabSource1: TDBCrossTabSource;
    Series1: TBarSeries;
    Panel40: TPanel;
    Shape10: TShape;
    SpeedButton4: TSpeedButton;
    Panel41: TPanel;
    Shape11: TShape;
    SpeedButton5: TSpeedButton;
    Panel42: TPanel;
    Shape12: TShape;
    SpeedButton6: TSpeedButton;
    Panel43: TPanel;
    Shape13: TShape;
    SpeedButton7: TSpeedButton;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Panel44: TPanel;
    Shape3: TShape;
    SpeedButton8: TSpeedButton;
    Panel45: TPanel;
    Shape4: TShape;
    SpeedButton9: TSpeedButton;
    Panel46: TPanel;
    Shape5: TShape;
    SpeedButton10: TSpeedButton;
    Panel47: TPanel;
    Shape6: TShape;
    SpeedButton11: TSpeedButton;
    Panel48: TPanel;
    Shape7: TShape;
    SpeedButton12: TSpeedButton;
    Panel49: TPanel;
    Panel50: TPanel;
    Shape8: TShape;
    SpeedButton13: TSpeedButton;
    Panel51: TPanel;
    Shape20: TShape;
    SpeedButton14: TSpeedButton;
    Panel52: TPanel;
    Shape21: TShape;
    SpeedButton15: TSpeedButton;
    Panel53: TPanel;
    Shape22: TShape;
    SpeedButton16: TSpeedButton;
    Panel54: TPanel;
    Shape23: TShape;
    SpeedButton17: TSpeedButton;
    Panel55: TPanel;
    Shape24: TShape;
    SpeedButton18: TSpeedButton;
    Panel56: TPanel;
    Shape25: TShape;
    SpeedButton19: TSpeedButton;
    Panel57: TPanel;
    Shape26: TShape;
    SpeedButton20: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BTN_CAD_PRODClick(Sender: TObject);
    procedure BTN_PES_ESTOQUEClick(Sender: TObject);
    procedure BTN_CAD_CLIENTEClick(Sender: TObject);
    procedure CB_STYLESChange(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure BTN_VENDASClick(Sender: TObject);
    procedure BTN_CAD_FORNECEDORClick(Sender: TObject);
    procedure btnCadastroProdutosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);

  private
    procedure PreencheEstilos(comboBox: TComboBox);
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;
implementation

{$R *.dfm}

uses
  ProtoSystem.Controller.Dm, ProtoSystem.Model.CadastroProduto,
  ProtoSystem.Model.CadastroCliente, ProtoSystem.Model.PesquisaEstoque,
  ProtoSystem.Model.CadastroUsuario, ProtoSystem.Model.Vendas,
  ProtoSystem.Model.CadastroFornecedor, ProtoSystem.View.Login,
  ProtoSystem.Model.CadastroDeContasReceber,
  ProtoSystem.Model.BaixaDocumentoReceber, ProtoSystem.Model.PesquisaSaldoBanco,
  ProtoSystem.Model.PesquisaSaldoCaixa,
  ProtoSystem.Model.CadastroMovimentosBancarios,
  ProtoSystem.Model.CadastroLancamentoCaixa,
  ProtoSystem.Model.CadastroDeContasPagar,
  ProtoSystem.Model.BaixaDocumentoPagar,
  ProtoSystem.Model.InterfaceRelatorioProd,
  ProtoSystem.Model.InterfaceRelatorioMovimentacoes,
  ProtoSystem.Model.InterfaceRelatorioLancamentos,
  ProtoSystem.Printed.ReportsRelatorioProdutos,
  ProtoSystem.Model.InterfaceRelatorioVendas;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Timer1.Enabled :=false;
   Application.Terminate;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := True; // Iniciar o timer quando o formulário for criado
  PreencheEstilos(CB_STYLES);
  // --------------------------------------------------------------------------//
end;

procedure TFrm_Principal.btnCadastroProdutosClick(Sender: TObject);
begin
var
    Frm_CadProd: TFrm_CadProd; // Declare uma variável para o formulário
  Frm_CadProd := TFrm_CadProd.Create(Self); // Crie uma instância do formulário
  try
    Frm_CadProd.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadProd.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.BTN_CAD_CLIENTEClick(Sender: TObject);
begin
  var
    Frm_CadCliente: TFrm_CadCliente; // Declare uma variável para o formulário
  Frm_CadCliente := TFrm_CadCliente.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadCliente.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadCliente.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.BTN_CAD_FORNECEDORClick(Sender: TObject);
begin
  var
    Frm_CadFornecedor: TFrm_CadFornecedor;
    // Declare uma variável para o formulário
  Frm_CadFornecedor := TFrm_CadFornecedor.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadFornecedor.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadFornecedor.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.BTN_CAD_PRODClick(Sender: TObject);
begin
  var
    Frm_CadProd: TFrm_CadProd; // Declare uma variável para o formulário
  Frm_CadProd := TFrm_CadProd.Create(Self); // Crie uma instância do formulário
  try
    Frm_CadProd.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadProd.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.BTN_PES_ESTOQUEClick(Sender: TObject);
begin
  var
    Frm_PesEstoque: TFrm_PesEstoque; // Declare uma variável para o formulário
  Frm_PesEstoque := TFrm_PesEstoque.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_PesEstoque.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_PesEstoque.Free; // Libere a memória após fechar o formulário
  end;
end;

 procedure TFrm_Principal.BTN_VENDASClick(Sender: TObject);
begin
  var
    Frm_Vendas: TFrm_Vendas; // Declare uma variável para o formulário
  Frm_Vendas := TFrm_Vendas.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_Vendas.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_Vendas.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.CB_STYLESChange(Sender: TObject);
begin
  TStyleManager.TrySetStyle(TComboBox(Sender).Text);
end;

procedure TFrm_Principal.ComboBox1Select(Sender: TObject);
begin
  if ComboBox1.Text = 'Windows' then
    TStyleManager.TrySetStyle('Windows');

  if ComboBox1.Text = 'Luna' then
    TStyleManager.TrySetStyle('Luna');

  if ComboBox1.Text = 'Lavender Classico' then
    TStyleManager.TrySetStyle('Lavender Classico');
end;

procedure TFrm_Principal.PreencheEstilos(comboBox: TComboBox);
begin
  comboBox.Clear;
  // Adicione o estilo definido como padrão ao primeiro item do ComboBox.
  comboBox.Items.Add('Windows');
  comboBox.Items.Add('Iceberg Classico');
  comboBox.ItemIndex := 0;
end;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
var
  frmPesquisaSaldoBanco : TfrmPesquisaSaldoBanco; // Declare uma variável para o formulário
  frmPesquisaSaldoBanco := TfrmPesquisaSaldoBanco.Create(Self);
  // Crie uma instância do formulário
  try
    frmPesquisaSaldoBanco.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmPesquisaSaldoBanco.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton11Click(Sender: TObject);
begin
var
  frmLancamentoDeCaixa : TfrmLancamentoDeCaixa; // Declare uma variável para o formulário
  frmLancamentoDeCaixa := TfrmLancamentoDeCaixa.Create(Self);
  // Crie uma instância do formulário
  try
    frmLancamentoDeCaixa.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmLancamentoDeCaixa.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton12Click(Sender: TObject);
begin
var
  frmCadastroMovimento : TfrmCadastroMovimento; // Declare uma variável para o formulário
  frmCadastroMovimento := TfrmCadastroMovimento.Create(Self);
  // Crie uma instância do formulário
  try
    frmCadastroMovimento.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmCadastroMovimento.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton13Click(Sender: TObject);
begin
var
    FrmCadastroContasPagar: TFrmCadastroContasPagar;
    // Declare uma variável para o formulário
  FrmCadastroContasPagar := TFrmCadastroContasPagar.Create(Self);
  // Crie uma instância do formulário
  try
    FrmCadastroContasPagar.ShowModal; // Exiba o formulário de maneira modal
  finally
    FrmCadastroContasPagar.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton14Click(Sender: TObject);
begin
var
    Frm_CadFornecedor: TFrm_CadFornecedor;
    // Declare uma variável para o formulário
  Frm_CadFornecedor := TFrm_CadFornecedor.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadFornecedor.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadFornecedor.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton15Click(Sender: TObject);
begin
var
    frmBaixaDocumentosPagar: TfrmBaixaDocumentosPagar;
    // Declare uma variável para o formulário
  frmBaixaDocumentosPagar := TfrmBaixaDocumentosPagar.Create(Self);
  // Crie uma instância do formulário
  try
    frmBaixaDocumentosPagar.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmBaixaDocumentosPagar.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton16Click(Sender: TObject);
begin
var
    Frm_CadUsuario: TFrm_CadUsuario; // Declare uma variável para o formulário
  Frm_CadUsuario := TFrm_CadUsuario.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadUsuario.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadUsuario.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton17Click(Sender: TObject);
begin
var
  frmInterfaceRelatorioProd: TfrmInterfaceRelatorioProd; // Declare uma variável para o formulário
  frmInterfaceRelatorioProd := TfrmInterfaceRelatorioProd.Create(Self);
  // Crie uma instância do formulário
  try
    frmInterfaceRelatorioProd.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmInterfaceRelatorioProd.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton18Click(Sender: TObject);
begin
var
  frmInterfaceRelatorioMovimentacoes: TfrmInterfaceRelatorioMovimentacoes; // Declare uma variável para o formulário
  frmInterfaceRelatorioMovimentacoes := TfrmInterfaceRelatorioMovimentacoes.Create(Self);
  // Crie uma instância do formulário
  try
    frmInterfaceRelatorioMovimentacoes.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmInterfaceRelatorioMovimentacoes.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton19Click(Sender: TObject);
begin
var
  frmInterfaceRelatorioLancamentos: TfrmInterfaceRelatorioLancamentos; // Declare uma variável para o formulário
  frmInterfaceRelatorioLancamentos := TfrmInterfaceRelatorioLancamentos.Create(Self);
  // Crie uma instância do formulário
  try
    frmInterfaceRelatorioLancamentos.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmInterfaceRelatorioLancamentos.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrm_Principal.SpeedButton20Click(Sender: TObject);
begin
var
    frmInterfaceRelatorioVendas: TfrmInterfaceRelatorioVendas; // Declare uma variável para o formulário
  frmInterfaceRelatorioVendas := TfrmInterfaceRelatorioVendas.Create(Self);
  // Crie uma instância do formulário
  try
    frmInterfaceRelatorioVendas.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmInterfaceRelatorioVendas.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton2Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
var
    Frm_CadCliente: TFrm_CadCliente; // Declare uma variável para o formulário
  Frm_CadCliente := TFrm_CadCliente.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadCliente.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadCliente.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
var
    Frm_CadastroDeContasReceber: TFrm_CadastroContasReceber; // Declare uma variável para o formulário
  Frm_CadastroDeContasReceber := TFrm_CadastroContasReceber.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_CadastroDeContasReceber.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadastroDeContasReceber.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
var
    Frm_PesEstoque: TFrm_PesEstoque; // Declare uma variável para o formulário
  Frm_PesEstoque := TFrm_PesEstoque.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_PesEstoque.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_PesEstoque.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
var
    Frm_Vendas: TFrm_Vendas; // Declare uma variável para o formulário
  Frm_Vendas := TFrm_Vendas.Create(Self);
  // Crie uma instância do formulário
  try
    Frm_Vendas.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_Vendas.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton8Click(Sender: TObject);
begin
var
    frm_baixadocumentoreceber: Tfrm_baixadocumentoreceber; // Declare uma variável para o formulário
  frm_baixadocumentoreceber := Tfrm_baixadocumentoreceber.Create(Self);
  // Crie uma instância do formulário
  try
    frm_baixadocumentoreceber.ShowModal; // Exiba o formulário de maneira modal
  finally
    frm_baixadocumentoreceber.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.SpeedButton9Click(Sender: TObject);
begin
var
  frmPesquisaSaldoCaixa : TfrmPesquisaSaldoCaixa; // Declare uma variável para o formulário
  frmPesquisaSaldoCaixa := TfrmPesquisaSaldoCaixa.Create(Self);
  // Crie uma instância do formulário
  try
    frmPesquisaSaldoCaixa.ShowModal; // Exiba o formulário de maneira modal
  finally
    frmPesquisaSaldoCaixa.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  // atualizar data e hora na statur bar
//  StatusBar1.Panels[0].Text := 'Data e Hora: ' +
//    FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);

    lbHORA.Caption:='Data e Hora: ' +
    FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

end.
