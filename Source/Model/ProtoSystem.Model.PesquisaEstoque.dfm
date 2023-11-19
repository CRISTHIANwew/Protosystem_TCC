object Frm_PesEstoque: TFrm_PesEstoque
  Left = 452
  Top = 147
  BorderStyle = bsNone
  Caption = 'Pesquisa de estoque'
  ClientHeight = 635
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 635
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
    object Panel2: TPanel
      Left = 6
      Top = 44
      Width = 893
      Height = 585
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
      object Panel12: TPanel
        Left = 6
        Top = 6
        Width = 881
        Height = 43
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        Padding.Right = 6
        TabOrder = 0
        object Shape12: TShape
          Left = 0
          Top = 0
          Width = 875
          Height = 43
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Brush.Color = 13275746
          Shape = stRoundRect
          ExplicitWidth = 874
        end
        object Edit_pesquisa: TEdit
          Left = 50
          Top = 13
          Width = 746
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Alignment = taCenter
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 13275746
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16512241
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TextHint = 'PESQUISA POR DESCRI'#199#195'O'
          OnChange = Edit_pesquisaChange
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 100
      Width = 878
      Height = 521
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BorderStyle = bsNone
      Color = 8739130
      DataSource = DataSource1
      FixedColor = 14079702
      GradientEndColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 484
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade em estoque'
          Width = 338
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 6
      Top = 6
      Width = 893
      Height = 38
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Pesquisa de Estoque'
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
      object Pnl_sair: TPanel
        Left = 775
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
  end
  object DataSource1: TDataSource
    DataSet = Query_PesProd
    Left = 458
    Top = 180
  end
  object Query_PesProd: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'Select descricao, estoque from produto ')
    Left = 574
    Top = 175
  end
end
