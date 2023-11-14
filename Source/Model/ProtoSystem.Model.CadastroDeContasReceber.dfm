object Frm_CadastroContasReceber: TFrm_CadastroContasReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro de contas a receber'
  ClientHeight = 530
  ClientWidth = 1166
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
    Width = 1166
    Height = 530
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
      Width = 1156
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Cadastro de Documentos a receber'
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
        Left = 1063
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
      Width = 1156
      Height = 492
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      object Q: TPageControl
        Left = 5
        Top = 5
        Width = 1146
        Height = 450
        ActivePage = TabOperacao
        Align = alClient
        TabOrder = 0
        object TabOperacao: TTabSheet
          Caption = 'Operacao'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1138
            Height = 420
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
              Width = 1128
              Height = 410
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
                  Width = 41
                  Height = 18
                  BiDiMode = bdLeftToRight
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'ID_FORNECEDOR'
                  DataSource = DS_DocumentosaReceber
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
                  EditLabel.Caption = 'iD'
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
                object edtNome: TDBLabeledEdit
                  Left = 6
                  Top = 20
                  Width = 176
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'NOME_FORNECEDOR'
                  DataSource = DS_DocumentosaReceber
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 91
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Nome Cliente'
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
                Left = 316
                Top = 16
                Width = 181
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 2
                object Shape2: TShape
                  Left = 0
                  Top = 0
                  Width = 176
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object edtSenha: TDBLabeledEdit
                  Left = 6
                  Top = 20
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'TIPO_DOC'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 137
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Tipo do documento'
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
              object Panel9: TPanel
                Left = 272
                Top = 16
                Width = 38
                Height = 40
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 3
                object Shape4: TShape
                  Left = 0
                  Top = 0
                  Width = 33
                  Height = 40
                  Align = alClient
                  Brush.Color = 8739130
                  Pen.Style = psClear
                  Shape = stRoundRect
                  ExplicitWidth = 34
                end
                object btnPesquisaCliente: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 33
                  Height = 40
                  Align = alClient
                  Caption = #59169
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Segoe MDL2 Assets'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = btnPesquisaClienteClick
                  ExplicitWidth = 34
                end
              end
              object Panel7: TPanel
                Left = 498
                Top = 16
                Width = 163
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 4
                object Shape3: TShape
                  Left = 0
                  Top = 0
                  Width = 158
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                end
                object DBLabeledEdit1: TDBLabeledEdit
                  Left = 6
                  Top = 20
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'IDENTIFICACAO'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 142
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Codigo identificador'
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
              object Panel10: TPanel
                Left = 661
                Top = 16
                Width = 137
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 5
                object Shape5: TShape
                  Left = 0
                  Top = 0
                  Width = 132
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                end
                object DBLabeledEdit2: TDBLabeledEdit
                  Left = 6
                  Top = 20
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'EMISSAO'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 115
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Data de emiss'#227'o'
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
              object Panel11: TPanel
                Left = 799
                Top = 16
                Width = 160
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 6
                object Shape6: TShape
                  Left = 0
                  Top = 0
                  Width = 155
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                end
                object DBLabeledEdit3: TDBLabeledEdit
                  Left = 6
                  Top = 20
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'VENCIMENTO'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 140
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Data de vencimento'
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
              object Panel12: TPanel
                Left = 18
                Top = 62
                Width = 137
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 7
                object Shape7: TShape
                  Left = 0
                  Top = 0
                  Width = 132
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                end
                object DBLabeledEdit4: TDBLabeledEdit
                  Left = 8
                  Top = 21
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'VALOR'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  OnKeyPress = DBLabeledEdit4KeyPress
                  EditLabel.Width = 36
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Valor'
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
              object Panel13: TPanel
                Left = 157
                Top = 62
                Width = 191
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 8
                object Shape8: TShape
                  Left = 0
                  Top = 0
                  Width = 186
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 153
                end
                object DBLabeledEdit5: TDBLabeledEdit
                  Left = 5
                  Top = 21
                  Width = 118
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'QTD_PARCELAS'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 163
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Quantidade de parcelas'
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
              object Panel14: TPanel
                Left = 349
                Top = 62
                Width = 138
                Height = 40
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 9
                object Shape9: TShape
                  Left = 0
                  Top = 0
                  Width = 133
                  Height = 40
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object DBLabeledEdit6: TDBLabeledEdit
                  Left = 5
                  Top = 21
                  Width = 117
                  Height = 18
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'DESCONTO'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 66
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Desconto'
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
              object Panel16: TPanel
                Left = 14
                Top = 109
                Width = 443
                Height = 148
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 10
                object Shape10: TShape
                  Left = 0
                  Top = 0
                  Width = 438
                  Height = 148
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                end
                object DBLabeledEdit7: TDBLabeledEdit
                  Left = 11
                  Top = 24
                  Width = 414
                  Height = 105
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  Color = 13275746
                  DataField = 'OBSERVACAO'
                  DataSource = DS_DocumentosaReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 16512241
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  EditLabel.Width = 82
                  EditLabel.Height = 20
                  EditLabel.Margins.Left = 6
                  EditLabel.Margins.Top = 6
                  EditLabel.Margins.Right = 6
                  EditLabel.Margins.Bottom = 6
                  EditLabel.Caption = 'Observa'#231#227'o'
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
              object Panel17: TPanel
                Left = 1024
                Top = 21
                Width = 97
                Height = 29
                Align = alCustom
                BevelOuter = bvNone
                Padding.Right = 5
                TabOrder = 11
                object Shape11: TShape
                  Left = 0
                  Top = 0
                  Width = 92
                  Height = 29
                  Align = alClient
                  Brush.Color = 13275746
                  Shape = stRoundRect
                  ExplicitWidth = 133
                  ExplicitHeight = 40
                end
                object bx_Quitado: TDBCheckBox
                  Left = 5
                  Top = 7
                  Width = 81
                  Height = 17
                  Caption = 'Quitado?'
                  DataField = 'QUITADO'
                  DataSource = DS_DocumentosaReceber
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
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
            Width = 1138
            Height = 420
            Align = alClient
            Color = 14079702
            Padding.Left = 4
            Padding.Top = 4
            Padding.Right = 4
            Padding.Bottom = 4
            ParentBackground = False
            TabOrder = 0
            object gridDocumentos: TDBGrid
              Left = 5
              Top = 28
              Width = 1128
              Height = 387
              Hint = 'Clique duas vezes para selecionar'
              Align = alClient
              BorderStyle = bsNone
              DataSource = DS_DocumentosaReceber
              DrawingStyle = gdsClassic
              FixedColor = 14079702
              GradientStartColor = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = [fsBold]
              OnDblClick = gridDocumentosDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NOME_FORNECEDOR'
                  Title.Caption = 'Nome'
                  Width = 534
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'IDENTIFICACAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Identifica'#231#227'o'
                  Width = 112
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'EMISSAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data de emiss'#227'o'
                  Width = 160
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'VENCIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data de vencimento'
                  Width = 160
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'VALOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor do documento'
                  Width = 120
                  Visible = True
                end>
            end
            object edtPesquisa: TEdit
              Left = 5
              Top = 5
              Width = 1128
              Height = 23
              Align = alTop
              TabOrder = 1
            end
          end
        end
      end
      object pnlButtons: TPanel
        Left = 5
        Top = 455
        Width = 1146
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
          Left = 805
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
          Left = 721
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
          Left = 889
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
          end
        end
        object pnlCancelar: TPanel
          Left = 973
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
          Left = 1057
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
  object SQL_DocumentosaReceber: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from DOC_RECEBER')
    Left = 791
    Top = 339
  end
  object DS_DocumentosaReceber: TDataSource
    DataSet = SQL_DocumentosaReceber
    Left = 792
    Top = 390
  end
end
