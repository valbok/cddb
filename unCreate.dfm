object frmCreate: TfrmCreate
  Left = 233
  Top = 126
  Width = 494
  Height = 403
  Caption = '$uper CReATE cODED by ..:::dLt.atT0o:::..'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 486
    Height = 376
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object PageControl: TPageControl
      Left = 2
      Top = 2
      Width = 482
      Height = 372
      ActivePage = tabSFind
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      object tabSFind: TTabSheet
        Caption = #1060#1072#1081#1085#1076' '#1060#1072#1049#1051#1067
        object btnOPenLinkInfo: TBitBtn
          Left = 3
          Top = 344
          Width = 97
          Height = 25
          Caption = 'OPen DB LinkInfo'
          TabOrder = 0
        end
        object pnlMPC: TPanel
          Left = 0
          Top = 0
          Width = 474
          Height = 344
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object StatusBarText: TStatusBar
            Left = 2
            Top = 323
            Width = 470
            Height = 19
            Panels = <
              item
                Text = '> the $uper ultra progA  was loaded.'
                Width = 50
              end>
            SimplePanel = False
          end
          object pnlLeft: TPanel
            Left = 336
            Top = 2
            Width = 136
            Height = 306
            Align = alRight
            BevelInner = bvLowered
            TabOrder = 1
            object Label1: TLabel
              Left = 4
              Top = 8
              Width = 48
              Height = 13
              Caption = #1044#1088#1072#1081#1074#1045's:'
            end
            object Procent: TGauge
              Left = 5
              Top = 213
              Width = 128
              Height = 14
              Color = clBlack
              ParentColor = False
              Progress = 0
              Visible = False
            end
            object sbSave: TSpeedButton
              Left = 5
              Top = 184
              Width = 128
              Height = 25
              Caption = #1047#1072#1089#1069#1081#1074#1080#1090#1100' '#1074' '#1044#1041
              Flat = True
              Glyph.Data = {
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
              OnClick = sbSaveClick
            end
            object lbDrive: TListBox
              Left = 3
              Top = 24
              Width = 131
              Height = 97
              Ctl3D = False
              ItemHeight = 13
              MultiSelect = True
              ParentCtl3D = False
              TabOrder = 0
            end
            object leMask: TLabeledEdit
              Left = 5
              Top = 160
              Width = 127
              Height = 19
              Color = 16053503
              Ctl3D = False
              EditLabel.Width = 35
              EditLabel.Height = 13
              EditLabel.Caption = #1052#1091#1089#1082#1072':'
              LabelPosition = lpAbove
              LabelSpacing = 3
              ParentCtl3D = False
              TabOrder = 1
              Text = '*.*'
            end
            object btnFindFiles: TBitBtn
              Left = 3
              Top = 120
              Width = 132
              Height = 25
              Caption = #1060#1072#1081#1085#1076
              Default = True
              TabOrder = 2
              OnClick = btnFindFilesClick
            end
          end
          object listB: TListBox
            Left = 2
            Top = 2
            Width = 334
            Height = 306
            Align = alClient
            ItemHeight = 13
            TabOrder = 2
          end
          object StatusBarPath: TStatusBar
            Left = 2
            Top = 308
            Width = 470
            Height = 15
            Color = 16053503
            Panels = <
              item
                Width = 2500
              end>
            SimplePanel = False
          end
        end
      end
    end
    object eRoot: TEdit
      Left = 104
      Top = 3
      Width = 379
      Height = 19
      Color = 16053503
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
end
