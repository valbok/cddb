object frmBrowse: TfrmBrowse
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'brovvse'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 348
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlMain2: TPanel
      Left = 2
      Top = 2
      Width = 528
      Height = 340
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 4
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 6
        Top = 6
        Width = 516
        Height = 328
        ActivePage = ts2
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        object ts2: TTabSheet
          Caption = 'DB'
          ImageIndex = 1
          object lv: TListView
            Left = 0
            Top = 25
            Width = 508
            Height = 275
            Align = alClient
            Columns = <
              item
                Caption = 'id'
              end
              item
                AutoSize = True
                Caption = 'Name'
              end
              item
                Caption = 'Comments'
                Width = 250
              end>
            ReadOnly = True
            RowSelect = True
            SortType = stText
            TabOrder = 0
            ViewStyle = vsReport
            OnDblClick = lvDblClick
          end
          object pnlTop: TPanel
            Left = 0
            Top = 0
            Width = 508
            Height = 25
            Align = alTop
            AutoSize = True
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            object ePath: TEdit
              Left = 2
              Top = 2
              Width = 495
              Height = 21
              Color = 16644596
              Ctl3D = True
              ParentCtl3D = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              Text = '>'
            end
          end
        end
      end
      object btnExit: TBitBtn
        Left = 55
        Top = 7
        Width = 80
        Height = 20
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 1
        OnClick = btnExitClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000
          0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF
          0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF000000FFFFFFFF
          FFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000FF0000FF0000FF000000FFFFFFFFFFFF0000000000FF0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF00
          00000000000000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FF00
          00FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000FF0000FF0000FF0000FF0000FF000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000FF0000FF0000FFFF
          FFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000
          00FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFFFFFFFFFFFFFF0000FF
          0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 152
    object miGet: TMenuItem
      Caption = #1043#1077#1090
      OnClick = miGetClick
    end
  end
end
