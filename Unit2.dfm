object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
  ClientHeight = 388
  ClientWidth = 646
  Color = 16250871
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 343
    Height = 19
    Caption = #1058#1080#1087' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072': '#1057#1080#1083#1086#1074#1086#1081' '#1073#1083#1086#1082' SLF-1-200'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape2: TShape
    Left = -6
    Top = 42
    Width = 659
    Height = 3
    Pen.Color = clGray
    Pen.Width = 2
  end
  object Shape1: TShape
    Left = -6
    Top = 303
    Width = 659
    Height = 3
    Pen.Color = clGray
    Pen.Width = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 51
    Width = 193
    Height = 65
    Caption = #1047#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1042#1082#1083#1102#1095#1077#1085#1086
      #1042#1099#1082#1083#1102#1095#1077#1085#1086)
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 213
    Top = 51
    Width = 188
    Height = 65
    Caption = #1058#1080#1087' '#1074#1099#1093#1086#1076#1072
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1056#1077#1083#1077#1081#1085#1099#1081' ('#1042#1082#1083'/'#1042#1099#1082#1083')'
      #1044#1080#1084#1084#1080#1088#1086#1074#1072#1085#1080#1077)
    ParentFont = False
    TabOrder = 1
  end
  object RadioGroup3: TRadioGroup
    Left = 213
    Top = 122
    Width = 188
    Height = 65
    Hint = 
      #1047#1072#1087#1088#1077#1097#1072#1077#1090#1089#1103' '#1087#1088#1080#1105#1084' '#1082#1086#1084#1072#1085#1076' '#1086#1090' '#1091#1089#1090#1088#1086#1081#1089#1090#1074' '#1089#1090#1072#1088#1086#1081' '#1074#1077#1088#1089#1080#1080' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' no' +
      'oLite'
    Caption = #1055#1088#1080#1105#1084' '#1082#1086#1084#1072#1085#1076' '#1086#1090' nooLite'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1056#1072#1079#1088#1077#1096#1105#1085
      #1047#1072#1087#1088#1077#1097#1105#1085)
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object RadioGroup4: TRadioGroup
    Left = 414
    Top = 51
    Width = 219
    Height = 136
    Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099' '#1074#1093#1086#1076#1072' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1055#1077#1088#1077#1082#1083#1102#1095#1072#1102#1097#1080#1081' '#1074#1099#1082#1083#1102#1095#1072#1090#1077#1083#1100
      #1050#1085#1086#1087#1082#1072
      #1042#1099#1082#1083#1102#1095#1072#1090#1077#1083#1100
      #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103)
    ParentFont = False
    TabOrder = 3
  end
  object AdvGlassButton12: TAdvGlassButton
    Left = 379
    Top = 324
    Width = 140
    Height = 56
    BackColor = 10012773
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 10012773
    GlowColor = 10012773
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 10012773
    TabOrder = 4
    Version = '1.3.0.0'
    OnClick = AdvGlassButton12Click
  end
  object AdvGlassButton1: TAdvGlassButton
    Left = 525
    Top = 320
    Width = 108
    Height = 56
    BackColor = 9276896
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 9276896
    GlowColor = 9276896
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 9276896
    TabOrder = 5
    Version = '1.3.0.0'
    OnClick = AdvGlassButton1Click
  end
  object RadioGroup5: TRadioGroup
    Left = 8
    Top = 122
    Width = 193
    Height = 65
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1089#1083#1077' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1042#1082#1083#1102#1095#1105#1085
      #1042#1099#1082#1083#1102#1095#1077#1085)
    ParentFont = False
    TabOrder = 6
  end
  object RadioGroup6: TRadioGroup
    Left = 8
    Top = 193
    Width = 193
    Height = 65
    Caption = #1060#1091#1085#1082#1094#1080#1103' '#1088#1077#1090#1088#1072#1085#1089#1083#1103#1094#1080#1080' nooLite'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1042#1082#1083#1102#1095#1077#1085#1072
      #1042#1099#1082#1083#1102#1095#1077#1085#1072)
    ParentFont = False
    TabOrder = 7
  end
  object RadioGroup7: TRadioGroup
    Left = 414
    Top = 51
    Width = 219
    Height = 86
    Caption = #1040#1082#1090#1080#1074#1085#1099#1081' '#1076#1072#1090#1095#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1044#1072#1090#1095#1080#1082' '#1087#1086#1083#1072
      #1044#1072#1090#1095#1080#1082' '#1074#1086#1079#1076#1091#1093#1072
      #1042#1085#1077#1096#1085#1080#1081' '#1073#1077#1089#1087#1088#1086#1074#1086#1076#1085#1086#1081' '#1076#1072#1090#1095#1080#1082)
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Visible = False
    OnClick = RadioGroup7Click
  end
  object RadioGroup8: TRadioGroup
    Left = 213
    Top = 193
    Width = 188
    Height = 65
    Caption = #1050#1086#1084#1072#1085#1076#1072' Temporary_On'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1047#1072#1087#1088#1077#1090#1080#1090#1100
      #1056#1072#1079#1088#1077#1096#1080#1090#1100)
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    Visible = False
  end
  object RadioGroup9: TRadioGroup
    Left = 414
    Top = 193
    Width = 219
    Height = 104
    Caption = #1063#1091#1074#1089#1090#1074#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1080#1105#1084#1085#1080#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      '0 dB'
      '6 dB'
      '12 dB'
      '18 dB')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Visible = False
  end
  object RadioGroup10: TRadioGroup
    Left = 213
    Top = 51
    Width = 188
    Height = 65
    Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1055#1086' '#1082#1072#1083#1077#1085#1076#1072#1088#1102
      #1055#1086' '#1094#1077#1083#1077#1074#1086#1081' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1077)
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Visible = False
  end
end
