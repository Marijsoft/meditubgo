object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Patch iTubeGo 5.1 Win'
  ClientHeight = 135
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 20
  object Label1: TLabel
    AlignWithMargins = True
    Left = 4
    Top = 111
    Width = 296
    Height = 20
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    Alignment = taCenter
    Caption = 'Coded by Marijuana'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 139
  end
  object Button1: TButton
    Left = 159
    Top = 30
    Width = 132
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Applica patch'
    ElevationRequired = True
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 9
    Top = 9
    Width = 142
    Height = 72
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Piattaforma'
    Items.Strings = (
      '32 bit'
      '64 bit')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel
    Left = 9
    Top = 89
    Width = 291
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object ALHack1: TALHack
    Left = 128
    Top = 16
  end
end
