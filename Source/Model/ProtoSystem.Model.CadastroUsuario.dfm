object Frm_CadUsuario: TFrm_CadUsuario
  Left = 516
  Top = 360
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 522
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  PixelsPerInch = 120
  TextHeight = 20
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 163
    Width = 621
    Height = 56
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    DataSource = DS_user
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 480
  end
  object pnl_dados_user: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 163
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 480
    object lb_id: TLabel
      Left = 11
      Top = 54
      Width = 15
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'ID'
    end
    object lb_usuario: TLabel
      Left = 90
      Top = 54
      Width = 62
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'USUARIO'
    end
    object lb_senha: TLabel
      Left = 320
      Top = 54
      Width = 48
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'SENHA'
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 80
      Width = 72
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'id'
      DataSource = DS_user
      TabOrder = 0
    end
    object Edit_usuario: TDBEdit
      Left = 90
      Top = 80
      Width = 223
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'username'
      DataSource = DS_user
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 320
      Top = 80
      Width = 151
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'password'
      DataSource = DS_user
      TabOrder = 2
    end
  end
  object ED_ID: TLabeledEdit
    Left = 60
    Top = 280
    Width = 81
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    EditLabel.Width = 13
    EditLabel.Height = 20
    EditLabel.Margins.Left = 4
    EditLabel.Margins.Top = 4
    EditLabel.Margins.Right = 4
    EditLabel.Margins.Bottom = 4
    EditLabel.Caption = 'Id'
    TabOrder = 2
    Text = ''
  end
  object ED_USUARIO: TLabeledEdit
    Left = 160
    Top = 280
    Width = 81
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    EditLabel.Width = 50
    EditLabel.Height = 20
    EditLabel.Margins.Left = 4
    EditLabel.Margins.Top = 4
    EditLabel.Margins.Right = 4
    EditLabel.Margins.Bottom = 4
    EditLabel.Caption = 'Usuario'
    TabOrder = 3
    Text = ''
  end
  object ED_SENHA: TLabeledEdit
    Left = 260
    Top = 280
    Width = 81
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    EditLabel.Width = 40
    EditLabel.Height = 20
    EditLabel.Margins.Left = 4
    EditLabel.Margins.Top = 4
    EditLabel.Margins.Right = 4
    EditLabel.Margins.Bottom = 4
    EditLabel.Caption = 'Senha'
    TabOrder = 4
    Text = ''
  end
  object Query_user: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 458
    Top = 254
  end
  object DS_user: TDataSource
    DataSet = Query_user
    Left = 531
    Top = 254
  end
end
