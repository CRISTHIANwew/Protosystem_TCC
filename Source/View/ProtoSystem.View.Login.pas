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
    VirtualImageList1: TVirtualImageList;
    ImageCollection1: TImageCollection;
    DS_usuario: TDataSource;
    Query_usuario: TFDQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    VirtualImage1: TVirtualImage;
    VirtualImage2: TVirtualImage;
    Button1: TButton;
    Pnl_comfirmar: TPanel;
    Shape1: TShape;
    SpeedButton2: TSpeedButton;
    box_senha: TCheckBox;
    edit_senha: TLabeledEdit;
    edit_usuario: TLabeledEdit;
    Pnl_sair: TPanel;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Panel5: TPanel;
    lbCaminhodb: TLabel;
    VirtualImage3: TVirtualImage;
    lb_logo: TLabel;
    Label2: TLabel;
    VirtualImage4: TVirtualImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    ShowMessage('Informe o usu�rio e a senha para proseguir.');
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
      ShowMessage('Usu�rio ou senha incorretos.');

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
  Query_usuario.active := true;
  lbCaminhodb.Caption:=dm.caminho;
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
    ShowMessage('Informe o usu�rio e a senha para proseguir.');
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
      ShowMessage('Usu�rio ou senha incorretos.');

  except
    on E: Exception do
      ShowMessage('Erro ao realizar login: ' + E.Message);
  end;
end;

end.
