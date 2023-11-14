unit ProtoSystem.Utils.Validates;

interface

uses VCL.Forms, data.DB, VCL.DBCtrls,
  system.Classes;

function ValidarCampos(aForm: TForm): string;

implementation

function ValidarCampos(aForm: TForm): string;
begin

  var
  Lista := '';

  for var i := 0 to aForm.ComponentCount - 1 do
  begin
    if aForm.Components[i] is TDBLabeledEdit then
      if TDBLabeledEdit(aForm.Components[i]).Tag = 1 then
        if TDBLabeledEdit(aForm.Components[i]).text = '' then
          if Lista = '' then
            Lista := TDBLabeledEdit(aForm.Components[i]).Field.DisplayLabel
          else
            Lista := Lista + #13 + TDBLabeledEdit(aForm.Components[i])
              .Field.DisplayLabel
  end;
  result := Lista

end;

end.
