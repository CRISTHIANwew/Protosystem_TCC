unit ProtoSystem.Model.BaixaDocumentoReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_BaixaDocumentoReceber = class(TForm)
    Panel1: TPanel;
    Panel8: TPanel;
    Pnl_sair: TPanel;
    Shape19: TShape;
    btn_Fechar: TSpeedButton;
    Panel2: TPanel;
    pnlButtons: TPanel;
    pnlCadastrar: TPanel;
    ShpCadastrar: TShape;
    btnCadastrar: TSpeedButton;
    grid_Documentos: TDBGrid;
    SQL_PesquisaDocumentos: TFDQuery;
    ds_PesquisaDocumentos: TDataSource;
    Panel14: TPanel;
    Shape9: TShape;
    DBLabeledEdit6: TDBLabeledEdit;
    Panel3: TPanel;
    Shape1: TShape;
    DBLabeledEdit1: TDBLabeledEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Shape3: TShape;
    gpTipoPag: TRadioGroup;
    procedure btn_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_BaixaDocumentoReceber: Tfrm_BaixaDocumentoReceber;

implementation

{$R *.dfm}

uses ProtoSystem.Controller.Dm;

procedure Tfrm_BaixaDocumentoReceber.btn_FecharClick(Sender: TObject);
begin
  close;
end;

end.
