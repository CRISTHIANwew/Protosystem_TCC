unit ProtoSystem.Model.CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_CadProd = class(TForm)
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    TDBEdit2: TDBEdit;
    TDBEdit3: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Query_Produto: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadProd: TFrm_CadProd;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFrm_CadProd.Button1Click(Sender: TObject);
begin
       query_produto.Insert;

end;

end.
