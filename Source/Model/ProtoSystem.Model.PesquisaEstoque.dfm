object Frm_PesEstoque: TFrm_PesEstoque
  Left = 452
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Pesquisa de estoque'
  ClientHeight = 646
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Panel1: TPanel
    Left = -6
    Top = -1
    Width = 877
    Height = 651
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Panel1'
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    object Edit_pesquisa: TEdit
      Left = 20
      Top = 12
      Width = 841
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 0
      OnChange = Edit_pesquisaChange
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 48
      Width = 868
      Height = 581
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Width = 103
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_PesProd
    Left = 458
    Top = 180
  end
  object Query_PesProd: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'Select descricao, estoque from produto ')
    Left = 564
    Top = 185
  end
end
