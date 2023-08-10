object Form2: TForm2
  Left = 645
  Top = 344
  Caption = 'Form2'
  ClientHeight = 555
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = -8
    Top = 0
    Width = 777
    Height = 242
    TabOrder = 0
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
    Top = 208
    Width = 740
    Height = 34
    DataSource = DataSource1
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = -13
    Top = 248
    Width = 782
    Height = 313
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 13
      Top = 0
      Width = 753
      Height = 305
      DataSource = DataSource1
      TabOrder = 0
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
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.Query
    Left = 688
    Top = 88
  end
end
