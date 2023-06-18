unit frmApp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    lblUsername: TLabel;
    lblPassword: TLabel;
    btnLogin: TButton;
    lblRegister: TLabel;
    procedure lblRegisterMouseEnter(Sender: TObject);
    procedure lblRegisterMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.lblRegisterMouseEnter(Sender: TObject);
begin
  lblRegister.Font.Color := clBlue;
end;

procedure TForm1.lblRegisterMouseLeave(Sender: TObject);
begin
  lblRegister.Font.Color := clBlack;
end;

end.
