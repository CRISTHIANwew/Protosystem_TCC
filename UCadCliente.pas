unit UCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_CadCliente = class(TForm)
    Pclientes: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TLABEL13: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadCliente: TFrm_CadCliente;

implementation

{$R *.dfm}

uses UDataModule;

end.
