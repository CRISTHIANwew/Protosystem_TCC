object Form2: TForm2
  Left = 645
  Top = 376
  Caption = 'Form2'
  ClientHeight = 568
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
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
      Height = 30
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
      Height = 30
      DataField = 'DESCRICAO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object TDBEdit3: TDBEdit
      Left = 32
      Top = 74
      Width = 129
      Height = 30
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
      Top = 71
      Width = 753
      Height = 225
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
    object Button1: TButton
      Left = 57
      Top = 0
      Width = 145
      Height = 65
      Align = alCustom
      Caption = 'Cadastrar'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 208
      Top = 0
      Width = 161
      Height = 65
      Align = alCustom
      Caption = 'Editar'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 375
      Top = 0
      Width = 155
      Height = 65
      Align = alCustom
      Caption = 'Localizar'
      TabOrder = 3
    end
    object Button4: TButton
      Left = 536
      Top = 0
      Width = 154
      Height = 65
      Align = alCustom
      Caption = 'Excluir'
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.Query
    Left = 824
    Top = 184
  end
end
