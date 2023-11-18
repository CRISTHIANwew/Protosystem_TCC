object frmPesquisaCliente: TfrmPesquisaCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pesquisa Cliente'
  ClientHeight = 541
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 541
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 8739130
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 5
      Top = 35
      Width = 714
      Height = 453
      Align = alClient
      BevelOuter = bvNone
      Color = 14725001
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitHeight = 471
      object Panel12: TPanel
        Left = 5
        Top = 5
        Width = 704
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        Padding.Right = 5
        TabOrder = 0
        object Shape12: TShape
          Left = 0
          Top = 0
          Width = 699
          Height = 34
          Align = alClient
          Brush.Color = 13275746
          Shape = stRoundRect
          ExplicitWidth = 700
        end
        object Edit_pesquisa: TEdit
          Left = 40
          Top = 10
          Width = 597
          Height = 16
          Alignment = taCenter
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
          Text = 'PESQUISA POR NOME'
          OnChange = Edit_pesquisaChange
        end
      end
    end
    object gridFornecedor: TDBGrid
      Left = 10
      Top = 81
      Width = 703
      Height = 400
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DS_PesquisaCliente
      DrawingStyle = gdsClassic
      FixedColor = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      OnCellClick = gridFornecedorCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Width = 251
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 5
      Top = 5
      Width = 714
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Pesquisa de Clientes'
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      object Pnl_sair: TPanel
        Left = 620
        Top = 6
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
        Font.Quality = fqClearTypeNatural
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Shape15: TShape
          Left = 0
          Top = 0
          Width = 88
          Height = 18
          Align = alClient
          Brush.Color = 8739130
          Shape = stRoundRect
        end
        object btn_saircadprod: TSpeedButton
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
          OnClick = btn_saircadprodClick
        end
      end
    end
    object Panel3: TPanel
      Left = 5
      Top = 488
      Width = 714
      Height = 48
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object pnlCadastrar: TPanel
        Left = 624
        Top = 6
        Width = 84
        Height = 36
        Align = alRight
        BevelOuter = bvNone
        Padding.Right = 5
        TabOrder = 0
        ExplicitHeight = 18
        object ShpCadastrar: TShape
          Left = 0
          Top = 0
          Width = 79
          Height = 36
          Align = alClient
          Brush.Color = 8739130
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitHeight = 18
        end
        object btnCadastrar: TSpeedButton
          Left = 0
          Top = 0
          Width = 79
          Height = 36
          Align = alClient
          Caption = 'Comfirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          ExplicitHeight = 18
        end
      end
    end
  end
  object SQL_PesquisaFornecedor: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 460
    Top = 311
    object SQL_PesquisaFornecedorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_PesquisaFornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object SQL_PesquisaFornecedorCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Origin = 'CPFCNPJ'
      Size = 14
    end
    object SQL_PesquisaFornecedorRGIE: TStringField
      FieldName = 'RGIE'
      Origin = 'RGIE'
    end
    object SQL_PesquisaFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object SQL_PesquisaFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object SQL_PesquisaFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 60
    end
    object SQL_PesquisaFornecedorCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object SQL_PesquisaFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object SQL_PesquisaFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object SQL_PesquisaFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
  end
  object DS_PesquisaCliente: TDataSource
    DataSet = SQL_PesquisaFornecedor
    Left = 664
    Top = 309
  end
end
