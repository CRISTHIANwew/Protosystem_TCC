object frmCadastroMovimento: TfrmCadastroMovimento
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 390
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 390
    Align = alClient
    BevelOuter = bvNone
    Color = 8805178
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 459
    ExplicitHeight = 335
    object Panel8: TPanel
      Left = 5
      Top = 5
      Width = 647
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Cadastro de Movimentos'
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
      ExplicitWidth = 449
      object Pnl_sair: TPanel
        Left = 554
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
        ExplicitLeft = 356
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
      Width = 647
      Height = 352
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 449
      ExplicitHeight = 297
      object PgcUsuario: TPageControl
        Left = 5
        Top = 5
        Width = 637
        Height = 310
        ActivePage = TabOperacao
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 439
        ExplicitHeight = 255
        object TabOperacao: TTabSheet
          Caption = 'Operacao'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 629
            Height = 280
            Align = alClient
            BevelOuter = bvNone
            Color = 13274977
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 431
            ExplicitHeight = 225
            object pnl_dados_user: TPanel
              Left = 5
              Top = 5
              Width = 619
              Height = 270
              Align = alClient
              BevelOuter = bvNone
              Color = 15649712
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              ParentBackground = False
              TabOrder = 0
              ExplicitLeft = 0
              ExplicitTop = 8
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
                  Left = 6
                  Top = 19
                  Width = 42
                  Height = 18
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'ID'
                  DataSource = DS_MovimentoBan
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 11
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
                  Top = 21
                  Width = 176
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'DATAMOVIMENTO'
                  DataSource = DS_MovimentoBan
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 134
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Data do Movimento'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -15
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = []
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
                  Left = 5
                  Top = 21
                  Width = 119
                  Height = 18
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'VALORMOVIMENTO'
                  DataSource = DS_MovimentoBan
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 36
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.BiDiMode = bdLeftToRight
                  EditLabel.Caption = 'Valor'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -15
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = [fsBold]
                  EditLabel.ParentBiDiMode = False
                  EditLabel.ParentColor = False
                  EditLabel.ParentFont = False
                  EditLabel.Layout = tlCenter
                end
              end
              object Panel7: TPanel
                Left = 14
                Top = 62
                Width = 395
                Height = 123
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 3
                object Shape3: TShape
                  Left = 0
                  Top = 0
                  Width = 390
                  Height = 123
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                  ExplicitHeight = 40
                end
                object DBLabeledEdit1: TDBLabeledEdit
                  Tag = 1
                  Left = 5
                  Top = 32
                  Width = 372
                  Height = 81
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'OBSERVACAO'
                  DataSource = DS_MovimentoBan
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentBiDiMode = False
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 82
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.BiDiMode = bdLeftToRight
                  EditLabel.Caption = 'Observa'#231#227'o'
                  EditLabel.Color = clWhite
                  EditLabel.Font.Charset = DEFAULT_CHARSET
                  EditLabel.Font.Color = 15649712
                  EditLabel.Font.Height = -15
                  EditLabel.Font.Name = 'Segoe UI'
                  EditLabel.Font.Style = [fsBold]
                  EditLabel.ParentBiDiMode = False
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
            Width = 629
            Height = 280
            Align = alClient
            Color = 14079702
            Padding.Left = 4
            Padding.Top = 4
            Padding.Right = 4
            Padding.Bottom = 4
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 431
            ExplicitHeight = 225
            object DBGrid1: TDBGrid
              Left = 5
              Top = 28
              Width = 619
              Height = 247
              Hint = 'Clique duas vezes para selecionar'
              Align = alClient
              DataSource = DS_MovimentoBan
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taLeftJustify
                  Expanded = False
                  FieldName = 'ID'
                  Title.Caption = 'Id'
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DATAMOVIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data do Movimento'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORMOVIMENTO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor'
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'OBSERVACAO'
                  Title.Alignment = taCenter
                  Width = 345
                  Visible = True
                end>
            end
            object edtPesquisa: TEdit
              Left = 5
              Top = 5
              Width = 619
              Height = 23
              Align = alTop
              TabOrder = 1
              ExplicitWidth = 421
            end
          end
        end
      end
      object pnlButtons: TPanel
        Left = 5
        Top = 315
        Width = 637
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
        ExplicitTop = 260
        ExplicitWidth = 439
        object pnlEditar: TPanel
          Left = 296
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 0
          ExplicitLeft = 98
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
          Left = 212
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          ExplicitLeft = 14
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
          Left = 380
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 2
          ExplicitLeft = 182
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
          end
        end
        object pnlCancelar: TPanel
          Left = 464
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 3
          ExplicitLeft = 266
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
          Left = 548
          Top = 5
          Width = 84
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 4
          ExplicitLeft = 350
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
  object SQL_MovimentoBan: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT * FROM BANCO_MOV')
    Left = 211
    Top = 261
    object SQL_MovimentoBanID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_MovimentoBanDATAMOVIMENTO: TDateTimeField
      FieldName = 'DATAMOVIMENTO'
      Origin = 'DATAMOVIMENTO'
    end
    object SQL_MovimentoBanVALORMOVIMENTO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VALORMOVIMENTO'
      Origin = 'VALORMOVIMENTO'
    end
    object SQL_MovimentoBanOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 80
    end
  end
  object DS_MovimentoBan: TDataSource
    DataSet = SQL_MovimentoBan
    Left = 331
    Top = 269
  end
end
