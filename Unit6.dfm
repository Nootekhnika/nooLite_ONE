object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 395
  ClientWidth = 470
  Color = 16250871
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 157
    Height = 18
    Caption = #1040#1076#1088#1077#1089' '#1079#1072#1087#1088#1086#1089#1072':  http://'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 294
    Width = 95
    Height = 18
    Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 16
    Top = 118
    Width = 95
    Height = 18
    Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 156
    Width = 174
    Height = 19
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1072#1076#1072#1087#1090#1077#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 165
    Top = 296
    Width = 93
    Height = 14
    Caption = '* '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object but_save: TAdvGlassButton
    Left = 292
    Top = 343
    Width = 170
    Height = 44
    BackColor = 10012773
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 10012773
    GlowColor = 10012773
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 10012773
    TabOrder = 0
    Version = '1.3.0.0'
    OnClick = but_saveClick
  end
  object CheckBox4: TCheckBox
    Left = 16
    Top = 16
    Width = 432
    Height = 17
    Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#1087#1088#1080#1085#1103#1090#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1095#1077#1088#1077#1079' http '#1079#1072#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 176
    Top = 47
    Width = 286
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '192.168.0.168/'
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 263
    Width = 393
    Height = 17
    Caption = #1047#1072#1087#1080#1089#1100' '#1087#1088#1080#1085#1103#1090#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1074' '#1092#1072#1081#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object AdvDirectoryEdit1: TAdvDirectoryEdit
    Left = 128
    Top = 316
    Width = 334
    Height = 21
    EmptyTextStyle = []
    Flat = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ReadOnly = False
    TabOrder = 4
    Visible = False
    Version = '1.3.3.4'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
      00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
      00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
      0000FF0BBB00000F0000FFF000FFFFFF0000}
    BrowseDialogText = 'Select Directory'
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 87
    Width = 446
    Height = 17
    Hint = 
      #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1086#1088#1084#1072#1090': ID '#1082#1072#1085#1072#1083#1072' ; '#1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072' ; '#1042#1083#1072#1078#1085#1086#1089#1090#1100'; '#1057#1086#1089#1090#1086#1103#1085#1080#1077 +
      ' '#1073#1072#1090#1072#1088#1077#1080': OK '#1080#1083#1080' LB - '#1077#1089#1083#1080' '#1088#1072#1079#1088#1103#1078#1077#1085#1072
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093' '#1089' '#1076#1072#1090#1095#1080#1082#1086#1074' '#1074' '#1092#1072#1081#1083' "sens_state.txt"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object AdvDirectoryEdit2: TAdvDirectoryEdit
    Left = 128
    Top = 119
    Width = 334
    Height = 21
    EmptyTextStyle = []
    Flat = False
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ReadOnly = False
    TabOrder = 6
    Visible = True
    Version = '1.3.3.4'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Etched = False
    Glyph.Data = {
      CE000000424DCE0000000000000076000000280000000C0000000B0000000100
      0400000000005800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000FFF
      00000088888880FF00000B088888880F00000BB08888888000000BBB00000000
      00000BBBBBBB0B0F00000BBB00000B0F0000F000BBBBBB0F0000FF0BBBBBBB0F
      0000FF0BBB00000F0000FFF000FFFFFF0000}
    BrowseDialogText = 'Select Directory'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 184
    Width = 149
    Height = 154
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100', '#1041#1086#1076
    Items.Strings = (
      '9600*'
      '14400'
      '19200'
      '28800'
      '38400'
      '57600'
      '115200')
    TabOrder = 7
    Visible = False
  end
  object RadioGroup2: TRadioGroup
    Left = 163
    Top = 184
    Width = 182
    Height = 105
    Caption = #1063#1091#1074#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1090#1088#1072#1085#1089#1080#1074#1077#1088#1072
    Items.Strings = (
      '0 '#1076#1041
      '6 '#1076#1041
      '12 '#1076#1041'*'
      '18 '#1076#1041)
    TabOrder = 8
    Visible = False
  end
  object but_set: TAdvGlassButton
    Left = 8
    Top = 343
    Width = 265
    Height = 44
    BackColor = 6940136
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 9
    Version = '1.3.0.0'
    Visible = False
    OnClick = but_setClick
  end
end
