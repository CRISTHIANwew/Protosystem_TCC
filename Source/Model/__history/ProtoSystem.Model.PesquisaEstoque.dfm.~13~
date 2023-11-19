object Frm_PesEstoque: TFrm_PesEstoque
  Left = 452
  Top = 147
  BorderStyle = bsNone
  Caption = 'Pesquisa de estoque'
  ClientHeight = 508
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 508
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
    ExplicitLeft = -5
    ExplicitTop = -1
    ExplicitWidth = 702
    ExplicitHeight = 521
    object Panel2: TPanel
      Left = 5
      Top = 35
      Width = 714
      Height = 468
      Align = alClient
      BevelOuter = bvNone
      Color = 14725001
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 264
      ExplicitTop = 9
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Panel12: TPanel
        Left = 5
        Top = 5
        Width = 704
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        Padding.Right = 5
        TabOrder = 0
        ExplicitLeft = 14
        ExplicitTop = 7
        ExplicitWidth = 685
        object Shape12: TShape
          Left = 0
          Top = 0
          Width = 699
          Height = 34
          Align = alClient
          Brush.Color = 13275746
          Shape = stRoundRect
          ExplicitTop = 24
          ExplicitWidth = 178
          ExplicitHeight = 40
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
          Text = 'PESQUISA POR DESCRI'#199#195'O'
          OnChange = Edit_pesquisaChange
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 80
      Width = 703
      Height = 417
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE'
          Width = 108
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
      Caption = '   Pesquisa de Estoque'
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 724
      object Shape8: TShape
        Left = 515
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 8739130
      end
      object Shape4: TShape
        Left = 395
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 15456203
      end
      object Shape5: TShape
        Left = 425
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 15649712
      end
      object Shape6: TShape
        Left = 455
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 14725001
      end
      object Shape7: TShape
        Left = 485
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 13274977
      end
      object Shape3: TShape
        Left = 365
        Top = 6
        Width = 24
        Height = 18
        Brush.Color = 16512241
      end
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
        ExplicitLeft = 630
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
  end
  object DataSource1: TDataSource
    DataSet = Query_PesProd
    Left = 458
    Top = 180
  end
  object Query_PesProd: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'Select descricao, estoque from produto ')
    Left = 564
    Top = 185
  end
end
