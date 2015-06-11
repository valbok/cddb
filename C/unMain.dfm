object frmMain: TfrmMain
  Left = 196
  Top = 118
  Width = 560
  Height = 375
  Caption = 'frmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 310
    Align = alClient
    TabOrder = 0
    object pnlMain2: TPanel
      Left = 1
      Top = 1
      Width = 550
      Height = 308
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 4
      TabOrder = 0
      object grid: TDBGrid
        Left = 6
        Top = 41
        Width = 538
        Height = 243
        Align = alClient
        Color = clScrollBar
        FixedColor = clMoneyGreen
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object nav: TDBNavigator
        Left = 6
        Top = 284
        Width = 538
        Height = 18
        VisibleButtons = [nbDelete, nbPost, nbCancel]
        Align = alBottom
        Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object pnlFind: TPanel
        Left = 6
        Top = 6
        Width = 538
        Height = 35
        Align = alTop
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 37
          Height = 13
          Caption = #1042#1072#1083#1100#1070':'
        end
        object Label2: TLabel
          Left = 176
          Top = 8
          Width = 63
          Height = 13
          Caption = #1087'o '#1060#1080#1077#1083#1044'Y:'
        end
        object eValue: TEdit
          Left = 48
          Top = 5
          Width = 121
          Height = 21
          Color = clInfoBk
          TabOrder = 0
        end
        object cbFields: TComboBox
          Left = 240
          Top = 5
          Width = 145
          Height = 21
          Style = csDropDownList
          Color = clInfoBk
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 1
          Text = #1053#1072#1052#1077' '#1092#1040#1081#1083#1040
          Items.Strings = (
            #1048#1076
            #1053#1072#1052#1077' '#1092#1040#1081#1083#1040
            #1087#1040#1060
            #1082#1086#1052#1084#1077#1085#1090#1057
            #1047#1099' '#1044#1101#1049#1090)
        end
        object sbFind: TBitBtn
          Left = 389
          Top = 3
          Width = 68
          Height = 25
          Caption = #1060#1072#1081'HD'
          Default = True
          TabOrder = 2
          OnClick = sbFindClick
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
  object StatusBar: TStatusBar
    Left = 0
    Top = 310
    Width = 552
    Height = 19
    Panels = <
      item
        Text = #1045#1097#1105' '#1085#1077' '#1087#1086#1076#1082#1086'N'#1085#1077#1082#1090#1077#1085
        Width = 450
      end
      item
        Width = 150
      end>
    SimplePanel = False
  end
  object MainMenu: TMainMenu
    Left = 136
    Top = 72
    object miDB: TMenuItem
      Caption = #1044#1041
      object miConnect: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          7F99B27F99B2C6C6C6E5E5E57377776E6E6E6E6E6E566264566264566264585E
          5F5A5A5A676767FFFFFF41414141414126BFFF2672B22C2C2C6B6B6BD9DDDD3F
          A526CCCCCCCCCCCCC3C3C3999FA0818585999999666666676767CCCCCCCCCCCC
          7FCCFF3E7197747474B2B2B2EDEDEDE2E2E2D1D9D9D1D9D9D6DADAC2D0D1B3C8
          CAB7C0C0666666414141FFFFFFFFFFFFFFFFFF7D7D7D8D8D8DD8D8D841414141
          4141414141414141414141414141414141606060727272414141C6C6C68D8D8D
          8D8D8D4D4D4D545454939393DEEBEBD6E7E7D1D9D9D4D9D9D0D4D4C4CECFB3C8
          CA7581836060604F4F4FC0C4C49FB99F9CA990B4BABB9EAAAC999999ECF0F06C
          530C7979267979266C6C266C6C269EA68D94A1A3515151FFFFFFC8C8C8B2D8A5
          A5BFA5C9C9C9C6C6C6A0A6A7ECF0F0795F0C9292268C8C1986860C737319A3A7
          8DACACAC515151FFFFFF979797AFAFAFAFAFAFABABABA8A8A89B9F9FEAF1F27F
          6619CCCC26A5A5338C8C1979790C9EA68DACACAC515151FFFFFFA2A6A6798181
          767A7A7474746E6E6E838383E7EFEF795F0CA5A5339292268C8C1979790CA3A7
          8DACACAC515151FFFFFFC8C8C8BABAADB7738DB7738DB7738DA88693ECF0F0A3
          8D74A38D74A38D74A38D74A38D74BFBAAEACACAC515151FFFFFFC8C8C89E8D73
          CC3333CC3333CC3333BF4C4CD2D2D2DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
          DCB9B9B9525252FFFFFFC8C8C89E8D73D8590CE57219CC3F26CC3333B23F4CB2
          B6B6949494939393CCCCCCCCCCCCCCCCCCCCCCCCE5E5E5FFFFFFC8C8C8A38D74
          E57219FDA471CC4C19CC3333B21933CBD3D38F8F8F8D8D8DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC8C8C89E8D73993F0C994C009933199933198C2619CB
          D3D38F8F8F8D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8F1F1F1
          ECF0F0ECF0F0ECF0F0ECF0F0ECF0F0DBDBDB8F8F8F8D8D8DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCCCCCCC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0A3A3A3909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1057#1077#1090' &'#1050#1086#1085#1085#1077#1082#1090
        ShortCut = 120
        OnClick = miConnectClick
      end
      object miDisconnect: TMenuItem
        Bitmap.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0404
          04040404040404040404040404040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFF
          0404040404040404040404040404040404040404040404040404040404040080
          8000FFFF66CCFF3399CC3399CC04040404040404040404040404040404040404
          0404040404040404040404040404040404040404FFFFFF040404C0C0C0FFFFFF
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00080
          8099FFFF00FFFF66CCFF3399CC040404C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFC0C0C0868686FFFFFF
          8686868686868686868686868686868686868686868686868686868686860080
          8000808000808000808000808004040486868686868686868686868686868686
          8686868686868686868686868686868686868686FFFFFF868686FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF868686DDDDDD040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF868686DDDDDD040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF040404868686040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0404040404040404040404040404040404040404040404040404040404040404
          0404040404040404040404040404040404040404040404040404040404040404
          0404040404040404040404040404FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF868686
          8686868686868686868686868686868686868686868686868686868686868686
          8686868686868686868686868686868686868686868686868686868686868686
          8686868686868686868686777777040404FFFFFFFFFFFFFFFFFFFFFFFF868686
          FFFFFFA4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0
          A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4A0A0A4
          A0A0A4A0A0A4A0A0A4A0A0B2B2B2777777040404FFFFFFFFFFFFFFFFFF868686
          FFFFFFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFDDDDDD7777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFDDDDDD7777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFDDDDDDD7D7D7D7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0
          C0C0C0C0B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0A4A0A0A4A0A0A4A0A099
          9999999999999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFDDDDDDD7D7D7D7D7D7CCCCCCCCCCCCCCCCCCCCCCCCC0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0A4A0A000800000
          8000006633999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFE3E3E3DDDDDDD7D7D7D7D7D7D7D7D7CCCCCCCCCCCCCCCCCCC0C0C0C0C0
          C0C0C0C0B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2A4A0A0A4A0A0A4A0A000FF0000
          FF00008000999999A4A0A0B2B2B2868686777777040404FFFFFFFFFFFF868686
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFB2B2B2868686777777040404FFFFFFFFFFFFFFFFFF
          868686B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
          B2B2B2B2B2B2B2B2B2B2B2B2B2B2868686777777040404FFFFFFFFFFFFFFFFFF
          FFFFFF7777779696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696777777040404FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF7777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777777777777777777777777777
          7777777777777777777777777777777777777777FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1044#1080#1089' &'#1050#1086#1085#1085#1077#1082#1090
        Enabled = False
        ShortCut = 123
        OnClick = miDisconnectClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miCreate: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FFFFFF0000FFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FF0000FF0000FF
          FFFF0000FFFFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FF0000FF0000FF0000FF
          0000FF0000FFFFFF0000FFFFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFF000000000000000000FFFFFFFF
          0000FF0000FF0000FF0000FFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFF0000FF0000FF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
          C0000000FFFFFFFFFFFFFFFFFF808080FFFFFFFF0000FFFFFF808080FFFFFFFF
          0000FF0000FF0000FF0000FFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFF808080
          FFFFFFFF0000FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000FFFFFFFFFFFFFFFFFF808080FFFFFF808080808080808080FFFFFFFF
          FFFFFFFFFFFFFFFFC0C0C0FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFF808080
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0808080FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080808080808080808080808080
          8080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = '&'#1050#1088#1080#1077#1090
        Enabled = False
        ShortCut = 16459
        OnClick = miCreateClick
      end
    end
    object N2: TMenuItem
      Caption = #1057#1077#1088#1042#1040#1081#1057
      object miRefresh: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFF000000
          000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF80808000FF0000FF0080808080808080808080808000
          0000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF808080C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0808080000000FFFFFF808080C0C0C0C0C0C00000
          00000000000000FFFFFFFFFFFF808080808080808080808080808080000000FF
          FFFFFFFFFF808080C0C0C0C0C0C0808080808080808080000000FFFFFF808080
          FFFF00FFFF00FFFF00808080000000FFFFFFFFFFFF808080808080808080FFFF
          FFFFFFFF808080000000FFFFFF808080FFFF00FFFF00FFFF00808080000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000FFFFFF808080
          808080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF808080000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF000000000000000000FFFFFFFFFFFF80808000000080808000FF00
          00FF00808080808080808080808080000000FFFFFF808080C0C0C0C0C0C00000
          00000000808080000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808000
          0000FFFFFF808080C0C0C0C0C0C0808080808080808080FFFFFFFFFFFF808080
          808080808080808080808080000000FFFFFFFFFFFF808080808080808080FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFF00FFFF00FFFF00808080000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
          FFFF00FFFF00FFFF00808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080808080808080808080FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1056#1077#1092#1056#1045#1064
        ShortCut = 116
        OnClick = miRefreshClick
      end
      object miFind: TMenuItem
        Bitmap.Data = {
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
        Caption = #1060'Y'#1081#1053#1044' '#1086#1055#1045#1053
        ShortCut = 16454
        OnClick = miFindClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miApply: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202060606080
          8080808080808080202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF202020606060808080808080808080808080808080808080202020FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF20202060606080808080808060606040404040
          4040404040404040606060808080202020FFFFFFFFFFFFFFFFFF202020808080
          8080806060605050507070708080808080808080808080806060606060608080
          80202020FFFFFFFFFFFF808080606060404040808080C0C0C0B0B0B080808080
          8080808080808080808080606060606060808080202020FFFFFF202020606060
          B0B0B0B0B0B0C0C0C0B0B0B09090908080808080808080808080808080806060
          60606060808080202020404040808080B0B0B0B0B0B090909080808080808080
          8080606060606060808080808080808080606060606060808080202020808080
          80808080808080808080808060606020205F7F7F7F7F7F7F6060608080808080
          80808080606060202020FFFFFF2020208080808080806060605F2020BF00007F
          003F3F3F7FBFBFBFFFFFFF9F9F9F808080808080808080404040FFFFFFFFFFFF
          20202080808080808020205F7F3F3FBFBFBFEFEFEFDFDFDFDFDFDFEFEFEF9F9F
          9F808080606060202020FFFFFFFFFFFFFFFFFF202020808080808080BFBFBFDF
          DFDFDFDFDFDFDFDFEFEFEFDFDFDF7F7F7F202020000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF202020808080808080B0B0B0AFAFEF9F9FDF7F7F7F2020200000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20202080808080
          8080707070202020000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF202020202020000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = 'Ap'#1055#1051#1080' '#1091#1087'.'#1044#1072#1090#1077#1057
        ShortCut = 49235
        OnClick = miApplyClick
      end
      object miCancel: TMenuItem
        Bitmap.Data = {
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
        Caption = #1050#1072#1085#1057'3'#1083' '#1091#1087'.'#1044#1072#1090#1077#1057
        ShortCut = 49242
        OnClick = miCancelClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miDelete: TMenuItem
        Bitmap.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777777777777777777777770000007777777770888008077777770888FF088
          07777708888FF888807777088888008880777708888FF08880777708888FF088
          80777708888FF08880777708888FF08880777770888FF8880777777708888880
          7777777770000007777777777777777777777777777777777777}
        Caption = #1044#1077#1083#1080#1058
        ShortCut = 16430
        OnClick = miDeleteClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miClearDb: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          436A8B71A3CC70A4CC4A7AAA26456B050A13FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF3D5B776D9FC65D92BE699AC04A7EAE2C4C8017
          284C060913FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E96C4
          6BA2CA5B91C03961943F628E33527C152240122244FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF79AED67CA7C898B6D67C9BBC6180A23D588015
          1D2C1320420A1122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2936466BA3CC
          7DB3DE7EB0D4759EC0608DB6456F9C263A5A121A340E131EFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF33475E41608E80B3DC84B7DC8BB9DA6E9ABA6B9DC824
          3F6A0D162A0A0F1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E6F9A7DA2C4
          A1C6DE99BDDA8AB1CC5B87B280AACC2B5286364E6C060409FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8EBBDC92B9D4A1C7DE5282B8274264394B66537BA234
          5D9076A2C25885AE3F628CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86B9DC88B9DC
          A1C9DE598CBC1228541C2E50447EB45A84AC6089B65986B22F5382FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4075A65D95C689BDE08DBBDC286AB6265E9E4571A644
          76AA39577E668BAE4973A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BA5D071ACDA
          679BC486AECA7FB0D44677A81F40781C44846198C492BDDC77A5CAFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF5090C45C9ACA5791C288B8DA98C3DC598AB41A3A7815
          306E407FB68DB9D47097BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF508DC24F8BC0
          629AC889B9E080AFD46A9BC4315D941741822A61A0598DB82F4567FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA2CBE4A5CEE497C1DE91BDDA72ABD670A1CA5E94BC51
          83B24D7FAE3460940E1728FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BC5E49ECBE4
          9FC7E48FBCDE73ADDA649DCC6695C25185B436659E23477E04070FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF86C4E493C4E091C6E484B8E069A6D4609ACC6896C450
          84B4325B94193564FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1054#1095#1080#1089#1090'N'#1090#1100' '#1060#1072#1081#1083#1053#1101#1081#1084' '#1044#1080#1041#1080
        OnClick = miClearDbClick
      end
      object miClearCD: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A10140C161AFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF20415214242EFFFFFFFFFFFFFFFFFFFFFFFF
          365F762A4854FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3459
          685090AEFFFFFFFFFFFF0E18204E8BB44C86A82A4B5EFFFFFFFFFFFF30506026
          475AFFFFFF0C1114FFFFFFFFFFFF2A46585491B44E8BAEFFFFFF0E1920345F7C
          12232C68B5DB243E4A101B2236627A62A6C668ACCC70B2D2FFFFFF1C2C306AB6
          D80E1C242E5268FFFFFFFFFFFFFFFFFFFFFFFF1A2F3A66B3D85A92AC66A8CA66
          A9C466A6BF72BCE0568DA866A8C21C333CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF46799480D0EF6AB3D8263F4A46768E66B3E072BDDE50849CFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C678266A7BF18252A40
          6B8430576A10191E3E678246768CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF365C764674922C4D665EA6CE64AAD03251685287A82C4658FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2842524C7F9E72BADE7A
          C8EC7AC8EE76C1E65A95B8223948FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0A1116406B8666A8CC7AC8F06EB8DE70B6DC5088A80E181EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A151C366684467C9E52
          92BA5090B84C80A05692B4365A6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          16252E1627324682A61629340C151C1C3544223C4C0A101416283242748E2642
          523259721A2D3CFFFFFFFFFFFFFFFFFF3E72923A6A861A2F3AFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF3860763A677E345A720E1C24FFFFFFFFFFFFFFFFFF
          FFFFFF78CCF3365F76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16252C3660
          78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF345A70FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1054#1095#1080#1089#1090'N'#1090#1100' CD'#1085#1101#1081#1084' '#1044#1080#1041#1080' '
        OnClick = miClearCDClick
      end
    end
    object miCD: TMenuItem
      Caption = #1051#1086#1082#1072#1058#1048#1086#1053' [DB]'
      object miViewCD: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96969696969699CCFFDD
          DDDDC1C1C1C1C1C1B2B2B25F5F5F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF969696CCCCFFCCCCFF99CCFF99CCFFC1C1C1DDDDDDDDDDDDC1C1C1B2B2
          B25F5F5FFFFFFFFFFFFFFFFFFFFFFFFF969696CC99CCCC99CCCCCCFFCCCCFF99
          CCFFC1C1C1DDDDDDC1C1C1DDDDDDC1C1C1B2B2B25F5F5FFFFFFFFFFFFFFFFFFF
          DDDDDDCCFF99CC99CCCC99CCCCCCFF99CCFFC1C1C1C1C1C1DDDDDDC1C1C1C1C1
          C1C1C1C15F5F5FFFFFFFFFFFFFDDDDDDC1C1C1C1C1C1CCFF99CCFF99CC99CC66
          6666333333666666C1C1C1C1C1C1C1C1C1C1C1C1B2B2B25F5F5FFFFFFFDDDDDD
          CCCCFFCCCCFFC1C1C1C1C1C1666666333333868686333333666666C1C1C1C1C1
          C1C1C1C1C1C1C15F5F5FFFFFFFDDDDDDC1C1C1DDDDDDDDDDDDCCCCFF33333366
          6666FFFFFF868686333333C1C1C1C1C1C1C1C1C1C1C1C15F5F5FFFFFFFDDDDDD
          C1C1C1DDDDDDDDDDDDDDDDDD666666333333666666333333666666CCFF99CCFF
          99C1C1C1C1C1C15F5F5FFFFFFFDDDDDDC1C1C1DDDDDDDDDDDDCC99CCC1C1C166
          6666333333666666CCCCFFCCCCFFCCFF99CCFF99CCFF995F5F5FFFFFFFDDDDDD
          DDDDDDDDDDDDCC99CCCC99CCDDDDDDDDDDDDC1C1C199CCFFCC99CCCCCCFFCCCC
          FFCCCCFF868686FFFFFFFFFFFFFFFFFFDDDDDDC1C1C1CC99CCDDDDDDDDDDDDC1
          C1C1C1C1C199CCFFCC99CCCC99CCCC99CCCCCCFF868686FFFFFFFFFFFFFFFFFF
          FFFFFFDDDDDDDDDDDDDDDDDDDDDDDDC1C1C1C1C1C1D7D7D799CCFFCC99CCCC99
          CC868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDC1C1C1C1
          C1C1C1C1C1D7D7D799CCFF969696868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1042#1100#1070' '#1074#1089#1077' '#1057#1044
        Enabled = False
        ShortCut = 49219
        OnClick = miViewCDClick
      end
      object miViewDb: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF7F7F7FFFFFFFFFFFFF3F3F3FBFBFFF7F7FFF7F7FFF7F7FFF7F7FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBFBFFF7F7FFF000000FFFFFFFF
          FFFF00007F0000BF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F7F7FFF0000FF0000BF00003FFFFFFFFFFFFF00003F0000FF0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7FFF0000FF0000FF7F7F7F00
          4040FFFFFF00003F0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F7F7FFF0000FF00003FBFBFBF3F3F3FFFFFFF00003F0000FF0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7FFF0000FF00003F7F7F7F3F
          3F3FFFFFFF0000000000BF3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F7F7FFF0000FF0000FF0000FF0000BF00003FFFFFFFFFFFFFFFFFFF7F7F
          7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFBFBFBF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFFFFFF7F7F7F7F7F7F7F
          7F7F7F7F7FFFFFFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F3F3F3FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Caption = #1074#1068#1102' '#1074#1089#1077' '#1044#1041
        Enabled = False
        ShortCut = 49220
        OnClick = miViewDbClick
      end
    end
  end
end
