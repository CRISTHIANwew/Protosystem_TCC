object Frm_CadUsuario: TFrm_CadUsuario
  Left = 516
  Top = 360
  BorderStyle = bsNone
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 419
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 419
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    Color = 8805178
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    ParentBackground = False
    TabOrder = 0
    object Panel8: TPanel
      Left = 6
      Top = 6
      Width = 562
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Cadastro de Usuarios'
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBiDiMode = False
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Pnl_sair: TPanel
        Left = 446
        Top = 6
        Width = 110
        Height = 23
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        BevelOuter = bvNone
        Color = 13274977
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Shape19: TShape
          Left = 0
          Top = 0
          Width = 110
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Brush.Color = 8739130
          Shape = stRoundRect
        end
        object SpeedButton6: TSpeedButton
          Left = 0
          Top = 0
          Width = 110
          Height = 23
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Caption = 'Fechar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          OnClick = SpeedButton6Click
        end
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 41
      Width = 562
      Height = 372
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBackground = False
      TabOrder = 1
      object PgcUsuario: TPageControl
        Left = 6
        Top = 6
        Width = 550
        Height = 320
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = TabOperacao
        Align = alClient
        TabOrder = 0
        object TabOperacao: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Operacao'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 542
            Height = 285
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            Color = 13274977
            Padding.Left = 6
            Padding.Top = 6
            Padding.Right = 6
            Padding.Bottom = 6
            ParentBackground = False
            TabOrder = 0
            object pnl_dados_user: TPanel
              Left = 6
              Top = 6
              Width = 530
              Height = 273
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              BevelOuter = bvNone
              Color = 15649712
              Padding.Left = 6
              Padding.Top = 6
              Padding.Right = 6
              Padding.Bottom = 6
              ParentBackground = False
              TabOrder = 0
              object Panel15: TPanel
                Left = 18
                Top = 20
                Width = 73
                Height = 50
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 6
                TabOrder = 0
                object Shape34: TShape
                  Left = 0
                  Top = 0
                  Width = 67
                  Height = 50
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 68
                end
                object edtID: TDBLabeledEdit
                  Left = 6
                  Top = 25
                  Width = 60
                  Height = 23
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'id'
                  DataSource = DS_user
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 37
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 8
                  EditLabel.Margins.Top = 8
                  EditLabel.Margins.Right = 8
                  EditLabel.Margins.Bottom = 8
                  EditLabel.BiDiMode = bdLeftToRight
                  EditLabel.ParentBiDiMode = False
                  EditLabel.Layout = tlCenter
                end
              end
              object Panel5: TPanel
                Left = 93
                Top = 20
                Width = 245
                Height = 50
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 6
                TabOrder = 1
                object Shape1: TShape
                  Left = 0
                  Top = 0
                  Width = 239
                  Height = 50
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtUsuario: TDBLabeledEdit
                  Tag = 1
                  Left = 8
                  Top = 25
                  Width = 220
                  Height = 23
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'username'
                  DataSource = DS_user
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 69
                  EditLabel.Height = 25
                  EditLabel.Margins.Left = 8
                  EditLabel.Margins.Top = 8
                  EditLabel.Margins.Right = 8
                  EditLabel.Margins.Bottom = 8
                  EditLabel.Caption = 'Usuario'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -19
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = [fsBold]
                  EditLabel.ParentColor = False
                  EditLabel.ParentFont = False
                  EditLabel.Layout = tlCenter
                end
              end
              object Panel6: TPanel
                Left = 339
                Top = 20
                Width = 172
                Height = 50
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 6
                TabOrder = 2
                object Shape2: TShape
                  Left = 0
                  Top = 0
                  Width = 166
                  Height = 50
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtSenha: TDBLabeledEdit
                  Tag = 1
                  Left = 8
                  Top = 25
                  Width = 147
                  Height = 23
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'password'
                  DataSource = DS_user
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -15
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 54
                  EditLabel.Height = 25
                  EditLabel.Margins.Left = 8
                  EditLabel.Margins.Top = 8
                  EditLabel.Margins.Right = 8
                  EditLabel.Margins.Bottom = 8
                  EditLabel.Caption = 'Senha'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -19
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
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Pesquisa'
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 542
            Height = 285
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Color = 14079702
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ParentBackground = False
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 6
              Top = 34
              Width = 530
              Height = 245
              Hint = 'Clique duas vezes para selecionar'
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataSource = DS_user
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              OnDblClick = DBGrid1DblClick
            end
            object edtPesquisa: TEdit
              Left = 6
              Top = 6
              Width = 530
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              TabOrder = 1
              OnChange = edtPesquisaChange
            end
          end
        end
      end
      object pnlButtons: TPanel
        Left = 6
        Top = 326
        Width = 550
        Height = 40
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        BevelOuter = bvNone
        Color = 13275746
        Padding.Left = 6
        Padding.Top = 6
        Padding.Right = 6
        Padding.Bottom = 6
        ParentBackground = False
        TabOrder = 1
        object pnlEditar: TPanel
          Left = 124
          Top = 6
          Width = 105
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object Shpeditar: TShape
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnEditar: TSpeedButton
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Editar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnEditarClick
          end
        end
        object pnlCadastrar: TPanel
          Left = 19
          Top = 6
          Width = 105
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 1
          object ShpCadastrar: TShape
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCadastrar: TSpeedButton
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Cadastrar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCadastrarClick
          end
        end
        object pnlSalvar: TPanel
          Left = 229
          Top = 6
          Width = 105
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 2
          object shpSalvar: TShape
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnSalvar: TSpeedButton
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Salvar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSalvarClick
          end
        end
        object pnlCancelar: TPanel
          Left = 334
          Top = 6
          Width = 105
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 3
          object ShpCancelar: TShape
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnCancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Cancelar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCancelarClick
          end
        end
        object pnlExcluir: TPanel
          Left = 439
          Top = 6
          Width = 105
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 4
          object shpExcluir: TShape
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object btnExcluir: TSpeedButton
            Left = 0
            Top = 0
            Width = 99
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
