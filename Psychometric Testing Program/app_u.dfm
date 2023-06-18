object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 519
  ClientWidth = 775
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblID: TLabel
    Left = 184
    Top = 131
    Width = 63
    Height = 13
    Caption = 'ID Number:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPassword: TLabel
    Left = 189
    Top = 203
    Width = 57
    Height = 13
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRegister: TLabel
    Left = 526
    Top = 277
    Width = 117
    Height = 13
    Caption = 'Register for the Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = lblRegisterClick
    OnMouseEnter = lblRegisterMouseEnter
    OnMouseLeave = lblRegisterMouseLeave
  end
  object lblHelp: TLabel
    Left = 526
    Top = 312
    Width = 25
    Height = 13
    Caption = 'Help'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = lblHelpClick
    OnMouseEnter = lblHelpMouseEnter
    OnMouseLeave = lblHelpMouseLeave
  end
  object edtID: TEdit
    Left = 256
    Top = 128
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 256
    Top = 200
    Width = 153
    Height = 21
    PasswordChar = #1
    TabOrder = 1
  end
  object btnMath: TButton
    Left = 256
    Top = 288
    Width = 139
    Height = 25
    Caption = 'Start Math Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnMathClick
  end
  object dbgData: TDBGrid
    Left = 447
    Top = 128
    Width = 320
    Height = 120
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnEng: TButton
    Left = 256
    Top = 336
    Width = 139
    Height = 25
    Caption = 'Start English Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnEngClick
  end
  object btnPsychometric: TButton
    Left = 256
    Top = 384
    Width = 139
    Height = 25
    Caption = 'Start Psychometric Test'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnPsychometricClick
  end
  object btnReport: TButton
    Left = 256
    Top = 432
    Width = 139
    Height = 25
    Caption = 'Generate Report'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnReportClick
  end
  object memReport: TMemo
    Left = 104
    Top = 8
    Width = 185
    Height = 89
    Lines.Strings = (
      'memReport')
    ReadOnly = True
    TabOrder = 7
  end
  object redCourses: TRichEdit
    Left = 384
    Top = 8
    Width = 185
    Height = 89
    Lines.Strings = (
      'redCourses')
    ReadOnly = True
    TabOrder = 8
  end
  object btnRequest: TButton
    Left = 256
    Top = 472
    Width = 139
    Height = 25
    Caption = 'Request Learner Marks'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnRequestClick
  end
  object Button1: TButton
    Left = 256
    Top = 240
    Width = 139
    Height = 25
    Caption = 'Delete Marks Request'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
end
