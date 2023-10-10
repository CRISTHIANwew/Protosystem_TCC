object frmImpressaoPedido: TfrmImpressaoPedido
  Left = 0
  Top = 0
  ClientHeight = 812
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsImpressaoPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
  end
  object dsImpressaoPedido: TDataSource
    DataSet = Frm_Vendas.SQL_ImpressaoPedido
    Left = 328
    Top = 408
  end
end
