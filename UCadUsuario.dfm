object Frm_CadUsuario: TFrm_CadUsuario
  Left = 516
  Top = 360
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 173
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 130
    Width = 384
    Height = 45
    DataSource = DS_user
    Align = alTop
    TabOrder = 0
    OnClick = DBNavigator1Click
    ExplicitWidth = 377
  end
  object pnl_dados_user: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 130
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 377
    object lb_id: TLabel
      Left = 9
      Top = 43
      Width = 11
      Height = 15
      Caption = 'ID'
    end
    object lb_usuario: TLabel
      Left = 72
      Top = 43
      Width = 49
      Height = 15
      Caption = 'USUARIO'
    end
    object lb_senha: TLabel
      Left = 256
      Top = 43
      Width = 38
      Height = 15
      Caption = 'SENHA'
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 64
      Width = 57
      Height = 23
      DataField = 'id'
      DataSource = DS_user
      TabOrder = 0
    end
    object Edit_usuario: TDBEdit
      Left = 72
      Top = 64
      Width = 178
      Height = 23
      DataField = 'username'
      DataSource = DS_user
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 64
      Width = 121
      Height = 23
      DataField = 'password'
      DataSource = DS_user
      TabOrder = 2
    end
  end
  object Query_user: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 408
    Top = 24
  end
  object DS_user: TDataSource
    DataSet = Query_user
    Left = 408
    Top = 96
  end
end
