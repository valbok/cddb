object frmData: TfrmData
  Left = 228
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1101#1049't'#1072
  ClientHeight = 231
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 261
    Height = 231
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15779500
    TabOrder = 0
    object gbMain: TGroupBox
      Left = 4
      Top = 4
      Width = 253
      Height = 205
      Caption = 'CD:'
      Color = 14609886
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 11
        Height = 13
        Caption = 'id:'
      end
      object Label2: TLabel
        Left = 8
        Top = 37
        Width = 26
        Height = 13
        Caption = 'PAth:'
      end
      object Label3: TLabel
        Left = 8
        Top = 58
        Width = 17
        Height = 13
        Caption = 'cD:'
      end
      object Label4: TLabel
        Left = 8
        Top = 97
        Width = 52
        Height = 13
        Caption = 'Comments:'
      end
      object Label5: TLabel
        Left = 8
        Top = 79
        Width = 27
        Height = 13
        Caption = 'DatE:'
      end
      object eId: TDBEdit
        Left = 40
        Top = 16
        Width = 57
        Height = 19
        Color = 14869218
        Ctl3D = False
        DataField = 'id'
        DataSource = DM.dsDAtaWOCD
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object ePath: TDBEdit
        Left = 40
        Top = 37
        Width = 207
        Height = 19
        Ctl3D = False
        DataField = 'path'
        DataSource = DM.dsDAtaWOCD
        ParentCtl3D = False
        TabOrder = 1
      end
      object memComments: TDBMemo
        Left = 2
        Top = 112
        Width = 249
        Height = 91
        Align = alBottom
        Ctl3D = False
        DataField = 'comments'
        DataSource = DM.dsDAtaWOCD
        ParentCtl3D = False
        TabOrder = 2
      end
      object cbCD: TDBLookupComboBox
        Left = 40
        Top = 58
        Width = 208
        Height = 19
        Ctl3D = False
        DataField = 'cd_id'
        DataSource = DM.dsDAtaWOCD
        KeyField = 'id'
        ListField = 'name'
        ListSource = DM.dsCDs
        ParentCtl3D = False
        TabOrder = 3
      end
      object eTheDate: TDBEdit
        Left = 40
        Top = 79
        Width = 73
        Height = 19
        Ctl3D = False
        DataField = 'thedate'
        DataSource = DM.dsDAtaWOCD
        ParentCtl3D = False
        TabOrder = 4
      end
      object btnExit: TBitBtn
        Left = 192
        Top = 9
        Width = 55
        Height = 25
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 5
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
      object btnDEL: TBitBtn
        Left = 168
        Top = 79
        Width = 79
        Height = 20
        Caption = #1047#1085#1080#1097#1080#1090#1080
        TabOrder = 6
        OnClick = btnDELClick
        Glyph.Data = {
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
      end
    end
    object dbnav: TDBNavigator
      Left = 2
      Top = 211
      Width = 257
      Height = 18
      DataSource = DM.dsDAtaWOCD
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end