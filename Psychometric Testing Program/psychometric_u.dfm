object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 452
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTimer: TLabel
    Left = 240
    Top = 344
    Width = 168
    Height = 18
    Caption = 'Which One Is Maroon?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 56
    Top = 368
    Width = 575
    Height = 13
    Caption = 
      'Note: Think Carefully Before Answering As This Game Only Allows ' +
      'You To Select ONCE. A Selection Cannot Be Reversed'
  end
  object pnl1: TPanel
    Left = 24
    Top = 8
    Width = 185
    Height = 137
    Color = clNavy
    TabOrder = 0
    OnClick = pnl1Click
  end
  object pnl2: TPanel
    Left = 424
    Top = 8
    Width = 185
    Height = 137
    Color = clYellow
    TabOrder = 1
    OnClick = pnl2Click
  end
  object pnl3: TPanel
    Left = 24
    Top = 176
    Width = 185
    Height = 137
    Color = clMaroon
    TabOrder = 2
    OnClick = pnl3Click
  end
  object pnl4: TPanel
    Left = 424
    Top = 176
    Width = 185
    Height = 137
    Color = clPurple
    TabOrder = 3
    OnClick = pnl4Click
  end
  object tmrNext1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrNext1Timer
    Left = 296
    Top = 32
  end
  object tmrNext2: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrNext2Timer
    Left = 296
    Top = 88
  end
  object tmrNext3: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrNext3Timer
    Left = 296
    Top = 144
  end
  object tmrNext4: TTimer
    Enabled = False
    Interval = 3000
    Left = 296
    Top = 200
  end
  object tmrNext5: TTimer
    OnTimer = tmrNext5Timer
    Left = 296
    Top = 248
  end
end
