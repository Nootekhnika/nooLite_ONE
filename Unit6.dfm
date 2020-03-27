object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 221
  ClientWidth = 461
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
    Visible = False
  end
  object but_save: TAdvGlassButton
    Left = 278
    Top = 165
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
    Width = 272
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
    Left = 16
    Top = 88
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
    Top = 119
    Width = 320
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
end
