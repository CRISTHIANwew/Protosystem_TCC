object Frm_PesEstoque: TFrm_PesEstoque
  Left = 452
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Pesquisa de estoque'
  ClientHeight = 517
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = -5
    Top = -1
    Width = 702
    Height = 521
    Caption = 'Panel1'
    Padding.Left = 8
    Padding.Top = 8
    Padding.Right = 8
    Padding.Bottom = 8
    TabOrder = 0
    object Edit_pesquisa: TEdit
      Left = 16
      Top = 10
      Width = 673
      Height = 23
      TabOrder = 0
      OnChange = Edit_pesquisaChange
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 38
      Width = 694
      Height = 465
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Width = 108
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
