object Form1: TForm1
  Left = 144
  Top = 105
  Width = 589
  Height = 375
  Caption = 'frmFind'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 348
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object PanelTop: TPanel
      Left = 6
      Top = 6
      Width = 565
      Height = 107
      Align = alTop
      BevelInner = bvLowered
      BevelWidth = 2
      BorderStyle = bsSingle
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 4
        Top = 4
        Width = 553
        Height = 95
        ActivePage = TabSheet1
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1055#1086#1080#1089#1082' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
          object gbElem: TGroupBox
            Left = 0
            Top = 0
            Width = 545
            Height = 57
            Align = alTop
            Caption = #1069#1083#1077#1084#1077#1085#1090':'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label4: TLabel
              Left = 8
              Top = 24
              Width = 51
              Height = 13
              Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
            end
            object edtValue: TEdit
              Left = 64
              Top = 24
              Width = 377
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
            end
            object btnPoisk: TBitBtn
              Left = 448
              Top = 24
              Width = 89
              Height = 25
              Caption = '&'#1055#1086#1080#1089#1082
              Default = True
              TabOrder = 1
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0404
                04040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF800000FFFF00FF0000040404FFFFFFFFFFFF040404
                040404040404040404040404040404040404040404040404800000FFFF00FF00
                00FF0000040404FFFFFF00999966CCCC66CCCC66CCCC66CCCC66CCCC66CCCC66
                CCCC009999800000FFFF00FF0000FF0000009999040404FFFFFF009999CCFFFF
                99CCFF99FFFF99CCFF99FFFF99CCFF99CCFF800000FFFF00FF0000FF000099CC
                FF66CCCC040404FFFFFF009999CCFFFF99FFFF99CCFF86868604040404040486
                8686C0C0C0FF0000FF000099CCFF99CCFF66CCCC040404FFFFFF009999CCFFFF
                99CCFF868686C0C0C0FFFF00C0C0C004040486868600808099CCFF99FFFF99CC
                FF66CCCC040404FFFFFF009999CCFFFF868686FFFFFFFFFF00C0C0C0FFFF00C0
                C0C004040499CCFF99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF
                868686FFFF00FFFFFFFFFF00C0C0C0FFFF0004040499CCFF99CCFF99FFFF99CC
                FF66CCCC040404FFFFFF009999CCFFFF868686FFFFFFFFFF00FFFFFFFFFF00C0
                C0C004040499CCFF99FFFF99CCFF99FFFF66CCCC040404FFFFFF009999CCFFFF
                99CCFF868686FFFFFFFFFF00FFFFFF04040486868699FFFF99FFFF99FFFF99CC
                FF66CCCC040404FFFFFF009999CCFFFFCCFFFF99CCFF86868686868604040486
                8686CCFFFFCCFFFFCCFFFFCCFFFF99FFFF66CCCC040404FFFFFF00999966CCCC
                66CCCC66CCCC66CCCC66CCCC66CCCC66CCCC0099990099990099990099990099
                99009999FFFFFFFFFFFFFFFFFF009999F1F1F1CCFFFFCCFFFF99FFFF99FFFF00
                9999040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                009999009999009999009999009999040404FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 456
        Top = 4
        Width = 89
        Height = 20
        Caption = #1047#1072#1082#1088#1099#1090'|b'
        TabOrder = 1
        OnClick = BitBtn1Click
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
    object gridFind: TDBGrid
      Left = 6
      Top = 113
      Width = 565
      Height = 225
      Align = alClient
      Ctl3D = False
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object anim: TAnimate
      Left = 16
      Top = 72
      Width = 545
      Height = 25
      Active = False
      AutoSize = False
      FileName = '100Dollar.avi'
      StopFrame = 10
    end
  end
end
