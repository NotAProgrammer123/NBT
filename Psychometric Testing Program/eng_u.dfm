object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 528
  ClientWidth = 979
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object imgTest: TImage
    Left = 576
    Top = 0
    Width = 401
    Height = 322
  end
  object lblTimer: TLabel
    Left = 443
    Top = 136
    Width = 4
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgpQ1: TRadioGroup
    Left = 16
    Top = 8
    Width = 185
    Height = 94
    Caption = 'Question 1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 0
    OnClick = rgpQ1Click
  end
  object rgpQ2: TRadioGroup
    Left = 16
    Top = 108
    Width = 185
    Height = 94
    Caption = 'Question 2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 1
    OnClick = rgpQ2Click
  end
  object rgpQ3: TRadioGroup
    Left = 16
    Top = 208
    Width = 185
    Height = 94
    Caption = 'Question 3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 2
    OnClick = rgpQ3Click
  end
  object rgpQ4: TRadioGroup
    Left = 16
    Top = 308
    Width = 185
    Height = 94
    Caption = 'Question 4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 3
    OnClick = rgpQ4Click
  end
  object rgpQ5: TRadioGroup
    Left = 16
    Top = 408
    Width = 185
    Height = 94
    Caption = 'Question 5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 4
    OnClick = rgpQ5Click
  end
  object rgpQ6: TRadioGroup
    Left = 216
    Top = 8
    Width = 185
    Height = 94
    Caption = 'Question 6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 5
    OnClick = rgpQ6Click
  end
  object rgpQ8: TRadioGroup
    Left = 216
    Top = 108
    Width = 185
    Height = 94
    Caption = 'Question 8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 6
    OnClick = rgpQ8Click
  end
  object btnStart: TButton
    Left = 448
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Start Test'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnStartClick
  end
  object btnFinish: TButton
    Left = 448
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Finish Test'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btnFinishClick
  end
  object rgpQ9: TRadioGroup
    Left = 216
    Top = 208
    Width = 185
    Height = 94
    Caption = 'Question 9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 9
    OnClick = rgpQ9Click
  end
  object rgpQ10: TRadioGroup
    Left = 216
    Top = 308
    Width = 185
    Height = 94
    Caption = 'Question 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 10
    OnClick = rgpQ10Click
  end
  object rgpQ11: TRadioGroup
    Left = 216
    Top = 408
    Width = 185
    Height = 94
    Caption = 'Question 11'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 11
    OnClick = rgpQ11Click
  end
  object rgpQ13: TRadioGroup
    Left = 598
    Top = 408
    Width = 185
    Height = 94
    Caption = 'Question 13'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'unprecedented'
      'dangerous'
      'die'
      'unsustainable')
    ParentFont = False
    TabOrder = 12
    OnClick = rgpQ13Click
  end
  object rgpQ12: TRadioGroup
    Left = 407
    Top = 408
    Width = 185
    Height = 94
    Caption = 'Question 12'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 13
    OnClick = rgpQ12Click
  end
  object rgpQ7: TRadioGroup
    Left = 407
    Top = 308
    Width = 185
    Height = 94
    Caption = 'Question 7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'a'
      'b'
      'c'
      'd')
    ParentFont = False
    TabOrder = 14
    OnClick = rgpQ7Click
  end
  object tmrEng: TTimer
    Enabled = False
    OnTimer = tmrEngTimer
    Left = 416
    Top = 136
  end
  object tmrMultiply: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrMultiplyTimer
    Left = 496
    Top = 136
  end
  object tmrStop: TTimer
    Enabled = False
    OnTimer = tmrStopTimer
    Left = 416
    Top = 184
  end
end
