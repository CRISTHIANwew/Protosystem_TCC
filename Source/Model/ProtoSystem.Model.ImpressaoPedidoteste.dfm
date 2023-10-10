object frmImpressaoPedidoteste: TfrmImpressaoPedidoteste
  Left = 0
  Top = 0
  ClientHeight = 812
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsImpressaoPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Default'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 37
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 248
        Height = 37
        Align = faLeft
        Caption = 'Pedido de venda N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 248
        Top = 0
        Width = 241
        Height = 37
        Align = faLeft
        DataField = 'ID_PEDIDO'
        DataSource = dsImpressaoPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Default'
        Font.Style = []
        ParentFont = False
        Text = 'DM.conexao'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 75
      Width = 718
      Height = 22
      BandType = btHeader
      Color = 16763786
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 65
        Height = 22
        Align = faLeft
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 24
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 24
      BandType = btFooter
    end
  end
  object dsImpressaoPedido: TDataSource
    DataSet = Frm_Vendas.SQL_ImpressaoPedido
    Left = 328
    Top = 408
  end
end
