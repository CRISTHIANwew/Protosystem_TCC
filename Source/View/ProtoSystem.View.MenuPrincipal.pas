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
  FireDAC.Comp.Client;

type
  TFrm_Principal = class(TForm)
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    PGC_MENU: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    PGC_ESTOQUE: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    BTN_CAD_PROD: TButton;
    BTN_PES_ESTOQUE: TButton;
    PGC_VENDAS: TPageControl;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    BTN_VENDAS: TButton;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    PGC_CAIXA: TPageControl;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    PGC_BANCO: TPageControl;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    PGC_RECEBER: TPageControl;
    TabSheet25: TTabSheet;
    BTN_CAD_CLIENTE: TButton;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    PGC_PAGAR: TPageControl;
    TabSheet29: TTabSheet;
    BTN_CAD_FORNECEDOR: TButton;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    TabSheet32: TTabSheet;
    PGC_CONFIGURACAO: TPageControl;
    TabSheet33: TTabSheet;
    BTN_CAD_USUARIO: TButton;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    CB_STYLES: TComboBox;
    ComboBox1: TComboBox;
    pnl_boasvindas: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BTN_CAD_PRODClick(Sender: TObject);
    procedure BTN_PES_ESTOQUEClick(Sender: TObject);
    procedure BTN_CAD_CLIENTEClick(Sender: TObject);
    procedure BTN_CAD_USUARIOClick(Sender: TObject);
    procedure CB_STYLESChange(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure BTN_VENDASClick(Sender: TObject);
    procedure BTN_CAD_FORNECEDORClick(Sender: TObject);

  private
    procedure PreencheEstilos(comboBox: TComboBox);
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;
  msg: string;
  user2: string;

implementation

{$R *.dfm}

uses
  ProtoSystem.Controller.Dm, ProtoSystem.Model.CadastroProduto,
  ProtoSystem.Model.CadastroCliente, ProtoSystem.Model.PesquisaEstoque,
  ProtoSystem.Model.CadastroUsuario, ProtoSystem.Model.Vendas,
  ProtoSystem.Model.CadastroFornecedor;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin

  msg := 'Bem vindo (a) ';

  Timer1.Enabled := True; // Iniciar o timer quando o formul�rio for criado
  PreencheEstilos(CB_STYLES);
  // --------------------------------------------------------------------------//
  pnl_boasvindas.Caption := msg;
end;

procedure TFrm_Principal.BTN_CAD_CLIENTEClick(Sender: TObject);
begin
  var
    Frm_CadCliente: TFrm_CadCliente; // Declare uma vari�vel para o formul�rio
  Frm_CadCliente := TFrm_CadCliente.Create(Self);
  // Crie uma inst�ncia do formul�rio
  try
    Frm_CadCliente.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadCliente.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.BTN_CAD_FORNECEDORClick(Sender: TObject);
begin
  var
    Frm_CadFornecedor: TFrm_CadFornecedor;
    // Declare uma vari�vel para o formul�rio
  Frm_CadFornecedor := TFrm_CadFornecedor.Create(Self);
  // Crie uma inst�ncia do formul�rio
  try
    Frm_CadFornecedor.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadFornecedor.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.BTN_CAD_PRODClick(Sender: TObject);
begin
  var
    Frm_CadProd: TFrm_CadProd; // Declare uma vari�vel para o formul�rio
  Frm_CadProd := TFrm_CadProd.Create(Self); // Crie uma inst�ncia do formul�rio
  try
    Frm_CadProd.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadProd.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.BTN_CAD_USUARIOClick(Sender: TObject);
begin
  var
    Frm_CadUsuario: TFrm_CadUsuario; // Declare uma vari�vel para o formul�rio
  Frm_CadUsuario := TFrm_CadUsuario.Create(Self);
  // Crie uma inst�ncia do formul�rio
  try
    Frm_CadUsuario.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadUsuario.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.BTN_PES_ESTOQUEClick(Sender: TObject);
begin
  var
    Frm_PesEstoque: TFrm_PesEstoque; // Declare uma vari�vel para o formul�rio
  Frm_PesEstoque := TFrm_PesEstoque.Create(Self);
  // Crie uma inst�ncia do formul�rio
  try
    Frm_PesEstoque.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_PesEstoque.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.BTN_VENDASClick(Sender: TObject);
begin
  var
    Frm_Vendas: TFrm_Vendas; // Declare uma vari�vel para o formul�rio
  Frm_Vendas := TFrm_Vendas.Create(Self);
  // Crie uma inst�ncia do formul�rio
  try
    Frm_Vendas.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_Vendas.Free; // Libere a mem�ria ap�s fechar o formul�rio
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
  // Adicione o estilo definido como padr�o ao primeiro item do ComboBox.
  comboBox.Items.Add('Windows');
  comboBox.Items.Add('Iceberg Classico');
  comboBox.ItemIndex := 0;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  // atualizar data e hora na statur bar
  StatusBar1.Panels[0].Text := 'Data e Hora: ' +
    FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

end.
