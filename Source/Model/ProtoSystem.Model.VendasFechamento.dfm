object frmVendasFechamento: TfrmVendasFechamento
  Left = 339
  Top = 311
  BorderStyle = bsNone
  Caption = 'Fechamento'
  ClientHeight = 464
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 464
    Align = alClient
    BevelOuter = bvNone
    Color = 8739130
    Padding.Left = 4
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    ParentBackground = False
    TabOrder = 0
    object pnl2: TPanel
      Left = 4
      Top = 46
      Width = 978
      Height = 414
      Align = alClient
      BevelOuter = bvNone
      Color = 14725001
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      ParentBackground = False
      TabOrder = 0
      object pnlCondicao: TPanel
        Left = 719
        Top = 2
        Width = 257
        Height = 410
        Align = alRight
        BevelOuter = bvNone
        Color = 15649712
        Padding.Left = 10
        Padding.Top = 10
        Padding.Right = 10
        Padding.Bottom = 10
        ParentBackground = False
        TabOrder = 0
        object GB_Total: TGroupBox
          Left = 0
          Top = 322
          Width = 248
          Height = 56
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Total Geral'
          Color = 15649712
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
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
            Top = 21
            Width = 244
            Height = 33
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = 22
            ExplicitHeight = 32
          end
          object edtTotalVenda: TEdit
            Left = 10
            Top = 26
            Width = 174
            Height = 27
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
          Left = 0
          Top = 62
          Width = 248
          Height = 56
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Despesas'
          Color = 15649712
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -14
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
            Top = 21
            Width = 244
            Height = 33
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = 22
            ExplicitHeight = 32
          end
          object edtDespesas: TEdit
            Left = 10
            Top = 25
            Width = 174
            Height = 27
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
          Left = 0
          Top = 125
          Width = 244
          Height = 56
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Frete'
          Color = 15649712
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Segoe UI'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -13
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Shape2: TShape
            Left = 2
            Top = 21
            Width = 240
            Height = 33
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = 22
            ExplicitHeight = 32
          end
          object edtFrete: TEdit
            Left = 10
            Top = 26
            Width = 174
            Height = 27
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
          Left = 0
          Top = 257
          Width = 248
          Height = 56
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = '% Desconto'
          Color = 15649712
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
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
            Top = 21
            Width = 244
            Height = 33
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = 22
            ExplicitHeight = 32
          end
          object edtPorcDesconto: TEdit
            Left = 3
            Top = 26
            Width = 169
            Height = 27
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
          Left = 0
          Top = 194
          Width = 244
          Height = 56
          Align = alCustom
          BiDiMode = bdLeftToRight
          Caption = 'Valor Desconto'
          Color = 15649712
          DefaultHeaderFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
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
            Top = 21
            Width = 240
            Height = 33
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitTop = 22
            ExplicitHeight = 32
          end
          object edtValorDesconto: TEdit
            Left = 10
            Top = 26
            Width = 174
            Height = 27
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
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
          Left = 8
          Top = 5
          Width = 248
          Height = 29
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 0
          object Shape5: TShape
            Left = 0
            Top = 0
            Width = 243
            Height = 29
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitHeight = 30
          end
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 243
            Height = 29
            Align = alClient
            Alignment = taCenter
            Caption = 'Faturamento'
            Color = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 120
            ExplicitHeight = 28
          end
        end
      end
      object pnl_cliente: TPanel
        Left = 2
        Top = 2
        Width = 430
        Height = 410
        Align = alLeft
        BevelOuter = bvNone
        Color = 15649712
        ParentBackground = False
        TabOrder = 1
        object gridTabelaCliente: TDBGrid
          Left = 11
          Top = 41
          Width = 406
          Height = 189
          DataSource = dsClientes
          GradientEndColor = clSkyBlue
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = gridTabelaClienteCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 226
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPFCNPJ'
              Width = 94
              Visible = True
            end>
        end
        object pnlIdCliente: TPanel
          Left = 8
          Top = 234
          Width = 81
          Height = 30
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 2
          object shp2IdCliente: TShape
            Left = 0
            Top = 0
            Width = 76
            Height = 30
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
          end
          object edtIdCliente: TEdit
            Left = 3
            Top = 4
            Width = 69
            Height = 18
            HelpType = htKeyword
            Alignment = taCenter
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TextHint = 'Id Cliente'
          end
        end
        object pnlNomeCliente: TPanel
          Left = 88
          Top = 234
          Width = 337
          Height = 30
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 3
          object shpNomeCliente: TShape
            Left = 0
            Top = 0
            Width = 332
            Height = 30
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
          end
          object edtNomeCliente: TEdit
            Left = 2
            Top = 2
            Width = 326
            Height = 19
            HelpType = htKeyword
            Alignment = taCenter
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TextHint = 'Nome Cliente'
          end
        end
        object pnlPesquisaCliente: TPanel
          Left = 7
          Top = 4
          Width = 421
          Height = 30
          Align = alCustom
          BevelOuter = bvNone
          Color = 15649712
          Padding.Right = 5
          ParentBackground = False
          TabOrder = 0
          object shpPesquisaCliente: TShape
            Left = 0
            Top = 0
            Width = 416
            Height = 30
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
          end
          object edtPesquisaCliente: TEdit
            Left = 5
            Top = 3
            Width = 406
            Height = 24
            HelpType = htKeyword
            Alignment = taCenter
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TextHint = 'Pesquisa Por Nome'
            OnChange = edtPesquisaClienteChange
          end
        end
        object pnlCPFCNPJ: TPanel
          Left = 8
          Top = 268
          Width = 199
          Height = 30
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 4
          object shpCPFCNPJ: TShape
            Left = 0
            Top = 0
            Width = 194
            Height = 30
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
          end
          object edtCPFCNPJ: TEdit
            Left = 9
            Top = 4
            Width = 167
            Height = 18
            HelpType = htKeyword
            Alignment = taCenter
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TextHint = 'Cpf/Cnpj'
          end
        end
        object pnlRGIE: TPanel
          Left = 207
          Top = 268
          Width = 218
          Height = 30
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 5
          object shpRGIE: TShape
            Left = 0
            Top = 0
            Width = 213
            Height = 30
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
          end
          object edtRGIE: TEdit
            Left = 6
            Top = 2
            Width = 203
            Height = 23
            HelpType = htKeyword
            Alignment = taCenter
            BorderStyle = bsNone
            Color = 13275746
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -14
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            TextHint = 'RG/IE'
          end
        end
      end
      object Panel3: TPanel
        Left = 20
        Top = 346
        Width = 381
        Height = 32
        BevelOuter = bvNone
        Color = 15649712
        ParentBackground = False
        TabOrder = 2
        object Shape6: TShape
          Left = 0
          Top = 0
          Width = 381
          Height = 32
          Align = alClient
          Brush.Color = 13275746
          Shape = stRoundRect
        end
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 381
          Height = 32
          Align = alClient
          Caption = '&Fechar Venda'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
      end
      object Panel2: TPanel
        Left = 438
        Top = 6
        Width = 275
        Height = 410
        BevelOuter = bvNone
        Color = 15649713
        ParentBackground = False
        TabOrder = 3
        object rgCondicao: TRadioGroup
          Left = 16
          Top = 41
          Width = 241
          Height = 360
          Color = 15649713
          DefaultHeaderFont = False
          DoubleBuffered = False
          DragCursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = 15649712
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          Items.Strings = (
            '01 - A Vista'
            '02 - Cart'#227'o Debito'
            '03 - Cart'#227'o Credito'
            '04 -'#160'Pix/Deposito')
          ParentBackground = False
          ParentColor = False
          ParentDoubleBuffered = False
          ParentFont = False
          ParentShowHint = False
          ShowFrame = False
          ShowHint = False
          TabOrder = 0
          OnClick = rgCondicaoClick
        end
        object Panel4: TPanel
          Left = 16
          Top = 5
          Width = 248
          Height = 29
          Align = alCustom
          BevelOuter = bvNone
          Padding.Right = 5
          TabOrder = 1
          object Shape7: TShape
            Left = 0
            Top = 0
            Width = 243
            Height = 29
            Align = alClient
            Brush.Color = 13275746
            Shape = stRoundRect
            ExplicitHeight = 30
          end
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 243
            Height = 29
            Align = alClient
            Alignment = taCenter
            Caption = 'Condi'#231#227'o de Pagamento'
            Color = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15649712
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 229
            ExplicitHeight = 28
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 4
      Top = 4
      Width = 978
      Height = 42
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Fechamento'
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Pnl_sair: TPanel
        Left = 885
        Top = 5
        Width = 88
        Height = 32
        Cursor = crHandPoint
        Align = alRight
        BevelOuter = bvNone
        Color = 13274977
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Shape15: TShape
          Left = 0
          Top = 0
          Width = 88
          Height = 32
          Align = alClient
          Brush.Color = 8739130
          Shape = stRoundRect
        end
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 88
          Height = 32
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Fechar'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          OnClick = SpeedButton2Click
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
    Top = 192
  end
  object sqlInsertProdutos: TFDQuery
    Connection = DM.conexao
    Left = 231
    Top = 185
  end
  object sqlInsertPedido: TFDQuery
    Left = 354
    Top = 190
  end
end
