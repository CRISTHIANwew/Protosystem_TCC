object frmPesquisaSaldoBanco: TfrmPesquisaSaldoBanco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 320
  ClientWidth = 376
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
    Width = 376
    Height = 320
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 8739130
    Padding.Left = 6
    Padding.Top = 6
    Padding.Right = 6
    Padding.Bottom = 6
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 674
    ExplicitHeight = 321
    object Panel2: TPanel
      Left = 6
      Top = 44
      Width = 364
      Height = 226
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      Color = 14725001
      Padding.Left = 6
      Padding.Top = 6
      Padding.Right = 6
      Padding.Bottom = 6
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 662
      ExplicitHeight = 227
    end
    object gridFornecedor: TDBGrid
      Left = 18
      Top = 53
      Width = 343
      Height = 207
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DS_PesquisaSaldo
      DrawingStyle = gdsClassic
      FixedColor = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'Id'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_BANCO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Saldo Atual'
          Width = 96
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 6
      Top = 6
      Width = 364
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Saldo Do Banco'
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Padding.Left = 8
      Padding.Top = 8
      Padding.Right = 8
      Padding.Bottom = 8
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 662
      object Pnl_sair: TPanel
        Left = 246
        Top = 8
        Width = 110
        Height = 22
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
        Font.Quality = fqClearTypeNatural
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 544
        object Shape15: TShape
          Left = 0
          Top = 0
          Width = 110
          Height = 22
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Brush.Color = 8739130
          Shape = stRoundRect
          ExplicitHeight = 23
        end
        object btn_saircadprod: TSpeedButton
          Left = 0
          Top = 0
          Width = 110
          Height = 22
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
          OnClick = btn_saircadprodClick
          ExplicitHeight = 23
        end
      end
    end
    object Panel3: TPanel
      Left = 6
      Top = 270
      Width = 364
      Height = 44
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 13275746
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15649712
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Padding.Left = 8
      Padding.Top = 8
      Padding.Right = 8
      Padding.Bottom = 8
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 271
      ExplicitWidth = 662
      object pnlCadastrar: TPanel
        Left = 251
        Top = 8
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
        ExplicitLeft = 549
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
          ExplicitHeight = 29
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
          Caption = 'Atualizar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          OnClick = btnCadastrarClick
          ExplicitHeight = 29
        end
      end
    end
  end
  object SQL_PesquisaSaldo: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT * FROM BANCO WHERE ID=1')
    Left = 140
    Top = 130
  end
  object DS_PesquisaSaldo: TDataSource
    DataSet = SQL_PesquisaSaldo
    Left = 80
    Top = 130
  end
end
