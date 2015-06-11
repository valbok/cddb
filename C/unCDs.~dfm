object frmCDs: TfrmCDs
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'CDs name'
  ClientHeight = 224
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 262
    Height = 224
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clInfoBk
    TabOrder = 0
    object gbMain: TGroupBox
      Left = 4
      Top = 4
      Width = 253
      Height = 198
      Caption = 'CD:'
      Color = clSkyBlue
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
        Left = 8
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Type:'
      end
      object Label4: TLabel
        Left = 8
        Top = 85
        Width = 52
        Height = 13
        Caption = 'Comments:'
      end
      object eId: TDBEdit
        Left = 40
        Top = 16
        Width = 57
        Height = 19
        Color = 14803425
        Ctl3D = False
        DataField = 'id'
        DataSource = DM.dsCDs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object eName: TDBEdit
        Left = 40
        Top = 40
        Width = 207
        Height = 19
        Ctl3D = False
        DataField = 'name'
        DataSource = DM.dsCDs
        ParentCtl3D = False
        TabOrder = 1
      end
      object memComments: TDBMemo
        Left = 2
        Top = 98
        Width = 249
        Height = 98
        Align = alBottom
        Ctl3D = False
        DataField = 'comments'
        DataSource = DM.dsCDs
        ParentCtl3D = False
        TabOrder = 2
      end
      object cbType: TDBLookupComboBox
        Left = 40
        Top = 64
        Width = 145
        Height = 19
        Ctl3D = False
        DataField = 'type_id'
        DataSource = DM.dsCDs
        KeyField = 'id'
        ListField = 'name'
        ListSource = DM.dsCDtypes
        ParentCtl3D = False
        TabOrder = 3
      end
    end
    object dbnav: TDBNavigator
      Left = 2
      Top = 204
      Width = 258
      Height = 18
      DataSource = DM.dsCDs
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end
