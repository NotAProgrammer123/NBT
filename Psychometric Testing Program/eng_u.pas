unit eng_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, app_u;

type
  TForm3 = class(TForm)
    rgpQ1: TRadioGroup;
    rgpQ2: TRadioGroup;
    rgpQ3: TRadioGroup;
    rgpQ4: TRadioGroup;
    rgpQ5: TRadioGroup;
    rgpQ6: TRadioGroup;
    rgpQ8: TRadioGroup;
    btnStart: TButton;
    btnFinish: TButton;
    imgTest: TImage;
    rgpQ9: TRadioGroup;
    rgpQ10: TRadioGroup;
    rgpQ11: TRadioGroup;
    rgpQ13: TRadioGroup;
    rgpQ12: TRadioGroup;
    lblTimer: TLabel;
    rgpQ7: TRadioGroup;
    tmrEng: TTimer;
    tmrMultiply: TTimer;
    tmrStop: TTimer;
    procedure btnStartClick(Sender: TObject);
    procedure tmrEngTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgpQ1Click(Sender: TObject);
    procedure rgpQ2Click(Sender: TObject);
    procedure rgpQ3Click(Sender: TObject);
    procedure rgpQ4Click(Sender: TObject);
    procedure rgpQ5Click(Sender: TObject);
    procedure rgpQ6Click(Sender: TObject);
    procedure rgpQ8Click(Sender: TObject);
    procedure rgpQ9Click(Sender: TObject);
    procedure rgpQ10Click(Sender: TObject);
    procedure rgpQ7Click(Sender: TObject);
    procedure rgpQ11Click(Sender: TObject);
    procedure rgpQ12Click(Sender: TObject);
    procedure rgpQ13Click(Sender: TObject);
    procedure tmrMultiplyTimer(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure tmrStopTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure finishtest;
    function calcScore : integer;
  end;

var
  Form3: TForm3;
  iCount, iMultiply : integer;
  sGlobalTimeRem : string;
  arrUserAnswers : array[1..13] of string;
  arrAnswers : array[1..13] of string = ('a', 'b', 'a', 'a', 'b', 'b', 'b', 'd', 'a', 'a', 'c', 'd', 'unsustainable');

implementation

{$R *.dfm}

procedure TForm3.btnFinishClick(Sender: TObject);

var sID : string;

begin
  sID := objApplicant.getID_NO;
  btnFinish.Enabled := false;
  tmrEng.Enabled := false;
  tmrMultiply.Enabled := false;
  rgpQ1.Enabled := false;
  rgpQ2.Enabled := false;
  rgpQ3.Enabled := false;
  rgpQ4.Enabled := false;
  rgpQ5.Enabled := false;
  rgpQ6.Enabled := false;
  rgpQ7.Enabled := false;
  rgpQ8.Enabled := false;
  rgpQ9.Enabled := false;
  rgpQ10.Enabled := false;
  finishtest();
  ShowMessage('Your score: ' + IntToStr(calcScore()) + '%');
  objApplicant.setEng(calcScore(), sID);
end;

procedure TForm3.btnStartClick(Sender: TObject);
begin
  btnStart.Enabled := false;
  btnFinish.Enabled := true;
  tmrEng.Enabled := true;
  tmrMultiply.Enabled := true;
  imgTest.Picture.LoadFromFile('eng_worksheet.jpg');

end;

function TForm3.calcScore: integer;

var iTotal, i: integer;

begin
  iTotal := 0;

  for i := 1 to Length(arrAnswers) do
    begin
      if arrAnswers[i] = arrUserAnswers[i] then
        iTotal := iTotal + 10;
      end;
    Result := Round((iTotal/130) * 100);
end;

procedure TForm3.finishtest;
begin
  rgpQ1.Enabled := false;
  rgpQ2.Enabled := false;
  rgpQ3.Enabled := false;
  rgpQ4.Enabled := false;
  rgpQ5.Enabled := false;
  rgpQ6.Enabled := false;
  rgpQ7.Enabled := false;
  rgpQ8.Enabled := false;
  rgpQ9.Enabled := false;
  rgpQ10.Enabled := false;
  app_u.Form1.Show;
  eng_u.Form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  iMultiply := 1;
end;

procedure TForm3.rgpQ10Click(Sender: TObject);
begin
  arrUserAnswers[10] := rgpQ10.Items[rgpQ10.ItemIndex];
end;

procedure TForm3.rgpQ11Click(Sender: TObject);
begin
  arrUserAnswers[11] := rgpQ11.Items[rgpQ11.ItemIndex];
end;

procedure TForm3.rgpQ12Click(Sender: TObject);
begin
  arrUserAnswers[12] := rgpQ12.Items[rgpQ12.ItemIndex];
end;

procedure TForm3.rgpQ13Click(Sender: TObject);
begin
  arrUserAnswers[13] := rgpQ13.Items[rgpQ13.ItemIndex];
end;

procedure TForm3.rgpQ1Click(Sender: TObject);
begin
  arrUserAnswers[1] := rgpQ1.Items[rgpQ1.ItemIndex];
end;

procedure TForm3.rgpQ2Click(Sender: TObject);
begin
  arrUserAnswers[2] := rgpQ2.Items[rgpQ2.ItemIndex];
end;

procedure TForm3.rgpQ3Click(Sender: TObject);
begin
  arrUserAnswers[3] := rgpQ3.Items[rgpQ3.ItemIndex];
end;

procedure TForm3.rgpQ4Click(Sender: TObject);
begin
  arrUserAnswers[4] := rgpQ4.Items[rgpQ4.ItemIndex];
end;

procedure TForm3.rgpQ5Click(Sender: TObject);
begin
  arrUserAnswers[5] := rgpQ5.Items[rgpQ5.ItemIndex];
end;

procedure TForm3.rgpQ6Click(Sender: TObject);
begin
  arrUserAnswers[6] := rgpQ6.Items[rgpQ6.ItemIndex];
end;

procedure TForm3.rgpQ7Click(Sender: TObject);
begin
  arrUserAnswers[7] := rgpQ7.Items[rgpQ7.ItemIndex];
end;

procedure TForm3.rgpQ8Click(Sender: TObject);
begin
  arrUserAnswers[8] := rgpQ8.Items[rgpQ8.ItemIndex];
end;

procedure TForm3.rgpQ9Click(Sender: TObject);
begin
  arrUserAnswers[9] := rgpQ9.Items[rgpQ9.ItemIndex];
end;

procedure TForm3.tmrEngTimer(Sender: TObject);

var iHour, iSeconds, iSecondsOutstanding : integer;
    sTimeRemaining : string;

begin
  iHour := 600;
  inc(iCount);
  iSeconds := iHour - iCount;
  iSecondsOutstanding := iHour - (iHour - iCount);
  sTimeRemaining := IntToStr(Trunc(iSeconds / 60)) + ':' + IntToStr(60 * iMultiply - iSecondsOutstanding);

  lblTimer.Caption := sTimeRemaining;
  sGlobalTimeRem := sTimeRemaining;
end;

procedure TForm3.tmrMultiplyTimer(Sender: TObject);
begin
  Inc(iMultiply);
end;

procedure TForm3.tmrStopTimer(Sender: TObject);

var sSign : string;

begin
  sSign := lblTimer.Caption;

  if Length(sSign) <> 0 then
    begin
      if (sSign[1] = '-') OR (sSign[1] = '0')  then
        finishtest();
    end;
end;

end.
