object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 519
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsername: TLabel
    Left = 200
    Top = 131
    Width = 52
    Height = 13
    Caption = 'Username:'
  end
  object lblPassword: TLabel
    Left = 200
    Top = 251
    Width = 50
    Height = 13
    Caption = 'Password:'
  end
  object lblRegister: TLabel
    Left = 320
    Top = 408
    Width = 103
    Height = 12
    Caption = 'Register For Test'
    Color = clActiveCaption
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    OnMouseEnter = lblRegisterMouseEnter
    OnMouseLeave = lblRegisterMouseLeave
  end
  object edtUsername: TEdit
    Left = 304
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPassword: TEdit
    Left = 304
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 320
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
  end
end
