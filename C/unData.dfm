object frmData: TfrmData
  Left = 228
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1040#1058#1040
  ClientHeight = 227
  ClientWidth = 261
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
    Width = 261
    Height = 227
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 15779500
    TabOrder = 0
    object gbMain: TGroupBox
      Left = 4
      Top = 4
      Width = 253
      Height = 201
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
        Top = 40
        Width = 26
        Height = 13
        Caption = 'PAth:'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 17
        Height = 13
        Caption = 'cD:'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 52
        Height = 13
        Caption = 'Comments:'
      end
      object eId: TDBEdit
        Left = 40
        Top = 16
        Width = 57
        Height = 19
        Color = 14869218
        Ctl3D = False
        DataField = 'id'
        DataSource = DM.dsData
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
        DataField = 'path'
        DataSource = DM.dsData
        ParentCtl3D = False
        TabOrder = 1
      end
      object memComments: TDBMemo
        Left = 2
        Top = 104
        Width = 249
        Height = 95
        Align = alBottom
        Ctl3D = False
        DataField = 'comments'
        DataSource = DM.dsData
        ParentCtl3D = False
        TabOrder = 2
      end
      object cbCD: TDBLookupComboBox
        Left = 40
        Top = 64
        Width = 145
        Height = 19
        Ctl3D = False
        DataField = 'cd_id'
        DataSource = DM.dsData
        KeyField = 'id'
        ListField = 'name'
        ListSource = DM.dsCDs
        ParentCtl3D = False
        TabOrder = 3
      end
    end
    object dbnav: TDBNavigator
      Left = 2
      Top = 207
      Width = 257
      Height = 18
      DataSource = DM.dsData
      Align = alBottom
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end
