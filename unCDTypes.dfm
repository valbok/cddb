object frmTypes: TfrmTypes
  Left = 197
  Top = 113
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058'a'#1055#1067
  ClientHeight = 273
  ClientWidth = 262
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
    Width = 262
    Height = 273
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSilver
    TabOrder = 0
    object gbMain: TGroupBox
      Left = 2
      Top = 2
      Width = 258
      Height = 161
      Align = alTop
      Caption = 'CD:'
      Color = clBtnFace
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
        Top = 40
        Width = 31
        Height = 13
        Caption = 'nAmE:'
      end
      object Label3: TLabel
        Left = 136
        Top = 64
        Width = 26
        Height = 13
        Caption = 'Date:'
      end
      object Label4: TLabel
        Left = 8
        Top = 72
        Width = 52
        Height = 13
        Caption = 'Comments:'
      end
      object eId: TDBEdit
        Left = 40
        Top = 16
        Width = 57
        Height = 21
        Color = 16053503
        Ctl3D = True
        DataField = 'id'
        DataSource = DM.dsTypes
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object eName: TDBEdit
        Left = 40
        Top = 40
        Width = 209
        Height = 21
        Ctl3D = True
        DataField = 'name'
        DataSource = DM.dsTypes
        ParentCtl3D = False
        TabOrder = 1
      end
      object btnExit: TBitBtn
        Left = 167
        Top = 15
        Width = 81
        Height = 20
        Caption = #1042#1080#1093#1110#1076
        TabOrder = 2
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
      object memComments: TDBMemo
        Left = 8
        Top = 88
        Width = 241
        Height = 65
        Ctl3D = True
        DataField = 'comments'
        DataSource = DM.dsTypes
        ParentCtl3D = False
        TabOrder = 3
      end
      object eDate: TDBEdit
        Left = 168
        Top = 64
        Width = 81
        Height = 21
        Color = 16053503
        DataField = 'thedate'
        DataSource = DM.dsTypes
        TabOrder = 4
      end
    end
    object dbnav: TDBNavigator
      Left = 2
      Top = 253
      Width = 258
      Height = 18
      DataSource = DM.dsTypes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object grid: TDBGrid
      Left = 2
      Top = 163
      Width = 258
      Height = 90
      Align = alClient
      Color = 15658734
      DataSource = DM.dsTypes
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
