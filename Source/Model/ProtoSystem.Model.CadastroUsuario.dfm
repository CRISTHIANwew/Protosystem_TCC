object Frm_CadUsuario: TFrm_CadUsuario
  Left = 516
  Top = 360
  BorderStyle = bsDialog
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 143
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object PgcUsuario: TPageControl
    Left = 0
    Top = 0
    Width = 434
    Height = 143
    ActivePage = TabOperacao
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 428
    ExplicitHeight = 134
    object TabOperacao: TTabSheet
      Caption = 'Operacao'
      object pnl_dados_user: TPanel
        Left = 0
        Top = 0
        Width = 426
        Height = 64
        Align = alClient
        Color = 14079702
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 420
        ExplicitHeight = 55
        object edtID: TDBLabeledEdit
          Left = 69
          Top = 26
          Width = 28
          Height = 23
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'id'
          DataSource = DS_user
          Enabled = False
          TabOrder = 2
          EditLabel.Width = 10
          EditLabel.Height = 15
          EditLabel.Margins.Left = 4
          EditLabel.Margins.Top = 4
          EditLabel.Margins.Right = 4
          EditLabel.Margins.Bottom = 4
          EditLabel.Layout = tlCenter
        end
        object edtUsuario: TDBLabeledEdit
          Left = 103
          Top = 26
          Width = 121
          Height = 23
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'username'
          DataSource = DS_user
          TabOrder = 0
          EditLabel.Width = 40
          EditLabel.Height = 15
          EditLabel.Margins.Left = 4
          EditLabel.Margins.Top = 4
          EditLabel.Margins.Right = 4
          EditLabel.Margins.Bottom = 4
          EditLabel.Caption = 'Usuario'
          EditLabel.Layout = tlCenter
        end
        object edtSenha: TDBLabeledEdit
          Left = 230
          Top = 26
          Width = 121
          Height = 23
          BorderStyle = bsNone
          Color = clWhite
          DataField = 'password'
          DataSource = DS_user
          TabOrder = 1
          EditLabel.Width = 32
          EditLabel.Height = 15
          EditLabel.Margins.Left = 4
          EditLabel.Margins.Top = 4
          EditLabel.Margins.Right = 4
          EditLabel.Margins.Bottom = 4
          EditLabel.Caption = 'Senha'
          EditLabel.Layout = tlCenter
        end
      end
      object pnlButtons: TPanel
        Left = 0
        Top = 64
        Width = 426
        Height = 49
        Align = alBottom
        Color = 14079702
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 55
        ExplicitWidth = 420
        object pnlEditar: TPanel
          Left = 89
          Top = 5
          Width = 84
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 0
          object Shpeditar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Brush.Color = 8618369
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnEditar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Caption = 'Editar'
            Flat = True
            OnClick = btnEditarClick
          end
        end
        object pnlCadastrar: TPanel
          Left = 5
          Top = 5
          Width = 84
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          object ShpCadastrar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Brush.Color = 8618369
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCadastrar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Caption = 'Cadastrar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnCadastrarClick
            ExplicitLeft = -1
            ExplicitTop = 1
          end
        end
        object pnlSalvar: TPanel
          Left = 173
          Top = 5
          Width = 84
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 2
          object shpSalvar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Brush.Color = 14079702
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnSalvar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Caption = 'Salvar'
            Enabled = False
            Flat = True
            OnClick = btnSalvarClick
            ExplicitLeft = 1
            ExplicitTop = 1
          end
        end
        object pnlCancelar: TPanel
          Left = 257
          Top = 5
          Width = 84
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 3
          object ShpCancelar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Brush.Color = 14079702
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Caption = 'Cancelar'
            Enabled = False
            Flat = True
            OnClick = btnCancelarClick
          end
        end
        object pnlExcluir: TPanel
          Left = 341
          Top = 5
          Width = 84
          Height = 39
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 4
          object shpExcluir: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Brush.Color = 8618369
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnExcluir: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 39
            Align = alClient
            Caption = 'Excluir'
            Flat = True
            OnClick = btnExcluirClick
          end
        end
      end
    end
    object TabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 426
        Height = 113
        Align = alClient
        Color = 14079702
        Padding.Left = 4
        Padding.Top = 4
        Padding.Right = 4
        Padding.Bottom = 4
        ParentBackground = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 5
          Top = 28
          Width = 416
          Height = 80
          Hint = 'Clique duas vezes para selecionar'
          Align = alClient
          DataSource = DS_user
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
        end
        object edtPesquisa: TEdit
          Left = 5
          Top = 5
          Width = 416
          Height = 23
          Align = alTop
          TabOrder = 1
          OnChange = edtPesquisaChange
        end
      end
    end
  end
  object Query_user: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 380
    Top = 6
    object Query_userid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query_userpassword: TStringField
      FieldName = 'password'
      Origin = 'password'
      Size = 30
    end
    object Query_userusername: TStringField
      FieldName = 'username'
      Origin = 'username'
      Size = 15
    end
  end
  object DS_user: TDataSource
    DataSet = Query_user
    Left = 319
    Top = 5
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Query_user
    ScopeMappings = <>
    Left = 488
    Top = 65534
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 488
    Top = 65530
  end
end
