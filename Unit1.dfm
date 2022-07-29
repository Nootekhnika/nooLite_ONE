object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'nooLite ONE'
  ClientHeight = 738
  ClientWidth = 1150
  Color = 16250871
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvSmoothStatusIndicator1: TAdvSmoothStatusIndicator
    Left = 949
    Top = 13
    Width = 20
    Height = 20
    Caption = ' '
    Version = '1.0.1.0'
    Appearance.Fill.Color = 9276896
    Appearance.Fill.ColorTo = clSilver
    Appearance.Fill.ColorMirror = clNone
    Appearance.Fill.ColorMirrorTo = clNone
    Appearance.Fill.GradientType = gtSolid
    Appearance.Fill.GradientMirrorType = gtSolid
    Appearance.Fill.BorderColor = clGray
    Appearance.Fill.Rounding = 10
    Appearance.Fill.ShadowOffset = 0
    Appearance.Fill.Glow = gmNone
    Appearance.Font.Charset = DEFAULT_CHARSET
    Appearance.Font.Color = clWhite
    Appearance.Font.Height = -11
    Appearance.Font.Name = 'Tahoma'
    Appearance.Font.Style = []
    Appearance.Glow = False
  end
  object Label19: TLabel
    Left = 880
    Top = 8
    Width = 63
    Height = 25
    Alignment = taRightJustify
    Caption = '-------'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 428
    Top = 448
    Width = 140
    Height = 19
    Caption = #1050#1086#1084#1072#1085#1076#1072' nooLite'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 145
    Top = 448
    Width = 125
    Height = 19
    Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 145
    Top = 503
    Width = 200
    Height = 19
    Caption = #1059#1087#1088#1072#1074#1083#1103#1102#1097#1072#1103' '#1082#1086#1084#1072#1085#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 430
    Top = 501
    Width = 116
    Height = 19
    Caption = #1040#1076#1088#1077#1089' '#1082#1072#1085#1072#1083#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 572
    Top = 503
    Width = 85
    Height = 19
    Caption = 'RES/TOGL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 8
    Top = 8
    Width = 95
    Height = 25
    Caption = #1050#1072#1085#1072#1083#1099':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 333
    Top = 8
    Width = 132
    Height = 25
    Caption = #1059#1089#1090#1088#1086#1081#1089#1090#1074#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object AdvCircularProgress1: TAdvCircularProgress
    Left = 627
    Top = 388
    Width = 48
    Height = 48
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Enabled = False
    Max = 10
    Step = 1
    Visible = False
    Appearance.BackGroundColor = clNone
    Appearance.BorderColor = clNone
    Appearance.ActiveSegmentColor = 10012773
    Appearance.InActiveSegmentColor = 16767892
    Appearance.TransitionSegmentColor = 16767892
    Appearance.ProgressSegmentColor = clNone
    Interval = 100
  end
  object Shape1: TShape
    Left = 8
    Top = 439
    Width = 963
    Height = 3
    Pen.Color = clGray
    Pen.Width = 2
  end
  object Label6: TLabel
    Left = 331
    Top = 364
    Width = 638
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 733
    Top = 503
    Width = 22
    Height = 19
    Caption = 'D0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 794
    Top = 503
    Width = 22
    Height = 19
    Caption = 'D1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 855
    Top = 503
    Width = 22
    Height = 19
    Caption = 'D2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 916
    Top = 503
    Width = 22
    Height = 19
    Caption = 'D3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 671
    Top = 503
    Width = 34
    Height = 19
    Caption = 'FMT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 663
    Top = 448
    Width = 51
    Height = 19
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 741
    Top = 448
    Width = 111
    Height = 18
    Caption = #1050#1086#1083'. '#1087#1086#1074#1090#1086#1088#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object AdvGlassButton1: TAdvGlassButton
    Left = 8
    Top = 448
    Width = 121
    Height = 58
    BackColor = 10012773
    Caption = #1055#1077#1088#1077#1076#1072#1090#1100
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
    OnClick = AdvGlassButton1Click
  end
  object ComboBox1: TComboBox
    Left = 430
    Top = 473
    Width = 227
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 1
    Text = 'OFF=0'
    Items.Strings = (
      'OFF=0'
      'Bright_Down=1'
      'On=2'
      'Bright_Up=3'
      'Switch=4'
      'Bright_Back=5'
      'Set_Brightness=6'
      'Load_Preset=7'
      'Save_Preset=8'
      'Unbind=9'
      'Stop_Reg=10'
      '-'#1088#1077#1079#1077#1088#1074'-'#1085#1077' '#1080#1089#1087'.-=11'
      '-'#1088#1077#1079#1077#1088#1074'-'#1085#1077' '#1080#1089#1087'.-=12'
      '-'#1088#1077#1079#1077#1088#1074'-'#1085#1077' '#1080#1089#1087'.-=13'
      '-'#1088#1077#1079#1077#1088#1074'-'#1085#1077' '#1080#1089#1087'.-=14'
      'Bind=15'
      'Roll_Color=16'
      'Switch_Color=17'
      'Switch_Mode=18'
      'Speed_Mode_Switch=19'
      'Battery_Low=20'
      'Send_Temp_Humi=21'
      'Test_Result=22'
      'Shadow_Load_Preset=23'
      'Shadow_Set_Bright=24'
      'Temporary_On=25'
      'Modes=26'
      'Send_Temp_Humi=21'
      'CMD_Read_State=128'
      'CMD_Write_State=129'
      'CMD_Send_State=130'
      'CMD_Service=131'
      'CMD_Clear_Mem=132')
  end
  object ComboBox2: TComboBox
    Left = 145
    Top = 473
    Width = 144
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'nooLite TX'
    Items.Strings = (
      'nooLite TX'
      'nooLite RX'
      'nooLite-F TX'
      'nooLite-F RX'
      #1057#1077#1088#1074#1080#1089#1085#1099#1081
      'Bootloader')
  end
  object ComboBox3: TComboBox
    Left = 145
    Top = 528
    Width = 269
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = #1055#1077#1088#1077#1076#1072#1090#1100' '#1082#1086#1084#1072#1085#1076#1091
    Items.Strings = (
      #1055#1077#1088#1077#1076#1072#1090#1100' '#1082#1086#1084#1072#1085#1076#1091
      #1055#1077#1088#1077#1076#1072#1090#1100' '#1064#1042' '#1082#1086#1084#1072#1085#1076#1091
      #1057#1095#1080#1090#1072#1090#1100' '#1086#1090#1074#1077#1090
      #1042#1082#1083#1102#1095#1080#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091
      #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091
      #1054#1095#1080#1089#1090#1080#1090#1100' '#1103#1095#1077#1081#1082#1091' ('#1082#1072#1085#1072#1083')'
      #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1072#1084#1103#1090#1100' ('#1074#1089#1077' '#1082#1072#1085#1072#1083#1099')'
      #1054#1090#1074#1103#1079#1072#1090#1100' '#1072#1076#1088#1077#1089' '#1086#1090' '#1082#1072#1085#1072#1083#1072
      #1055#1077#1088#1077#1076#1072#1090#1100' '#1087#1086' '#1072#1076#1088#1077#1089#1091' F ('#1089' '#1082#1072#1085#1072#1083#1086#1084')'
      #1055#1077#1088#1077#1076#1072#1090#1100' '#1087#1086' '#1072#1076#1088#1077#1089#1091' F ('#1073#1077#1079' '#1082#1072#1085#1072#1083#1072')'
      'B_CMD_BOOT'
      'B_CMD_GETID'
      'B_CMD_ERASE'
      'B_CMD_WRITE'
      'B_CMD_RESET_OK'
      'B_CMD_EXIT_BOOT'
      '-'
      #1053#1072#1089#1090#1088#1086#1081#1082#1072' ('#1079#1072#1087#1080#1089#1100')'
      #1053#1072#1089#1090#1088#1086#1081#1082#1072' ('#1095#1090#1077#1085#1080#1077')')
  end
  object SpinEdit1: TSpinEdit
    Left = 430
    Top = 526
    Width = 119
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 4
    Value = 0
  end
  object memo1: TRichEdit
    Left = 7
    Top = 560
    Width = 963
    Height = 177
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HideScrollBars = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object SpinEdit7: TSpinEdit
    Left = 572
    Top = 528
    Width = 85
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 6
    Value = 0
  end
  object AdvGlassButton3: TAdvGlassButton
    Left = 308
    Top = 449
    Width = 50
    Height = 23
    BackColor = 6940136
    Caption = 'TX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 7
    Version = '1.3.0.0'
    OnClick = AdvGlassButton3Click
  end
  object AdvGlassButton4: TAdvGlassButton
    Left = 364
    Top = 448
    Width = 50
    Height = 23
    BackColor = 10012773
    Caption = 'RX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 10012773
    GlowColor = 10012773
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 10012773
    TabOrder = 8
    Version = '1.3.0.0'
    OnClick = AdvGlassButton4Click
  end
  object AdvGlassButton5: TAdvGlassButton
    Left = 308
    Top = 474
    Width = 50
    Height = 23
    BackColor = 9276896
    Caption = 'F_TX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 9276896
    GlowColor = 9276896
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 9276896
    TabOrder = 9
    Version = '1.3.0.0'
    OnClick = AdvGlassButton5Click
  end
  object AdvGlassButton6: TAdvGlassButton
    Left = 364
    Top = 474
    Width = 50
    Height = 23
    BackColor = 16767892
    Caption = 'F_RX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 16767892
    GlowColor = 16767892
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 16767892
    TabOrder = 10
    Version = '1.3.0.0'
    OnClick = AdvGlassButton6Click
  end
  object AdvGlassButton8: TAdvGlassButton
    Left = 213
    Top = 166
    Width = 114
    Height = 50
    BackColor = 10012773
    Caption = #1042#1082#1083#1102#1095#1080#1090#1100
    Enabled = False
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
    TabOrder = 11
    Version = '1.3.0.0'
    OnClick = AdvGlassButton8Click
  end
  object AdvGlassButton9: TAdvGlassButton
    Left = 213
    Top = 222
    Width = 114
    Height = 50
    BackColor = 9276896
    Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100
    Enabled = False
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
    TabOrder = 12
    Version = '1.3.0.0'
    OnClick = AdvGlassButton9Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 196
    Height = 345
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 23
    Items.Strings = (
      #1050#1072#1085#1072#1083' 0'
      #1050#1072#1085#1072#1083' 1'
      #1050#1072#1085#1072#1083' 2'
      #1050#1072#1085#1072#1083' 3'
      #1050#1072#1085#1072#1083' 4'
      #1050#1072#1085#1072#1083' 5'
      #1050#1072#1085#1072#1083' 6'
      #1050#1072#1085#1072#1083' 7'
      #1050#1072#1085#1072#1083' 8'
      #1050#1072#1085#1072#1083' 9'
      #1050#1072#1085#1072#1083' 10'
      #1050#1072#1085#1072#1083' 11'
      #1050#1072#1085#1072#1083' 12'
      #1050#1072#1085#1072#1083' 13'
      #1050#1072#1085#1072#1083' 14'
      #1050#1072#1085#1072#1083' 15'
      #1050#1072#1085#1072#1083' 16'
      #1050#1072#1085#1072#1083' 17'
      #1050#1072#1085#1072#1083' 18'
      #1050#1072#1085#1072#1083' 19'
      #1050#1072#1085#1072#1083' 20'
      #1050#1072#1085#1072#1083' 21'
      #1050#1072#1085#1072#1083' 22'
      #1050#1072#1085#1072#1083' 23'
      #1050#1072#1085#1072#1083' 24'
      #1050#1072#1085#1072#1083' 25'
      #1050#1072#1085#1072#1083' 26'
      #1050#1072#1085#1072#1083' 27'
      #1050#1072#1085#1072#1083' 28'
      #1050#1072#1085#1072#1083' 29'
      #1050#1072#1085#1072#1083' 30'
      #1050#1072#1085#1072#1083' 31'
      #1050#1072#1085#1072#1083' 32'
      #1050#1072#1085#1072#1083' 33'
      #1050#1072#1085#1072#1083' 34'
      #1050#1072#1085#1072#1083' 35'
      #1050#1072#1085#1072#1083' 36'
      #1050#1072#1085#1072#1083' 37'
      #1050#1072#1085#1072#1083' 38'
      #1050#1072#1085#1072#1083' 39'
      #1050#1072#1085#1072#1083' 40'
      #1050#1072#1085#1072#1083' 41'
      #1050#1072#1085#1072#1083' 42'
      #1050#1072#1085#1072#1083' 43'
      #1050#1072#1085#1072#1083' 44'
      #1050#1072#1085#1072#1083' 45'
      #1050#1072#1085#1072#1083' 46'
      #1050#1072#1085#1072#1083' 47'
      #1050#1072#1085#1072#1083' 48'
      #1050#1072#1085#1072#1083' 49'
      #1050#1072#1085#1072#1083' 50'
      #1050#1072#1085#1072#1083' 51'
      #1050#1072#1085#1072#1083' 52'
      #1050#1072#1085#1072#1083' 53'
      #1050#1072#1085#1072#1083' 54'
      #1050#1072#1085#1072#1083' 55'
      #1050#1072#1085#1072#1083' 56'
      #1050#1072#1085#1072#1083' 57'
      #1050#1072#1085#1072#1083' 58'
      #1050#1072#1085#1072#1083' 59'
      #1050#1072#1085#1072#1083' 60'
      #1050#1072#1085#1072#1083' 61'
      #1050#1072#1085#1072#1083' 62'
      #1050#1072#1085#1072#1083' 63')
    ParentFont = False
    TabOrder = 13
    OnClick = ListBox1Click
  end
  object AdvGlassButton10: TAdvGlassButton
    Left = 213
    Top = 334
    Width = 114
    Height = 50
    BackColor = 10012773
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1089#1094#1077#1085#1072#1088#1080#1081
    Enabled = False
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
    TabOrder = 14
    Version = '1.3.0.0'
    OnClick = AdvGlassButton10Click
  end
  object AdvGlassButton11: TAdvGlassButton
    Left = 213
    Top = 278
    Width = 114
    Height = 50
    BackColor = 6940136
    Caption = #1042#1099#1079#1074#1072#1090#1100' '#1089#1094#1077#1085#1072#1088#1080#1081
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 15
    Version = '1.3.0.0'
    OnClick = AdvGlassButton11Click
  end
  object AdvGlassButton12: TAdvGlassButton
    Left = 213
    Top = 39
    Width = 114
    Height = 66
    BackColor = 6940136
    Caption = #1057#1095#1080#1090#1072#1090#1100' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 16
    Version = '1.3.0.0'
    OnClick = AdvGlassButton12Click
  end
  object AdvStringGrid1: TAdvStringGrid
    Left = 333
    Top = 39
    Width = 640
    Height = 323
    Cursor = crDefault
    Ctl3D = True
    DefaultColWidth = 127
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 2
    GridLineWidth = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 17
    OnClick = AdvStringGrid1Click
    OnDrawCell = AdvStringGrid1DrawCell
    ActiveRowColor = clNone
    GridLineColor = 14079702
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    CellNode.ExpandOne = True
    ControlLook.FixedGradientHoverFrom = 13619409
    ControlLook.FixedGradientHoverTo = 12502728
    ControlLook.FixedGradientHoverMirrorFrom = 12502728
    ControlLook.FixedGradientHoverMirrorTo = 11254975
    ControlLook.FixedGradientDownFrom = 8816520
    ControlLook.FixedGradientDownTo = 7568510
    ControlLook.FixedGradientDownMirrorFrom = 7568510
    ControlLook.FixedGradientDownMirrorTo = 6452086
    ControlLook.FixedGradientDownBorder = 14007466
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FixedColWidth = 158
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    IntelliZoom = False
    Look = glSoft
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.Color = clBtnFace
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SelectionColor = 10354687
    ShowSelection = False
    ShowDesignHelper = False
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    Version = '6.2.1.1'
    ColWidths = (
      158
      127
      155
      69
      126)
  end
  object GroupBox1: TGroupBox
    Left = 213
    Top = 101
    Width = 114
    Height = 59
    TabOrder = 18
    Visible = False
    object RadioButton1: TRadioButton
      Left = 3
      Top = 3
      Width = 96
      Height = 17
      Caption = #1054#1089#1085#1086#1074#1085#1086#1077
      Checked = True
      TabOrder = 0
      TabStop = True
      Visible = False
    end
    object RadioButton2: TRadioButton
      Left = 3
      Top = 21
      Width = 114
      Height = 17
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077
      TabOrder = 1
      Visible = False
    end
    object RadioButton3: TRadioButton
      Left = 3
      Top = 39
      Width = 114
      Height = 17
      Caption = #1056#1077#1089#1091#1088#1089#1099' '#1087#1088#1080#1074#1103#1079#1082#1080
      TabOrder = 2
      Visible = False
    end
  end
  object AdvGlassButton7: TAdvGlassButton
    Left = 8
    Top = 393
    Width = 196
    Height = 40
    BackColor = 6940136
    Caption = #1055#1088#1080#1074#1103#1079#1082#1072' nooLite-F'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 19
    Version = '1.3.0.0'
    OnClick = AdvGlassButton7Click
  end
  object AdvGlassButton13: TAdvGlassButton
    Left = 213
    Top = 393
    Width = 114
    Height = 40
    BackColor = 6940136
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1082#1072#1085#1072#1083
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 20
    Version = '1.3.0.0'
    OnClick = AdvGlassButton13Click
  end
  object CheckBox8: TCheckBox
    Left = 333
    Top = 390
    Width = 216
    Height = 17
    Caption = #1054#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086#1077' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
  end
  object SpinEdit2: TSpinEdit
    Left = 733
    Top = 528
    Width = 55
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 22
    Value = 0
  end
  object SpinEdit3: TSpinEdit
    Left = 794
    Top = 528
    Width = 55
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 23
    Value = 0
  end
  object SpinEdit4: TSpinEdit
    Left = 855
    Top = 528
    Width = 55
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 24
    Value = 0
  end
  object SpinEdit5: TSpinEdit
    Left = 916
    Top = 528
    Width = 55
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 25
    Value = 0
  end
  object SpinEdit6: TSpinEdit
    Left = 663
    Top = 528
    Width = 55
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 255
    MinValue = 0
    ParentFont = False
    TabOrder = 26
    Value = 0
  end
  object CheckBox4: TCheckBox
    Left = 333
    Top = 416
    Width = 152
    Height = 17
    BiDiMode = bdLeftToRight
    Caption = #1057#1077#1088#1074#1080#1089#1085#1099#1081' '#1088#1077#1078#1080#1084'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 27
    OnClick = CheckBox4Click
  end
  object Edit1: TEdit
    Left = 663
    Top = 473
    Width = 72
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 28
    Text = '00000000'
  end
  object AdvGlassButton14: TAdvGlassButton
    Left = 8
    Top = 512
    Width = 121
    Height = 42
    BackColor = 9276896
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
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
    TabOrder = 29
    Version = '1.3.0.0'
    OnClick = AdvGlassButton14Click
  end
  object SpinEdit8: TSpinEdit
    Left = 790
    Top = 471
    Width = 62
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxValue = 3
    MinValue = 0
    ParentFont = False
    TabOrder = 30
    Value = 0
  end
  object AdvGlassButton17: TAdvGlassButton
    Left = 862
    Top = 448
    Width = 109
    Height = 49
    BackColor = 6940136
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1055#1054
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 31
    Version = '1.3.0.0'
    OnClick = AdvGlassButton17Click
  end
  object Button1: TButton
    Left = 978
    Top = 437
    Width = 82
    Height = 25
    Caption = 'Open'
    TabOrder = 32
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 978
    Top = 499
    Width = 82
    Height = 25
    Caption = 'Write'
    TabOrder = 33
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 978
    Top = 468
    Width = 82
    Height = 25
    Caption = 'Erase'
    TabOrder = 34
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 978
    Top = 530
    Width = 82
    Height = 25
    Caption = 'Reset OK'
    TabOrder = 35
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 978
    Top = 592
    Width = 82
    Height = 25
    Caption = 'Restart'
    TabOrder = 36
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 978
    Top = 622
    Width = 82
    Height = 25
    Caption = 'Exit'
    TabOrder = 37
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 978
    Top = 561
    Width = 82
    Height = 25
    Caption = 'Reset'
    TabOrder = 38
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 979
    Top = 375
    Width = 82
    Height = 25
    Caption = 'MTRF-BOOT-IN'
    TabOrder = 39
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 979
    Top = 406
    Width = 82
    Height = 25
    Caption = 'MTRF-BOOT-OUT'
    TabOrder = 40
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 1066
    Top = 406
    Width = 82
    Height = 25
    Caption = 'Open'
    TabOrder = 41
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 1066
    Top = 468
    Width = 82
    Height = 25
    Caption = 'Write'
    TabOrder = 42
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 1066
    Top = 437
    Width = 82
    Height = 25
    Caption = 'Erase'
    TabOrder = 43
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 1066
    Top = 530
    Width = 82
    Height = 25
    Caption = 'Reset OK'
    TabOrder = 44
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 1066
    Top = 499
    Width = 82
    Height = 25
    Caption = 'Write'
    TabOrder = 45
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 1066
    Top = 561
    Width = 82
    Height = 25
    Caption = 'GET ID'
    TabOrder = 46
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 1066
    Top = 375
    Width = 82
    Height = 25
    Caption = '---'
    TabOrder = 47
    OnClick = Button16Click
  end
  object CheckBox1: TCheckBox
    Left = 1066
    Top = 596
    Width = 65
    Height = 17
    Caption = #1050#1086#1085#1089#1086#1083#1100
    TabOrder = 48
  end
  object AdvGlassButton2: TAdvGlassButton
    Left = 811
    Top = 389
    Width = 111
    Height = 44
    BackColor = 6940136
    BackGroundSymbolColor = 6940136
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 49
    Version = '1.3.0.0'
    OnClick = AdvGlassButton2Click
  end
  object AdvGlassButton15: TAdvGlassButton
    Left = 928
    Top = 389
    Width = 45
    Height = 44
    BackColor = 6940136
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ForeColor = 6940136
    GlowColor = 6940136
    InnerBorderColor = clBlack
    OuterBorderColor = 16250871
    ParentFont = False
    ShineColor = 6940136
    TabOrder = 50
    Version = '1.3.0.0'
    OnClick = AdvGlassButton15Click
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = RX
    OnException = ComPort1Exception
    Left = 1048
    Top = 49
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 992
    Top = 48
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 992
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 1048
    Top = 192
    object N4: TMenuItem
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      object TMenuItem
      end
      object N9: TMenuItem
        Caption = #1055#1077#1088#1077#1082#1083#1102#1095#1080#1090#1100
        OnClick = N9Click
      end
      object N6: TMenuItem
        Caption = #1042#1082#1083#1102#1095#1080#1090#1100
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100
        OnClick = N7Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1089#1077#1088#1074#1080#1089#1085#1099#1081' '#1088#1077#1078#1080#1084
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1089#1077#1088#1074#1080#1089#1085#1099#1081' '#1088#1077#1078#1080#1084
      OnClick = N2Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N12: TMenuItem
      Caption = #1055#1077#1088#1077#1076#1072#1090#1100' '#1082#1086#1084#1072#1085#1076#1091' '#1086#1090#1074#1103#1079#1082#1080
      OnClick = N12Click
    end
    object N3: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1076#1088#1077#1089' '#1080#1079' '#1082#1072#1085#1072#1083#1072
      OnClick = N3Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      object N16: TMenuItem
        Caption = #1054#1073#1097#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1076#1080#1084#1084#1080#1088#1086#1074#1072#1085#1080#1103
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1091#1088#1086#1074#1085#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #1058#1077#1088#1084#1086#1089#1090#1072#1090' ('#1088#1072#1073#1086#1090#1072' '#1087#1086' '#1082#1072#1083#1077#1085#1076#1072#1088#1102')'
        OnClick = N19Click
      end
      object nooLite2: TMenuItem
        Caption = #1047#1072#1076#1077#1088#1078#1082#1072' '#1088#1077#1090#1088#1072#1085#1089#1083#1103#1094#1080#1080' nooLite'
        OnClick = nooLite2Click
      end
      object SetTemp: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1094#1077#1083#1077#1074#1086#1081' '#1090#1077#1084#1087#1077#1088#1072#1090#1091#1088#1099
        OnClick = SetTempClick
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object nooLite1: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091' nooLite'
      OnClick = nooLite1Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object N15: TMenuItem
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1055#1054
      OnClick = N15Click
    end
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer3Timer
    Left = 992
    Top = 144
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer4Timer
    Left = 992
    Top = 192
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 700
    OnTimer = Timer5Timer
    Left = 992
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Bin|*.bin'
    Left = 1048
    Top = 240
  end
  object send_timer: TTimer
    Enabled = False
    OnTimer = send_timerTimer
    Left = 1048
    Top = 144
  end
  object send_timer_2: TTimer
    Enabled = False
    OnTimer = send_timer_2Timer
    Left = 1048
    Top = 96
  end
  object Timer6: TTimer
    Enabled = False
    OnTimer = Timer6Timer
    Left = 992
    Top = 288
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 1048
    Top = 288
  end
end
