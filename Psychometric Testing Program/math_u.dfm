object Form2: TForm2
  Left = 0
  Top = 110
  Caption = 'Form2'
  ClientHeight = 558
  ClientWidth = 950
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object imgTest: TImage
    Left = 576
    Top = 49
    Width = 321
    Height = 297
  end
  object lblQuestion: TLabel
    Left = 576
    Top = 16
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExplain: TLabel
    Left = 624
    Top = 464
    Width = 82
    Height = 18
    Caption = 'Good Luck!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTimer: TLabel
    Left = 840
    Top = 8
    Width = 4
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnStart: TButton
    Left = 704
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Start Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnStartClick
  end
  object btnNext: TButton
    Left = 808
    Top = 376
    Width = 97
    Height = 25
    Caption = 'Next Question'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnNextClick
  end
  object btnPrev: TButton
    Left = 568
    Top = 376
    Width = 107
    Height = 25
    Caption = 'Previous Question'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnPrevClick
  end
  object rgpQ1: TRadioGroup
    Left = 80
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
      'x = 27/5 , y = 48/5, z = 36/5'
      'x = 32/5 , y = 4, z = 3/5'
      'x = 10 , y = 7/3, z = 36/5'
      'x = 22/5 , y = 44/5, z = 66/5')
    ParentFont = False
    TabOrder = 3
    OnClick = rgpQ1Click
  end
  object rgpQ2: TRadioGroup
    Left = 80
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
      'C=3/8'
      'C=4'
      'C=12'
      'C=13/5')
    ParentFont = False
    TabOrder = 4
    OnClick = rgpQ2Click
  end
  object rgpQ3: TRadioGroup
    Left = 80
    Top = 216
    Width = 185
    Height = 94
    Caption = 'Question 3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'k=16'
      'k=4'
      'k=2'
      'k=10')
    ParentFont = False
    TabOrder = 5
    OnClick = rgpQ3Click
  end
  object rgpQ4: TRadioGroup
    Left = 80
    Top = 316
    Width = 185
    Height = 94
    Caption = 'Question 4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'BO^C > 90'
      'A^ = B^ = C^'
      'AB = AC = BC'
      'Area ABC > 100cm^2')
    ParentFont = False
    TabOrder = 6
    OnClick = rgpQ4Click
  end
  object rgpQ5: TRadioGroup
    Left = 80
    Top = 424
    Width = 185
    Height = 94
    Caption = 'Question 5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'X=3600'
      'X=1088.96'
      'X=7200'
      'X=1080')
    ParentFont = False
    TabOrder = 7
    OnClick = rgpQ5Click
  end
  object rgpQ6: TRadioGroup
    Left = 280
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
      'b = 16/7, c=4, d=18/7'
      'b = 14, c=8, d=18'
      'b = 29, c=3, d=6'
      'b = 44, c=32, d=9')
    ParentFont = False
    TabOrder = 8
    OnClick = rgpQ6Click
  end
  object rgpQ7: TRadioGroup
    Left = 280
    Top = 108
    Width = 185
    Height = 94
    Caption = 'Question 7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'Area=18'
      'Area=9.78'
      'Area=3.78'
      'Area=7.25')
    ParentFont = False
    TabOrder = 9
    OnClick = rgpQ7Click
  end
  object rgpQ8: TRadioGroup
    Left = 280
    Top = 216
    Width = 185
    Height = 94
    Caption = 'Question 8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'X=2.4'
      'X=7.66'
      'X=7'
      'X=9')
    ParentFont = False
    TabOrder = 10
    OnClick = rgpQ8Click
  end
  object rgpQ9: TRadioGroup
    Left = 280
    Top = 316
    Width = 185
    Height = 94
    Caption = 'Question 9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'h=65.98'
      'h= 88'
      'h=76.77'
      'h=56')
    ParentFont = False
    TabOrder = 11
    OnClick = rgpQ9Click
  end
  object rgpQ10: TRadioGroup
    Left = 280
    Top = 424
    Width = 185
    Height = 94
    Caption = 'Question 10'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tempus Sans ITC'
    Font.Style = []
    Items.Strings = (
      'volume abc = 6 * sqroot(10)'
      'volume abc = 3 * sqroot(6)'
      'volume abc = 4/3 * sqroot(12)'
      'volume abc = 18 * sqroot(10)')
    ParentFont = False
    TabOrder = 12
    OnClick = rgpQ10Click
  end
  object btnFinish: TButton
    Left = 704
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Finish Test'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btnFinishClick
  end
  object tmrMath: TTimer
    Enabled = False
    OnTimer = tmrMathTimer
    Left = 16
    Top = 432
  end
  object tmrMultiply: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = tmrMultiplyTimer
    Left = 488
    Top = 16
  end
  object tmrStop: TTimer
    Enabled = False
    OnTimer = tmrStopTimer
    Left = 504
    Top = 408
  end
end
