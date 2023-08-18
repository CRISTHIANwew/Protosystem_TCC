unit UCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrm_CadUsuario = class(TForm)
    DBNavigator1: TDBNavigator;
    pnl_dados_user: TPanel;
    lb_id: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    lb_usuario: TLabel;
    lb_senha: TLabel;
    DBEdit3: TDBEdit;
    Query_user: TFDQuery;
    DS_user: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadUsuario: TFrm_CadUsuario;

implementation

{$R *.dfm}

uses UDataModule;

end.
