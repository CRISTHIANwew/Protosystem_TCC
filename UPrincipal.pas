unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Vcl.VirtualImage, Vcl.ColorGrd, Vcl.Tabs, System.Win.TaskbarCore, Vcl.Taskbar,
  Vcl.WinXCtrls, Vcl.Themes, Vcl.Styles;

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
    Button3: TButton;
    Button4: TButton;
    PGC_VENDAS: TPageControl;
    TabSheet13: TTabSheet;
    Button5: TButton;
    TabSheet14: TTabSheet;
    Button6: TButton;
    TabSheet15: TTabSheet;
    Button7: TButton;
    TabSheet16: TTabSheet;
    Button8: TButton;
    PGC_CAIXA: TPageControl;
    TabSheet17: TTabSheet;
    Button9: TButton;
    TabSheet18: TTabSheet;
    Button10: TButton;
    TabSheet19: TTabSheet;
    Button11: TButton;
    TabSheet20: TTabSheet;
    Button12: TButton;
    PGC_BANCO: TPageControl;
    TabSheet21: TTabSheet;
    Button13: TButton;
    TabSheet22: TTabSheet;
    Button14: TButton;
    TabSheet23: TTabSheet;
    Button15: TButton;
    TabSheet24: TTabSheet;
    Button16: TButton;
    PGC_RECEBER: TPageControl;
    TabSheet25: TTabSheet;
    BTN_CAD_CLIENTE: TButton;
    TabSheet26: TTabSheet;
    Button18: TButton;
    TabSheet27: TTabSheet;
    Button19: TButton;
    TabSheet28: TTabSheet;
    Button20: TButton;
    PGC_PAGAR: TPageControl;
    TabSheet29: TTabSheet;
    Button21: TButton;
    TabSheet30: TTabSheet;
    Button22: TButton;
    TabSheet31: TTabSheet;
    Button23: TButton;
    TabSheet32: TTabSheet;
    Button24: TButton;
    PGC_CONFIGURACAO: TPageControl;
    TabSheet33: TTabSheet;
    BTN_CAD_USUARIO: TButton;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    Button27: TButton;
    TabSheet36: TTabSheet;
    Button28: TButton;
    CB_STYLES: TComboBox;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BTN_CAD_PRODClick(Sender: TObject);
    procedure BTN_PES_ESTOQUEClick(Sender: TObject);
    procedure BTN_CAD_CLIENTEClick(Sender: TObject);
    procedure BTN_CAD_USUARIOClick(Sender: TObject);
    procedure CB_STYLESChange(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);

  private
    procedure PreencheEstilos(comboBox: TComboBox);
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UDataModule, UCadprodpas, UCadCliente, UPesEstoque, UCadUsuario;

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

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := True; // Iniciar o timer quando o formul�rio for criado
  PreencheEstilos(CB_STYLES);
end;

procedure TFrm_Principal.PreencheEstilos(comboBox: TComboBox);
begin
  comboBox.Clear;
  // Adicione o estilo definido como padr�o ao primeiro item do ComboBox.
  comboBox.Items.Add('Windows');
//  comboBox.Items.Add('Amakrits');
//  comboBox.Items.Add('Amethyst Kamri');
//  comboBox.Items.Add('Aqua Graphite');
//  comboBox.Items.Add('Aqua Light Slate');
//  comboBox.Items.Add('Auric');
//  comboBox.Items.Add('Carbon');
//  comboBox.Items.Add('Charcoal Dark Slate');
//  comboBox.Items.Add('Cobalt XEMedia');
//  comboBox.Items.Add('Cyan Dusk');
//  comboBox.Items.Add('Cyan Night');
//  comboBox.Items.Add('Emerald Light Slate');
//  comboBox.Items.Add('Golden Graphite');
  comboBox.Items.Add('Iceberg Classico');
 // comboBox.Items.Add('Lavender Classico');
 // comboBox.Items.Add('Light');
//  comboBox.Items.Add('Luna');
//  comboBox.Items.Add('Metropolis UI Black');
//  comboBox.Items.Add('Metropolis UI Blue');
//  comboBox.Items.Add('Metropolis UI Dark');
//  comboBox.Items.Add('Metropolis UI Green');
//  comboBox.Items.Add('Obsidian');
//  comboBox.Items.Add('Ruby Graphite');
//  comboBox.Items.Add('Sapphire Kamri');
//  comboBox.Items.Add('Silver');
//  comboBox.Items.Add('Slate Classico');
//  comboBox.Items.Add('Smokey Quartz Kamri');
//  comboBox.Items.Add('Turquoise Gray');
  // Exibe no ComboBox o tema padr�o definido.
  comboBox.ItemIndex := 0;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
  // atualizar data e hora
  StatusBar1.Panels[0].Text := 'Data e Hora: ' +
    FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

end.
