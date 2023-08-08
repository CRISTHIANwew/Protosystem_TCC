unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    Panel1: TPanel;
    procedure TreeView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDataModule, UCadprodpas;

procedure TForm1.TreeView1Click(Sender: TObject);
begin
 // Verifica se algum item foi selecionado
  if TreeView1.Selected <> nil then
  begin
    // Exemplo de lógica para abrir a tela correspondente ao item selecionado
    if TreeView1.Selected.Text = 'Cadastro de produtos' then
      Form2 := TForm2.Create(Self)
    else if TreeView1.Selected.Text = 'Cadastro de produtos' then
      Form2 := TForm2.Create(Self)
    // Continue com outras verificações para os demais itens da árvore

    // Mostra a tela (caso tenha sido criada)
    if Assigned(Form2) then
      Form2.Show;
  end;
end;

end.
