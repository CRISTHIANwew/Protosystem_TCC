object Frm_PesEstoqe: TFrm_PesEstoqe
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
  TextHeight = 15
  object Panel1: TPanel
    Left = -5
    Top = -1
    Width = 702
    Height = 521
    Caption = 'Panel1'
    TabOrder = 0
    object Btn_pesquisar: TButton
      Left = 440
      Top = 9
      Width = 233
      Height = 23
      Caption = 'Pesquisar'
      Default = True
      TabOrder = 0
      OnClick = Btn_pesquisarClick
    end
    object Edit_pesquisa: TEdit
      Left = 8
      Top = 9
      Width = 426
      Height = 23
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 45
      Width = 694
      Height = 465
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = Query_PesProd
    Left = 736
    Top = 112
  end
  object Query_PesProd: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'Select descricao, estoque from produtos ')
    Left = 736
    Top = 40
  end
end
