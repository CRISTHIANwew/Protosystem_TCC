object frmVendasFechamento: TfrmVendasFechamento
  Left = 490
  Top = 270
  BorderStyle = bsDialog
  Caption = 'Fechamento'
  ClientHeight = 533
  ClientWidth = 1239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1239
    Height = 533
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Color = clWindow
    Padding.Left = 13
    Padding.Top = 13
    Padding.Right = 13
    Padding.Bottom = 13
    ParentBackground = False
    TabOrder = 0
    object pnl2: TPanel
      Left = 14
      Top = 14
      Width = 1211
      Height = 505
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Color = clWindow
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 0
      object pnlCondicao: TPanel
        Left = 887
        Top = 4
        Width = 320
        Height = 497
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        Color = clHighlight
        Padding.Left = 13
        Padding.Top = 13
        Padding.Right = 13
        Padding.Bottom = 13
        ParentBackground = False
        TabOrder = 0
        object GB_Total: TGroupBox
          Left = 4
          Top = 403
          Width = 306
          Height = 70
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Total Geral'
          Color = clHighlightText
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -14
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          object Sh_Total: TShape
            Left = 2
            Top = 27
            Width = 302
            Height = 41
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 26
            ExplicitWidth = 301
            ExplicitHeight = 42
          end
          object edtTotalVenda: TEdit
            Left = 14
            Top = 33
            Width = 217
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            Text = '0,00'
            TextHint = 'Total da Venda'
          end
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 78
          Width = 305
          Height = 70
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Despesas'
          Color = clHighlightText
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -14
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Shape1: TShape
            Left = 2
            Top = 27
            Width = 301
            Height = 41
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 26
            ExplicitWidth = 300
            ExplicitHeight = 42
          end
          object edtDespesas: TEdit
            Left = 13
            Top = 31
            Width = 217
            Height = 34
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            Text = '0,00'
            TextHint = '0,00'
            OnExit = edtDespesasExit
            OnKeyPress = edtDespesasKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 5
          Top = 159
          Width = 305
          Height = 70
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Frete'
          Color = clHighlightText
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -14
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Shape2: TShape
            Left = 2
            Top = 27
            Width = 301
            Height = 41
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 26
            ExplicitWidth = 300
            ExplicitHeight = 42
          end
          object edtFrete: TEdit
            Left = 13
            Top = 33
            Width = 217
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            Text = '0,00'
            TextHint = '0,00'
            OnExit = edtFreteExit
            OnKeyPress = edtFreteKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 5
          Top = 321
          Width = 305
          Height = 70
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = '% Desconto'
          Color = clHighlightText
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -14
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          object Shape3: TShape
            Left = 2
            Top = 27
            Width = 301
            Height = 41
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 26
            ExplicitWidth = 300
            ExplicitHeight = 42
          end
          object edtPorcDesconto: TEdit
            Left = 13
            Top = 29
            Width = 211
            Height = 34
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            Text = 'Em desenvolvimento'
            TextHint = 'Total da Venda'
          end
        end
        object GroupBox4: TGroupBox
          Left = 5
          Top = 240
          Width = 305
          Height = 70
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Valor Desconto'
          Color = clHighlightText
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -14
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object Shape4: TShape
            Left = 2
            Top = 27
            Width = 301
            Height = 41
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitLeft = 3
            ExplicitTop = 26
            ExplicitWidth = 300
            ExplicitHeight = 42
          end
          object edtValorDesconto: TEdit
            Left = 13
            Top = 33
            Width = 217
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            Text = '0,00'
            TextHint = '0,00'
            OnExit = edtValorDescontoExit
            OnKeyPress = edtValorDescontoKeyPress
          end
        end
        object Panel1: TPanel
          Left = 10
          Top = 6
          Width = 310
          Height = 54
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object Shape5: TShape
            Left = 0
            Top = 0
            Width = 304
            Height = 54
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 304
            Height = 54
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Alignment = taCenter
            Caption = 'Faturamento'
            Color = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -25
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 150
            ExplicitHeight = 35
          end
        end
      end
      object pnl_cliente: TPanel
        Left = 4
        Top = 4
        Width = 537
        Height = 497
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alLeft
        Color = clHighlight
        ParentBackground = False
        TabOrder = 1
        object gridTabelaCliente: TDBGrid
          Left = 14
          Top = 44
          Width = 507
          Height = 244
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataSource = dsClientes
          GradientEndColor = clSkyBlue
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = gridTabelaClienteCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 283
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPFCNPJ'
              Width = 118
              Visible = True
            end>
        end
        object pnlIdCliente: TPanel
          Left = 10
          Top = 293
          Width = 101
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 2
          object shp2IdCliente: TShape
            Left = 0
            Top = 0
            Width = 95
            Height = 37
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitHeight = 38
          end
          object edtIdCliente: TEdit
            Left = 4
            Top = 5
            Width = 86
            Height = 23
            HelpType = htKeyword
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Id Cliente'
          end
        end
        object pnlNomeCliente: TPanel
          Left = 110
          Top = 293
          Width = 421
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 3
          object shpNomeCliente: TShape
            Left = 0
            Top = 0
            Width = 415
            Height = 37
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
            ExplicitHeight = 38
          end
          object edtNomeCliente: TEdit
            Left = 4
            Top = 5
            Width = 407
            Height = 23
            HelpType = htKeyword
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Nome Cliente'
          end
        end
        object pnlPesquisaCliente: TPanel
          Left = 9
          Top = 5
          Width = 526
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object shpPesquisaCliente: TShape
            Left = 0
            Top = 0
            Width = 520
            Height = 38
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
          end
          object edtPesquisaCliente: TEdit
            Left = 6
            Top = 4
            Width = 508
            Height = 30
            HelpType = htKeyword
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Pesquisa Cliente'
            OnChange = edtPesquisaClienteChange
          end
        end
        object pnlCPFCNPJ: TPanel
          Left = 10
          Top = 335
          Width = 249
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 4
          object shpCPFCNPJ: TShape
            Left = 0
            Top = 0
            Width = 243
            Height = 38
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
          end
          object edtCPFCNPJ: TEdit
            Left = 11
            Top = 5
            Width = 209
            Height = 23
            HelpType = htKeyword
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Cpf/Cnpj'
          end
        end
        object pnlRGIE: TPanel
          Left = 259
          Top = 335
          Width = 272
          Height = 38
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 5
          object shpRGIE: TShape
            Left = 0
            Top = 0
            Width = 266
            Height = 38
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Shape = stRoundRect
          end
          object edtRGIE: TEdit
            Left = 8
            Top = 3
            Width = 253
            Height = 22
            HelpType = htKeyword
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Alignment = taCenter
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Rg/Ie'
          end
        end
      end
      object Panel3: TPanel
        Left = 25
        Top = 413
        Width = 483
        Height = 60
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BevelOuter = bvNone
        Color = clHighlight
        Padding.Right = 6
        ParentBackground = False
        TabOrder = 2
        object Shape6: TShape
          Left = 0
          Top = 0
          Width = 477
          Height = 60
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitWidth = 476
        end
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 477
          Height = 60
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Caption = '&Fechar Venda'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
          ExplicitWidth = 476
        end
      end
      object Panel2: TPanel
        Left = 543
        Top = 4
        Width = 343
        Height = 497
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Color = clHighlight
        ParentBackground = False
        TabOrder = 3
        object Panel4: TPanel
          Left = 20
          Top = 6
          Width = 310
          Height = 54
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 6
          TabOrder = 0
          object Shape7: TShape
            Left = 0
            Top = 0
            Width = 304
            Height = 54
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
          end
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 304
            Height = 54
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Alignment = taCenter
            Caption = 'Condi'#231#227'o de Pagamento'
            Color = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -25
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 283
            ExplicitHeight = 35
          end
        end
        object rgCondicao: TRadioGroup
          Left = 20
          Top = 81
          Width = 301
          Height = 392
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Color = clWhite
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindow
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = []
          ItemIndex = 0
          Items.Strings = (
            '01 - A Vista'
            '02 - Cart'#227'o Debito'
            '03 - Cart'#227'o Credito'
            '04 -'#160'Pix/Deposito')
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnClick = rgCondicaoClick
        end
      end
    end
  end
  object sqlCliente: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'select * from cliente')
    Left = 93
    Top = 138
  end
  object dsClientes: TDataSource
    DataSet = sqlCliente
    Left = 88
    Top = 208
  end
  object sqlInsertProdutos: TFDQuery
    Connection = DM.conexao
    Left = 361
    Top = 125
  end
  object sqlInsertPedido: TFDQuery
    Left = 354
    Top = 190
  end
end
