object Fom_CadastroContasReceber: TFom_CadastroContasReceber
  Left = 0
  Top = 0
  Caption = 'Cadastro de contas a receber'
  ClientHeight = 553
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 120
  TextHeight = 20
  object pnl_1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 553
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Color = clBtnShadow
    Padding.Left = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 782
    object PgcUsuario: TPageControl
      Left = 11
      Top = 1
      Width = 783
      Height = 541
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ActivePage = TabOperacao
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 760
      object TabOperacao: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Operacao'
        object pnl_dados_user: TPanel
          Left = 0
          Top = 0
          Width = 775
          Height = 506
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Color = 14079702
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 752
          object edtID: TDBLabeledEdit
            Left = 26
            Top = 33
            Width = 35
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'ID'
            DataSource = DS_DocumentosaReceber
            Enabled = False
            TabOrder = 3
            EditLabel.Width = 13
            EditLabel.Height = 20
            EditLabel.Margins.Left = 5
            EditLabel.Margins.Top = 5
            EditLabel.Margins.Right = 5
            EditLabel.Margins.Bottom = 5
            EditLabel.Caption = 'Id'
            EditLabel.Layout = tlCenter
          end
          object edtNome: TDBLabeledEdit
            Left = 69
            Top = 33
            Width = 185
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'A'
            DataSource = DS_DocumentosaReceber
            TabOrder = 0
            EditLabel.Width = 46
            EditLabel.Height = 20
            EditLabel.Margins.Left = 5
            EditLabel.Margins.Top = 5
            EditLabel.Margins.Right = 5
            EditLabel.Margins.Bottom = 5
            EditLabel.Caption = 'Cliente'
            EditLabel.Layout = tlCenter
          end
          object edtCelular: TDBLabeledEdit
            Left = 26
            Top = 586
            Width = 182
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'CELULAR'
            TabOrder = 2
            EditLabel.Width = 46
            EditLabel.Height = 20
            EditLabel.Margins.Left = 5
            EditLabel.Margins.Top = 5
            EditLabel.Margins.Right = 5
            EditLabel.Margins.Bottom = 5
            EditLabel.Caption = 'Celular'
            EditLabel.Layout = tlCenter
          end
          object edtEmail: TDBLabeledEdit
            Left = 26
            Top = 526
            Width = 535
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            BorderStyle = bsNone
            Color = clWhite
            DataField = 'EMAIL'
            TabOrder = 1
            EditLabel.Width = 37
            EditLabel.Height = 20
            EditLabel.Margins.Left = 5
            EditLabel.Margins.Top = 5
            EditLabel.Margins.Right = 5
            EditLabel.Margins.Bottom = 5
            EditLabel.Caption = 'Email'
            EditLabel.Layout = tlCenter
          end
        end
        object pnlButtons: TPanel
          Left = 149
          Top = 671
          Width = 531
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Color = 14079702
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 1
          object pnlEditar: TPanel
            Left = 111
            Top = 6
            Width = 105
            Height = 49
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            Padding.Right = 6
            TabOrder = 0
            object Shpeditar: TShape
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Brush.Color = 8618369
              Pen.Style = psClear
              Shape = stRoundRect
            end
            object btnEditar: TSpeedButton
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Editar'
              Flat = True
            end
          end
          object pnlCadastrar: TPanel
            Left = 6
            Top = 6
            Width = 105
            Height = 49
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            Padding.Right = 6
            TabOrder = 1
            object ShpCadastrar: TShape
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Brush.Color = 8618369
              Pen.Style = psClear
              Shape = stRoundRect
            end
            object btnCadastrar: TSpeedButton
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Cadastrar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
          end
          object pnlSalvar: TPanel
            Left = 216
            Top = 6
            Width = 105
            Height = 49
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            Padding.Right = 6
            TabOrder = 2
            object shpSalvar: TShape
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Brush.Color = 14079702
              Pen.Style = psClear
              Shape = stRoundRect
            end
            object btnSalvar: TSpeedButton
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Salvar'
              Enabled = False
              Flat = True
            end
          end
          object pnlCancelar: TPanel
            Left = 321
            Top = 6
            Width = 105
            Height = 49
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            Padding.Right = 6
            TabOrder = 3
            object ShpCancelar: TShape
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Brush.Color = 14079702
              Pen.Style = psClear
              Shape = stRoundRect
            end
            object btnCancelar: TSpeedButton
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Cancelar'
              Enabled = False
              Flat = True
              ExplicitLeft = -2
            end
          end
          object pnlExcluir: TPanel
            Left = 426
            Top = 6
            Width = 105
            Height = 49
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            Padding.Right = 6
            TabOrder = 4
            object shpExcluir: TShape
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Brush.Color = 8618369
              Pen.Style = psClear
              Shape = stRoundRect
            end
            object btnExcluir: TSpeedButton
              Left = 0
              Top = 0
              Width = 99
              Height = 49
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Excluir'
              Flat = True
            end
          end
        end
      end
      object TabPesquisa: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pesquisa'
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 775
          Height = 506
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Color = 14079702
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentBackground = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 6
            Top = 34
            Width = 763
            Height = 466
            Hint = 'Clique duas vezes para selecionar'
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            DataSource = DS_DocumentosaReceber
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'A'
                Width = 109
                Visible = True
              end>
          end
          object edtPesquisa: TEdit
            Left = 6
            Top = 6
            Width = 763
            Height = 28
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 1
          end
        end
      end
    end
  end
  object SQL_DocumentosaReceber: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'select * from DOC_RECEBER')
    Left = 663
    Top = 335
  end
  object DS_DocumentosaReceber: TDataSource
    DataSet = SQL_DocumentosaReceber
    Left = 662
    Top = 270
  end
end
