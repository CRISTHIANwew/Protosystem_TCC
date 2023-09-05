unit ProtoSystem.View.TelaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TformTelaPadrao = class(TForm)
    pnlClient: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    pgcCadastro: TPageControl;
    tbLista: TTabSheet;
    tbDados: TTabSheet;
    sql: TFDQuery;
    dsPadrao: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    pnl1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTelaPadrao: TformTelaPadrao;

implementation

{$R *.dfm}

end.
