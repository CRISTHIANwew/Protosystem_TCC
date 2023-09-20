unit ProtoSystem.Model.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Datasnap.DBClient;

type
  TFrm_Vendas = class(TForm)
    PNL_PRINCIPAL: TPanel;
    PNL_PRODUTO: TPanel;
    PNL_BUTTONS: TPanel;
    PNL_PRINCIPAL_MAIN: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    BTN_CANCELAR: TSpeedButton;
    Panel2: TPanel;
    Shape2: TShape;
    BTN_ConsultarPreco: TSpeedButton;
    Panel3: TPanel;
    Shape3: TShape;
    BTN_AbrirCaixa: TSpeedButton;
    Panel4: TPanel;
    Shape4: TShape;
    BTN_CancelarVenda: TSpeedButton;
    Panel5: TPanel;
    Shape5: TShape;
    BTN_CancelarItem: TSpeedButton;
    Panel6: TPanel;
    Shape6: TShape;
    BTN_FUNCOES: TSpeedButton;
    DBGrid1: TDBGrid;
    PNL_OPERACOES: TPanel;
    GB_Total: TGroupBox;
    Sh_Total: TShape;
    GB_QTD: TGroupBox;
    Shape7: TShape;
    GB_SUBTOTAL: TGroupBox;
    Shape8: TShape;
    GB_PRECO: TGroupBox;
    Shape9: TShape;
    GB_PRODUTO: TGroupBox;
    Shape10: TShape;
    PNL_IMAGEM: TPanel;
    DBImage1: TDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Vendas: TFrm_Vendas;

implementation

{$R *.dfm}


end.
