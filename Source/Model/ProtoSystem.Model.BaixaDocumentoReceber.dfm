object frm_BaixaDocumentoReceber: Tfrm_BaixaDocumentoReceber
  Left = 549
  Top = 245
  BorderStyle = bsNone
  ClientHeight = 603
  ClientWidth = 1075
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
    Width = 1075
    Height = 603
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
      Width = 1063
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Baixa de Documentos a receber'
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
        Left = 947
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
        object btn_Fechar: TSpeedButton
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
          OnClick = btn_FecharClick
        end
      end
    end
    object Panel2: TPanel
      Left = 6
      Top = 41
      Width = 1063
      Height = 556
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
      object pnlButtons: TPanel
        Left = 6
        Top = 470
        Width = 1051
        Height = 80
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
        TabOrder = 0
        object pnlCadastrar: TPanel
          Left = 901
          Top = 6
          Width = 144
          Height = 68
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object ShpCadastrar: TShape
            Left = 0
            Top = 0
            Width = 138
            Height = 68
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 8739130
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitHeight = 51
          end
          object btnComfirmar: TSpeedButton
            Left = 0
            Top = 0
            Width = 138
            Height = 68
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Caption = 'Comfirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnComfirmarClick
            ExplicitHeight = 51
          end
        end
        object Panel6: TPanel
          Left = 546
          Top = 6
          Width = 355
          Height = 68
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 1
          object Shape3: TShape
            Left = 0
            Top = 0
            Width = 349
            Height = 68
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = -2
            ExplicitWidth = 1479
            ExplicitHeight = 94
          end
          object gpTipoPag: TRadioGroup
            Left = 2
            Top = 0
            Width = 319
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'Tipo do Pagamento'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              '01 - Dinheiro '
              '02 - Pix/Dep'#243'sito')
            ShowFrame = False
            TabOrder = 0
            OnClick = gpTipoPagClick
          end
        end
      end
      object grid_Documentos: TDBGrid
        Left = 10
        Top = 8
        Width = 1041
        Height = 444
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BorderStyle = bsNone
        DataSource = ds_PesquisaDocumentos
        DrawingStyle = gdsClassic
        FixedColor = 14079702
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome'
            Width = 396
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IDENTIFICACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Identifica'#231#227'o'
            Width = 125
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_DOC'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 125
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data de emiss'#227'o'
            Width = 125
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data de vencimento'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 88
            Visible = True
          end>
      end
    end
  end
  object SQL_PesquisaDocumentos: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from doc_receber where QUITADO='#39'N'#39)
    Left = 747
    Top = 195
  end
  object ds_PesquisaDocumentos: TDataSource
    DataSet = SQL_PesquisaDocumentos
    Left = 747
    Top = 261
  end
end
