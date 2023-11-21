object frmInterfaceRelatorioProd: TfrmInterfaceRelatorioProd
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 153
  ClientWidth = 563
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
    Width = 563
    Height = 153
    Align = alClient
    BevelOuter = bvNone
    Color = 8805178
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -60
    ExplicitWidth = 459
    ExplicitHeight = 335
    object Panel8: TPanel
      Left = 5
      Top = 5
      Width = 553
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Relat'#243'rio de Produtos'
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
      ExplicitWidth = 449
      object Pnl_sair: TPanel
        Left = 460
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
        ExplicitLeft = 356
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
      Width = 553
      Height = 115
      Align = alClient
      BevelOuter = bvNone
      Color = 15649712
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 449
      ExplicitHeight = 297
      object pnlButtons: TPanel
        Left = 5
        Top = 78
        Width = 543
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        Caption = 
          'Defini'#231#227'o do relat'#243'rio: Mostrar todos os produtos e suas informa' +
          #231#245'es basicas'
        Color = 13275746
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15649712
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 260
        ExplicitWidth = 439
      end
      object pnlCadastrar: TPanel
        Left = 102
        Top = 13
        Width = 331
        Height = 52
        BevelOuter = bvNone
        Padding.Right = 5
        TabOrder = 1
        object ShpCadastrar: TShape
          Left = 0
          Top = 0
          Width = 326
          Height = 52
          Align = alClient
          Brush.Color = 8739130
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitWidth = 79
          ExplicitHeight = 22
        end
        object btnGerar: TSpeedButton
          Left = 0
          Top = 0
          Width = 326
          Height = 52
          Align = alClient
          Caption = 'Gerar Relat'#243'rio'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnGerarClick
          ExplicitWidth = 79
          ExplicitHeight = 22
        end
      end
    end
  end
end
