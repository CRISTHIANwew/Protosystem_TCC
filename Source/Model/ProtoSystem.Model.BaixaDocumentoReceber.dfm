object frm_BaixaDocumentoReceber: Tfrm_BaixaDocumentoReceber
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 429
  ClientWidth = 1212
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
    Width = 1212
    Height = 429
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
      Width = 1202
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Baixa de Documentos a receber'
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
        Left = 1109
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
        object btn_Fechar: TSpeedButton
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
          OnClick = btn_FecharClick
          ExplicitLeft = 8
          ExplicitTop = -1
        end
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 33
      Width = 1202
      Height = 391
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      object pnlButtons: TPanel
        Left = 5
        Top = 335
        Width = 1192
        Height = 51
        Align = alBottom
        BevelOuter = bvNone
        Color = 13275746
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBackground = False
        TabOrder = 0
        object pnlCadastrar: TPanel
          Left = 1072
          Top = 5
          Width = 115
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 0
          object ShpCadastrar: TShape
            Left = 0
            Top = 0
            Width = 110
            Height = 41
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitWidth = 79
            ExplicitHeight = 22
          end
          object btnCadastrar: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 41
            Align = alClient
            Caption = 'Comfirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 79
            ExplicitHeight = 22
          end
        end
        object Panel14: TPanel
          Left = 89
          Top = 5
          Width = 144
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          object Shape9: TShape
            Left = 0
            Top = 0
            Width = 139
            Height = 41
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitWidth = 133
            ExplicitHeight = 40
          end
          object DBLabeledEdit6: TDBLabeledEdit
            Left = 5
            Top = 20
            Width = 124
            Height = 18
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16512241
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            EditLabel.Width = 128
            EditLabel.Height = 20
            EditLabel.Margins.Left = 6
            EditLabel.Margins.Top = 6
            EditLabel.Margins.Right = 6
            EditLabel.Margins.Bottom = 6
            EditLabel.Caption = 'Deposito Bancario'
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
        object Panel3: TPanel
          Left = 5
          Top = 5
          Width = 84
          Height = 41
          Align = alLeft
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 2
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 79
            Height = 41
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitWidth = 133
            ExplicitHeight = 40
          end
          object DBLabeledEdit1: TDBLabeledEdit
            Left = 5
            Top = 20
            Width = 68
            Height = 18
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16512241
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            EditLabel.Width = 60
            EditLabel.Height = 20
            EditLabel.Margins.Left = 6
            EditLabel.Margins.Top = 6
            EditLabel.Margins.Right = 6
            EditLabel.Margins.Bottom = 6
            EditLabel.Caption = 'Dinheiro'
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
      object grid_Documentos: TDBGrid
        Left = 5
        Top = 6
        Width = 1190
        Height = 323
        DataSource = ds_PesquisaDocumentos
        DrawingStyle = gdsClassic
        FixedColor = clAppWorkSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IDENTIFICACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Identifica'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_DOC'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_FORNECEDOR'
            Title.Caption = 'Nome'
            Width = 559
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data de emiss'#227'o'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data de vencimento'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR_PEND'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Pendente'
            Width = 98
            Visible = True
          end>
      end
    end
  end
  object SQL_PesquisaDocumentos: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from doc_receber where quitado=false')
    Left = 957
    Top = 145
  end
  object ds_PesquisaDocumentos: TDataSource
    DataSet = SQL_PesquisaDocumentos
    Left = 813
    Top = 145
  end
end
