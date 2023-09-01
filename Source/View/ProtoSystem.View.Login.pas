unit ProtoSystem.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList, Vcl.WinXCtrls;

type
  TFrm_Login = class(TForm)
    Panel2: TPanel;
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    Pnl_comfirmar: TPanel;
    SpeedButton2: TSpeedButton;
    Pnl_Sair: TPanel;
    SpeedButton1: TSpeedButton;
    edit_usuario: TLabeledEdit;
    edit_senha: TLabeledEdit;
    VirtualImage1: TVirtualImage;
    VirtualImage2: TVirtualImage;
    DS_usuario: TDataSource;
    Query_usuario: TFDQuery;
    lb_logo: TLabel;
    VirtualImage3: TVirtualImage;
    box_senha: TCheckBox;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure box_senhaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure edit_usuarioKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    class function Login: Boolean;
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

uses
  ProtoSystem.Controller.Dm;

procedure TFrm_Login.box_senhaClick(Sender: TObject);
begin
  if box_senha.Checked = true then
    edit_senha.PasswordChar := '*'
  else
    edit_senha.PasswordChar := #0;
end;

procedure TFrm_Login.Button1Click(Sender: TObject);
begin
  edit_usuario.Text := UpperCase(edit_usuario.Text);
  if (edit_usuario.Text = '') or (edit_senha.Text = '') then
  begin
    ShowMessage('Informe o usuário e a senha para proseguir.');
    Exit;
  end;

  try
    Query_usuario.SQL.Text :=
      'SELECT COUNT(*) FROM usuario WHERE username = :username AND password = :password';
    Query_usuario.ParamByName('username').AsString := edit_usuario.Text;
    Query_usuario.ParamByName('password').AsString := edit_senha.Text;
    Query_usuario.Open;

    if Query_usuario.Fields[0].AsInteger > 0 then
    begin
      // ShowMessage('Login realizado com sucesso.');
      Modalresult := mrok;
    end
    else
      ShowMessage('Usuário ou senha incorretos.');

  except
    on E: Exception do
      ShowMessage('Erro ao realizar login: ' + E.Message);
  end;
end;

procedure TFrm_Login.edit_usuarioKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    SelectNext(Sender as TWinControl, true, true);
    Key := #0

  end;

end;

procedure TFrm_Login.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // CanClose := False;
end;

procedure TFrm_Login.FormCreate(Sender: TObject);
begin
  box_senha.Checked := true;
  edit_senha.PasswordChar := '*';
end;

class function TFrm_Login.Login: Boolean;
begin
  with self.Create(nil) do
  begin
    case showmodal of
      mrok:
        result := true
    else
      result := false
    end;
  end;

end;

procedure TFrm_Login.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_Login.SpeedButton2Click(Sender: TObject);
begin
  edit_usuario.Text := UpperCase(edit_usuario.Text);
  if (edit_usuario.Text = '') or (edit_senha.Text = '') then
  begin
    ShowMessage('Informe o usuário e a senha para proseguir.');
    Exit;
  end;

  try
    Query_usuario.SQL.Text :=
      'SELECT COUNT(*) FROM usuario WHERE username = :username AND password = :password';
    Query_usuario.ParamByName('username').AsString := edit_usuario.Text;
    Query_usuario.ParamByName('password').AsString := edit_senha.Text;
    Query_usuario.Open;

    if Query_usuario.Fields[0].AsInteger > 0 then
    begin
      // ShowMessage('Login realizado com sucesso.');
      Modalresult := mrok;
    end
    else
      ShowMessage('Usuário ou senha incorretos.');

  except
    on E: Exception do
      ShowMessage('Erro ao realizar login: ' + E.Message);
  end;
end;

end.
