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
    TabOrder = 0
    object Btn_pesquisar: TButton
      Left = 550
      Top = 11
      Width = 291
      Height = 29
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Pesquisar'
      Default = True
      TabOrder = 0
    end
    object Edit_pesquisa: TEdit
      Left = 10
      Top = 11
      Width = 533
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 1
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
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_PesProd
    Left = 550
    Top = 120
  end
  object Query_PesProd: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'Select descricao, estoque from produto ')
    Left = 563
    Top = 148
  end
end
