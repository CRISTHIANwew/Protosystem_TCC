object Frm_CadUsuario: TFrm_CadUsuario
  Left = 516
  Top = 360
  BorderStyle = bsNone
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 335
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 335
    Align = alClient
    BevelOuter = bvNone
    Color = 8805178
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object Panel8: TPanel
      Left = 5
      Top = 5
      Width = 449
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Cadastro de Usuarios'
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBiDiMode = False
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Pnl_sair: TPanel
        Left = 356
        Top = 5
        Width = 88
        Height = 18
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Color = 13274977
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Shape19: TShape
          Left = 0
          Top = 0
          Width = 88
          Height = 18
          Align = alClient
          Brush.Color = 8739130
          Shape = stRoundRect
        end
        object SpeedButton6: TSpeedButton
          Left = 0
          Top = 0
          Width = 88
          Height = 18
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Fechar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          OnClick = SpeedButton6Click
        end
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 33
      Width = 449
      Height = 297
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      object PgcUsuario: TPageControl
        Left = 5
        Top = 5
        Width = 439
        Height = 255
        ActivePage = TabPesquisa
        Align = alClient
        TabOrder = 0
        object TabOperacao: TTabSheet
          Caption = 'Operacao'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 431
            Height = 225
            Align = alClient
            BevelOuter = bvNone
            Color = 13274977
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ParentBackground = False
            TabOrder = 0
            object pnl_dados_user: TPanel
              Left = 5
              Top = 5
              Width = 421
              Height = 215
              Align = alClient
              BevelOuter = bvNone
              Color = 15649712
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              ParentBackground = False
              TabOrder = 0
              object Panel15: TPanel
                Left = 14
                Top = 16
                Width = 59
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 0
                object Shape34: TShape
                  Left = 0
                  Top = 0
                  Width = 54
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtID: TDBLabeledEdit
                  Left = 5
                  Top = 20
                  Width = 48
                  Height = 18
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'id'
                  DataSource = DS_user
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 28
                  EditLabel.Height = 15
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.BiDiMode = bdLeftToRight
                  EditLabel.ParentBiDiMode = False
                  EditLabel.Layout = tlCenter
                end
              end
              object Panel5: TPanel
                Left = 74
                Top = 16
                Width = 196
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 1
                object Shape1: TShape
                  Left = 0
                  Top = 0
                  Width = 191
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtUsuario: TDBLabeledEdit
                  Tag = 1
                  Left = 6
                  Top = 20
                  Width = 176
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'username'
                  DataSource = DS_user
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 54
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Usuario'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -15
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = [fsBold]
                  EditLabel.ParentColor = False
                  EditLabel.ParentFont = False
                  EditLabel.Layout = tlCenter
                end
              end
              object Panel6: TPanel
                Left = 271
                Top = 16
                Width = 138
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 2
                object Shape2: TShape
                  Left = 0
                  Top = 0
                  Width = 133
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtSenha: TDBLabeledEdit
                  Tag = 1
                  Left = 6
                  Top = 20
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'password'
                  DataSource = DS_user
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 42
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Senha'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -15
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = [fsBold]
                  EditLabel.ParentColor = False
                  EditLabel.ParentFont = False
                  EditLabel.Layout = tlCenter
                end
              end
            end
          end
        end
        object TabPesquisa: TTabSheet
          Caption = 'Pesquisa'
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 431
            Height = 225
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
              Width = 421
              Height = 192
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
              Width = 421
              Height = 23
              Align = alTop
              TabOrder = 1
              OnChange = edtPesquisaChange
            end
          end
        end
      end
      object pnlButtons: TPanel
        Left = 5
        Top = 260
        Width = 439
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        Color = 13275746
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBackground = False
        TabOrder = 1
        object pnlEditar: TPanel
          Left = 98
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 0
          object Shpeditar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnEditar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Caption = 'Editar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnEditarClick
          end
        end
        object pnlCadastrar: TPanel
          Left = 14
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          object ShpCadastrar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCadastrar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Caption = 'Cadastrar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCadastrarClick
          end
        end
        object pnlSalvar: TPanel
          Left = 182
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 2
          object shpSalvar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnSalvar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Caption = 'Salvar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSalvarClick
            ExplicitLeft = -1
            ExplicitTop = 1
          end
        end
        object pnlCancelar: TPanel
          Left = 266
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 3
          object ShpCancelar: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Caption = 'Cancelar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCancelarClick
          end
        end
        object pnlExcluir: TPanel
          Left = 350
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 4
          object shpExcluir: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnExcluir: TSpeedButton
            Left = 0
            Top = 0
            Width = 79
            Height = 22
            Align = alClient
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnExcluirClick
          end
        end
      end
    end
  end
  object Query_user: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'select * from usuario')
    Left = 224
    Top = 149
    object Query_userid: TFDAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query_userpassword: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'password'
      Origin = 'password'
      Size = 30
    end
    object Query_userusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'username'
      Origin = 'username'
      Size = 15
    end
  end
  object DS_user: TDataSource
    DataSet = Query_user
    Left = 286
    Top = 149
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
    Top = 14
  end
end
