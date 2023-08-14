object Form2: TForm2
  Left = 436
  Top = 147
  BorderStyle = bsDialog
  Caption = 'Cadastro de produtos'
  ClientHeight = 591
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 249
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = -7
    ExplicitWidth = 889
    object Label1: TLabel
      Left = 32
      Top = 0
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 111
      Top = 0
      Width = 51
      Height = 15
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 32
      Top = 54
      Width = 42
      Height = 15
      Caption = 'Estoque'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 18
      Width = 73
      Height = 23
      DataField = 'ID'
      DataSource = DataSource1
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
    end
    object TDBEdit2: TDBEdit
      Left = 111
      Top = 18
      Width = 587
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object TDBEdit3: TDBEdit
      Left = 32
      Top = 74
      Width = 129
      Height = 23
      DataField = 'ESTOQUE'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 249
    Width = 781
    Height = 34
    DataSource = DataSource1
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 248
    ExplicitWidth = 720
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 283
    Width = 781
    Height = 305
    Align = alTop
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_GRUPO'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.QueryPRODUTO
    Left = 688
    Top = 88
  end
end
