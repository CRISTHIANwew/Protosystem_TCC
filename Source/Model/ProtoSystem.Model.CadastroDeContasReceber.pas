unit ProtoSystem.Model.CadastroDeContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFom_CadastroContasReceber = class(TForm)
    pnl_1: TPanel;
    SQL_DocumentosaReceber: TFDQuery;
    DS_DocumentosaReceber: TDataSource;
    PgcUsuario: TPageControl;
    TabOperacao: TTabSheet;
    pnl_dados_user: TPanel;
    edtID: TDBLabeledEdit;
    edtNome: TDBLabeledEdit;
    edtCelular: TDBLabeledEdit;
    edtEmail: TDBLabeledEdit;
    pnlButtons: TPanel;
    pnlEditar: TPanel;
    Shpeditar: TShape;
    btnEditar: TSpeedButton;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    pnlSalvar: TPanel;
    shpSalvar: TShape;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    ShpCancelar: TShape;
    btnCancelar: TSpeedButton;
    pnlExcluir: TPanel;
    shpExcluir: TShape;
    btnExcluir: TSpeedButton;
    TabPesquisa: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fom_CadastroContasReceber: TFom_CadastroContasReceber;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;



end.
