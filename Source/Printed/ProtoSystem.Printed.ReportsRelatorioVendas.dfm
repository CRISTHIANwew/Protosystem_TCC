object frmReportsRelatorioVenda: TfrmReportsRelatorioVenda
  Left = 0
  Top = 0
  ClientHeight = 731
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DS_RELATORIO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 1
        Width = 718
        Height = 25
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'ProtoSystem Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 634
        Top = 27
        Width = 83
        Height = 22
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 464
        Top = 27
        Width = 171
        Height = 22
        AutoSize = False
        Caption = 'Data da impress'#227'o: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 49
        Width = 718
        Height = 25
        Align = faBottom
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Relat'#243'rio de Vendas Por Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbPeriodo: TRLLabel
        Left = 3
        Top = 27
        Width = 462
        Height = 22
        AutoSize = False
        Caption = 'Periodo Selecionado: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 169
      Width = 718
      Height = 48
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel11: TRLLabel
        Left = 0
        Top = 31
        Width = 718
        Height = 16
        Align = faBottom
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Desenvolvido Por: Analsita Cristhian - ProtoSistem Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 624
        Top = 6
        Width = 49
        Height = 22
        AutoSize = False
        Caption = 'Pagina: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 672
        Top = 2
        Width = 43
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        Layout = tlCenter
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 24
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel5: TRLLabel
        Left = 1
        Top = 1
        Width = 41
        Height = 22
        Align = faLeft
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Id'
      end
      object RLLabel6: TRLLabel
        Left = 42
        Top = 1
        Width = 335
        Height = 22
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Cliente'
      end
      object RLLabel7: TRLLabel
        Left = 377
        Top = 1
        Width = 103
        Height = 22
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'CPF CNPJ'
      end
      object RLLabel9: TRLLabel
        Left = 480
        Top = 1
        Width = 118
        Height = 22
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Cond. Pagamento'
      end
      object RLLabel8: TRLLabel
        Left = 598
        Top = 1
        Width = 116
        Height = 22
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'Total Da Venda'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 32
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 41
        Height = 32
        Align = faLeft
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'ID'
        DataSource = DS_RELATORIO
      end
      object RLDBMemo2: TRLDBMemo
        Left = 41
        Top = 0
        Width = 336
        Height = 32
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'NOME_CLIENTE'
        DataSource = DS_RELATORIO
      end
      object RLDBMemo3: TRLDBMemo
        Left = 377
        Top = 0
        Width = 104
        Height = 32
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'CPF_CNPJ'
        DataSource = DS_RELATORIO
      end
      object RLDBMemo5: TRLDBMemo
        Left = 481
        Top = 0
        Width = 117
        Height = 32
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'DESCRICAO_PAG'
        DataSource = DS_RELATORIO
      end
      object RLDBMemo4: TRLDBMemo
        Left = 598
        Top = 0
        Width = 116
        Height = 32
        Align = faLeft
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        DataField = 'TOTAL_GERAL'
        DataSource = DS_RELATORIO
      end
    end
  end
  object DS_RELATORIO: TDataSource
    DataSet = frmInterfaceRelatorioVendas.SQL_RELATORIO
    Left = 320
    Top = 336
  end
end
