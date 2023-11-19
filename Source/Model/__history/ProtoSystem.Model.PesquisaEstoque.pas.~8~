unit ProtoSystem.Model.PesquisaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFrm_PesEstoque = class(TForm)
    DataSource1: TDataSource;
    Query_PesProd: TFDQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    Shape8: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape3: TShape;
    Pnl_sair: TPanel;
    Shape15: TShape;
    btn_saircadprod: TSpeedButton;
    Panel2: TPanel;
    Panel12: TPanel;
    Shape12: TShape;
    Edit_pesquisa: TEdit;
    procedure Edit_pesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_saircadprodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PesEstoque: TFrm_PesEstoque;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure TFrm_PesEstoque.btn_saircadprodClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_PesEstoque.Edit_pesquisaChange(Sender: TObject);
begin
  // Verifique se o critério de pesquisa não está vazio
  if Edit_pesquisa.Text <> '' then
    begin
    // Atualize o filtro do DataSet ligado ao DBGrid
    // Suponha que o seu DataSet se chame "qryData" e o campo que você quer pesquisar seja "Nome"
    Query_PesProd.Filtered := False;
    Query_PesProd.Filter := 'DESCRICAO LIKE ' +
      QuotedStr('%' + Edit_pesquisa.Text + '%');
    Query_PesProd.Filtered := True;
  end
  else
    // Se o critério de pesquisa estiver vazio, remova o filtro
    Query_PesProd.Filtered := False;
end;

procedure TFrm_PesEstoque.FormCreate(Sender: TObject);
begin
  Query_PesProd.Active := True;
end;

end.
