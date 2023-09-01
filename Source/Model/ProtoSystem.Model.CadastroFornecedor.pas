unit ProtoSystem.Model.CadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB;

type
  TFrm_CadFornecedor = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Pclientes: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TLABEL13: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadFornecedor: TFrm_CadFornecedor;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

end.
