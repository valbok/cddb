object frmPass: TfrmPass
  Left = 192
  Top = 119
  Width = 303
  Height = 144
  Caption = #1047#1072#1088#1077#1075#1080#1090#1100#1089#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 295
    Height = 117
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 2
    BorderStyle = bsSingle
    TabOrder = 0
    object pnlunderMain: TPanel
      Left = 4
      Top = 4
      Width = 283
      Height = 105
      Align = alClient
      BevelInner = bvLowered
      BorderWidth = 2
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 86
        Height = 13
        Caption = #1060#1040#1050'_'#1048#1084#1103' '#1070#1079#1077#1088':'
      end
      object Label2: TLabel
        Left = 24
        Top = 40
        Width = 53
        Height = 13
        Caption = #1055#1072#1089#1089#1074#1086#1088#1076':'
      end
      object Bevel1: TBevel
        Left = 16
        Top = 16
        Width = 9
        Height = 41
        Shape = bsLeftLine
      end
      object Bevel2: TBevel
        Left = 8
        Top = 8
        Width = 269
        Height = 57
        Style = bsRaised
      end
      object cbLogin: TComboBox
        Left = 128
        Top = 16
        Width = 145
        Height = 21
        BevelKind = bkFlat
        BevelOuter = bvRaised
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
      end
      object ePass: TEdit
        Left = 128
        Top = 40
        Width = 145
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        PasswordChar = '+'
        TabOrder = 1
      end
      object btnEnter: TBitBtn
        Left = 8
        Top = 72
        Width = 177
        Height = 25
        Caption = #1069#1085#1090#1077#1088' '#1074' '#1089#1091#1089#1090#1077#1084#1091
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 2
        NumGlyphs = 2
      end
      object btnCancel: TBitBtn
        Left = 200
        Top = 72
        Width = 73
        Height = 25
        Caption = #1057#1072#1085#1089#1077#1083
        TabOrder = 3
        OnClick = btnCancelClick
      end
    end
  end
end
