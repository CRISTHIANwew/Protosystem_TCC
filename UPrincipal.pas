unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, Vcl.VirtualImageList,
  Vcl.VirtualImage, Vcl.ColorGrd, Vcl.Tabs;

type
  TFrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    Vendas1: TMenuItem;
    Caixa1: TMenuItem;
    Banco1: TMenuItem;
    Contasareceber1: TMenuItem;
    Contasapagar1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    Cadastros1: TMenuItem;
    N7: TMenuItem;
    Cadastros2: TMenuItem;
    N10: TMenuItem;
    Digitaes1: TMenuItem;
    N12: TMenuItem;
    Pesquisas1: TMenuItem;
    N13: TMenuItem;
    Relatorios1: TMenuItem;
    Cadastrodeprodutos1: TMenuItem;
    CadastrodeProdutos2: TMenuItem;
    Digitaeos1: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Pesquisas2: TMenuItem;
    N16: TMenuItem;
    Relatorios2: TMenuItem;
    N17: TMenuItem;
    Cad1: TMenuItem;
    Pesquisadeestoque1: TMenuItem;
    Cadastros3: TMenuItem;
    N18: TMenuItem;
    Digitaes2: TMenuItem;
    N19: TMenuItem;
    Pesquisas3: TMenuItem;
    N20: TMenuItem;
    Relatorios3: TMenuItem;
    N22: TMenuItem;
    Cadastrodenaturezas1: TMenuItem;
    Vendas2: TMenuItem;
    Pesquisadevendas1: TMenuItem;
    Cadastros4: TMenuItem;
    N23: TMenuItem;
    C1: TMenuItem;
    Digitaes3: TMenuItem;
    N24: TMenuItem;
    Lanamentosdocaixa1: TMenuItem;
    Lanamentosdocaixa2: TMenuItem;
    N25: TMenuItem;
    Relatorios4: TMenuItem;
    N26: TMenuItem;
    Pesquisadelanamentos1: TMenuItem;
    Cadastros5: TMenuItem;
    N27: TMenuItem;
    Digitaes4: TMenuItem;
    N28: TMenuItem;
    Pesquisas4: TMenuItem;
    N29: TMenuItem;
    Relatorios5: TMenuItem;
    N30: TMenuItem;
    Cadasrodecontasbancarias1: TMenuItem;
    Lanamentosbancrios1: TMenuItem;
    Pesquisalanamentos1: TMenuItem;
    Cadastros6: TMenuItem;
    N32: TMenuItem;
    Digitaes5: TMenuItem;
    N33: TMenuItem;
    Pesquisas5: TMenuItem;
    N34: TMenuItem;
    Relatorios6: TMenuItem;
    N35: TMenuItem;
    Cadastrodedocumentosareceber1: TMenuItem;
    Baixadedocumentos1: TMenuItem;
    Cadastros7: TMenuItem;
    N36: TMenuItem;
    Digitaes6: TMenuItem;
    N37: TMenuItem;
    Pesquisas6: TMenuItem;
    N38: TMenuItem;
    Relatorios7: TMenuItem;
    N39: TMenuItem;
    Cadastrodecontasapagar1: TMenuItem;
    Baixadedocumentos2: TMenuItem;
    Cadastrodeclientes1: TMenuItem;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    procedure CadastrodeProdutos2Click(Sender: TObject);
    procedure Cadastrodeclientes1Click(Sender: TObject);
    procedure Pesquisadeestoque1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);

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
  Frm_CadCliente: TFrm_CadCliente; // Declare uma vari�vel para o formul�rio
begin
  Frm_CadCliente := TFrm_CadCliente.Create(Self); // Crie uma inst�ncia do formul�rio
  try
    Frm_CadCliente.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadCliente.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.CadastrodeProdutos2Click(Sender: TObject);
var
  Frm_CadProd: TFrm_CadProd; // Declare uma vari�vel para o formul�rio
begin
  Frm_CadProd := TFrm_CadProd.Create(Self); // Crie uma inst�ncia do formul�rio
  try
    Frm_CadProd.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadProd.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.N11Click(Sender: TObject);
var
  Frm_CadUsuario: TFrm_CadUsuario; // Declare uma vari�vel para o formul�rio
begin
  Frm_CadUsuario := TFrm_CadUsuario.Create(Self); // Crie uma inst�ncia do formul�rio
  try
    Frm_CadUsuario.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_CadUsuario.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;

procedure TFrm_Principal.Pesquisadeestoque1Click(Sender: TObject);
var
  Frm_PesEstoqe: TFrm_PesEstoqe; // Declare uma vari�vel para o formul�rio
begin
  Frm_PesEstoqe := TFrm_PesEstoqe.Create(Self); // Crie uma inst�ncia do formul�rio
  try
    Frm_PesEstoqe.ShowModal; // Exiba o formul�rio de maneira modal
  finally
    Frm_PesEstoqe.Free; // Libere a mem�ria ap�s fechar o formul�rio
  end;
end;
end.
