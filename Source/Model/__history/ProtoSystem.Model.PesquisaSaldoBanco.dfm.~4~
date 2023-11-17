object frmPesquisaSaldoBanco: TfrmPesquisaSaldoBanco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 257
  ClientWidth = 539
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
    Width = 539
    Height = 257
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
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 540
    object Panel2: TPanel
      Left = 5
      Top = 35
      Width = 529
      Height = 182
      Align = alClient
      BevelOuter = bvNone
      Color = 14725001
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 530
    end
    object gridFornecedor: TDBGrid
      Left = 13
      Top = 42
      Width = 514
      Height = 166
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DS_PesquisaSaldo
      DrawingStyle = gdsClassic
      FixedColor = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_BANCO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Saldo Atual'
          Width = 77
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 5
      Top = 5
      Width = 529
      Height = 30
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Saldo Do Banco'
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
      ExplicitWidth = 530
      object Pnl_sair: TPanel
        Left = 435
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
        ExplicitLeft = 436
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
      Top = 217
      Width = 529
      Height = 35
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
      ExplicitWidth = 530
      object pnlCadastrar: TPanel
        Left = 439
        Top = 6
        Width = 84
        Height = 23
        Align = alRight
        BevelOuter = bvNone
        Padding.Right = 5
        TabOrder = 0
        ExplicitLeft = 440
        object ShpCadastrar: TShape
          Left = 0
          Top = 0
          Width = 79
          Height = 23
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
          Height = 23
          Align = alClient
          Caption = 'Atualizar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
          OnClick = btnCadastrarClick
          ExplicitHeight = 18
        end
      end
    end
  end
  object SQL_PesquisaSaldo: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT * FROM BANCO')
    Left = 232
    Top = 120
  end
  object DS_PesquisaSaldo: TDataSource
    DataSet = SQL_PesquisaSaldo
    Left = 360
    Top = 120
  end
end
