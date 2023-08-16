unit ULoguin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm4 = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Lb_sistema: TLabel;
    Lb_protosystem: TLabel;
    Vtm_logo: TVirtualImage;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    Lb_Versao: TLabel;
    Lb_Desenvolvido: TLabel;
    Label1: TLabel;
    Pnl_comfirmar: TPanel;
    SpeedButton2: TSpeedButton;
    Pnl_Sair: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    fdquery_user: TFDQuery;
    edit_usuario: TLabeledEdit;
    edit_senha: TLabeledEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Lb_linkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses UDataModule;

procedure TForm4.Lb_linkClick(Sender: TObject);
begin
// adicionar dps
//procedure TForm1.HyperlinkLabelClick(Sender: TObject);
//begin
  // Abre o navegador padr�o com o URL especificado
  //ShellExecute(0, 'open', 'https://www.example.com', nil, nil, SW_SHOWNORMAL);
//end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
  begin
    if (edit_usuario.Text = '') or (edit_senha.Text = '') then
      begin
      ShowMessage('Informe o usu�rio e a senha para proseguir.');
      Exit;
      //close;
    end;

    try
    fdquery_user.SQL.Text := 'SELECT COUNT(*) FROM user WHERE username = :username AND password = :password';
    fdquery_user.ParamByName('username').AsString := edit_usuario.Text;
    fdquery_user.ParamByName('password').AsString := edit_senha.Text;
    fdquery_user.Open;

      if fdquery_user.Fields[0].AsInteger > 0 then
      begin
      ShowMessage('Login realizado com sucesso.');
      Close;
      end
      else
      ShowMessage('Usu�rio ou senha incorretos.');

      except
      on E: Exception do
      ShowMessage('Erro ao realizar login: ' + E.Message);
      end;
  end;

end.
