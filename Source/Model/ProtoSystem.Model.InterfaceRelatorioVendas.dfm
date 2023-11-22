object frmInterfaceRelatorioVendas: TfrmInterfaceRelatorioVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 218
  ClientWidth = 626
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
    Width = 626
    Height = 218
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
      Width = 616
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Caption = '   Relat'#243'rio de Vendas'
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
        Left = 523
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
          ExplicitTop = -1
        end
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 33
      Width = 616
      Height = 180
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
        Top = 129
        Width = 606
        Height = 46
        Align = alBottom
        BevelOuter = bvNone
        Caption = 
          'Defini'#231#227'o do relat'#243'rio: Mostrar todas as movimenta'#231#245'es relaciona' +
          'das ao banco em um determinado periodo'
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
      end
      object pnlCadastrar: TPanel
        Left = 5
        Top = 77
        Width = 606
        Height = 52
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object ShpCadastrar: TShape
          Left = 0
          Top = 0
          Width = 606
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
          Width = 606
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
      object Panel3: TPanel
        Left = 5
        Top = 5
        Width = 606
        Height = 67
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 606
          Height = 67
          Align = alClient
          Brush.Color = 8739130
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitWidth = 79
          ExplicitHeight = 22
        end
        object Label1: TLabel
          Left = 16
          Top = 21
          Width = 91
          Height = 21
          Alignment = taCenter
          Caption = 'Periodo de: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 322
          Top = 21
          Width = 81
          Height = 21
          Alignment = taCenter
          Caption = 'At'#233' a data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15649712
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DT_Inicial: TCalendarPicker
          Left = 113
          Top = 21
          Width = 160
          Height = 27
          Cursor = crHandPoint
          BorderColor = clWhite
          CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
          CalendarHeaderInfo.DaysOfWeekFont.Height = -13
          CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
          CalendarHeaderInfo.DaysOfWeekFont.Style = []
          CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.Font.Color = clWindowText
          CalendarHeaderInfo.Font.Height = -20
          CalendarHeaderInfo.Font.Name = 'Segoe UI'
          CalendarHeaderInfo.Font.Style = []
          Color = clWhite
          Date = 45250.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          IsEmpty = False
          ParentFont = False
          TabOrder = 0
          TextHint = 'select a date'
        end
        object DT_Final: TCalendarPicker
          Left = 417
          Top = 21
          Width = 160
          Height = 27
          Cursor = crHandPoint
          CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
          CalendarHeaderInfo.DaysOfWeekFont.Height = -13
          CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
          CalendarHeaderInfo.DaysOfWeekFont.Style = []
          CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.Font.Color = clWindowText
          CalendarHeaderInfo.Font.Height = -20
          CalendarHeaderInfo.Font.Name = 'Segoe UI'
          CalendarHeaderInfo.Font.Style = []
          Color = clWindow
          Date = 45250.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          IsEmpty = False
          ParentFont = False
          TabOrder = 1
          TextHint = 'select a date'
        end
      end
    end
  end
  object SQL_RELATORIO: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT * FROM VENDA_PEDIDOS')
    Left = 282
    Top = 118
  end
end
