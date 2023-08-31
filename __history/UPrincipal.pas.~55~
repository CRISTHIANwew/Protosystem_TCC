unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Vcl.VirtualImage, Vcl.ColorGrd, Vcl.Tabs, System.Win.TaskbarCore, Vcl.Taskbar,
  Vcl.WinXCtrls;

type
  TFrm_Principal = class(TForm)
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    Button1: TButton;
    procedure CadastrodeProdutos2Click(Sender: TObject);
    procedure Cadastrodeclientes1Click(Sender: TObject);
    procedure Pesquisadeestoque1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UDataModule, UCadprodpas, UCadCliente, UPesEstoque, UCadUsuario;

procedure TFrm_Principal.Cadastrodeclientes1Click(Sender: TObject);
var
  Frm_CadCliente: TFrm_CadCliente; // Declare uma variável para o formulário
begin
  Frm_CadCliente := TFrm_CadCliente.Create(Self); // Crie uma instância do formulário
  try
    Frm_CadCliente.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadCliente.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.CadastrodeProdutos2Click(Sender: TObject);
var
  Frm_CadProd: TFrm_CadProd; // Declare uma variável para o formulário
begin
  Frm_CadProd := TFrm_CadProd.Create(Self); // Crie uma instância do formulário
  try
    Frm_CadProd.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadProd.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
    Timer1.Enabled := True; // Iniciar o timer quando o formulário for criado
end;

procedure TFrm_Principal.N11Click(Sender: TObject);
var
  Frm_CadUsuario: TFrm_CadUsuario; // Declare uma variável para o formulário
begin
  Frm_CadUsuario := TFrm_CadUsuario.Create(Self); // Crie uma instância do formulário
  try
    Frm_CadUsuario.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_CadUsuario.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.Pesquisadeestoque1Click(Sender: TObject);
var
  Frm_PesEstoqe: TFrm_PesEstoqe; // Declare uma variável para o formulário
begin
  Frm_PesEstoqe := TFrm_PesEstoqe.Create(Self); // Crie uma instância do formulário
  try
    Frm_PesEstoqe.ShowModal; // Exiba o formulário de maneira modal
  finally
    Frm_PesEstoqe.Free; // Libere a memória após fechar o formulário
  end;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels[0].Text := 'Data e Hora: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

end.
