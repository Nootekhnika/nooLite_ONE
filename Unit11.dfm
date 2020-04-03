object Form11: TForm11
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1091#1089#1090#1088#1086#1081#1089#1090#1074#1072
  ClientHeight = 316
  ClientWidth = 617
  Color = clBtnFace
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
    Width = 623
    Height = 3
    Pen.Color = clGray
    Pen.Width = 2
  end
  object Shape1: TShape
    Left = -6
    Top = 231
    Width = 623
    Height = 3
    Pen.Color = clGray
    Pen.Width = 2
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 260
    Height = 23
    Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1076#1080#1084#1084#1080#1088#1086#1074#1072#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 350
    Height = 19
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1076#1080#1084#1084#1080#1088#1086#1074#1072#1085#1080#1103', %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 192
    Width = 358
    Height = 19
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1076#1080#1084#1084#1080#1088#1086#1074#1072#1085#1080#1103', %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 137
    Width = 320
    Height = 19
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1099#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1074#1082#1083#1102#1095#1077#1085#1080#1103', %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object AdvGlassButton12: TAdvGlassButton
    Left = 355
    Top = 248
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
    TabOrder = 0
    Version = '1.3.0.0'
    OnClick = AdvGlassButton12Click
  end
  object AdvGlassButton1: TAdvGlassButton
    Left = 501
    Top = 248
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
    TabOrder = 1
    Version = '1.3.0.0'
    OnClick = AdvGlassButton1Click
  end
  object SpinEdit1: TSpinEdit
    Left = 372
    Top = 93
    Width = 61
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 1
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 372
    Top = 192
    Width = 61
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 2
    ParentFont = False
    TabOrder = 3
    Value = 100
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 372
    Top = 137
    Width = 61
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 4
    Value = 0
    OnExit = SpinEdit3Exit
  end
end
