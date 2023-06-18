unit math_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, app_u, DateUtils;

type
  TForm2 = class(TForm)
    tmrMath: TTimer;
    imgTest: TImage;
    btnStart: TButton;
    btnNext: TButton;
    btnPrev: TButton;
    lblQuestion: TLabel;
    rgpQ1: TRadioGroup;
    rgpQ2: TRadioGroup;
    rgpQ3: TRadioGroup;
    rgpQ4: TRadioGroup;
    rgpQ5: TRadioGroup;
    rgpQ6: TRadioGroup;
    rgpQ7: TRadioGroup;
    rgpQ8: TRadioGroup;
    rgpQ9: TRadioGroup;
    rgpQ10: TRadioGroup;
    lblExplain: TLabel;
    lblTimer: TLabel;
    tmrMultiply: TTimer;
    tmrStop: TTimer;
    btnFinish: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure tmrMathTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrMultiplyTimer(Sender: TObject);
    procedure tmrStopTimer(Sender: TObject);
    function calcScore : integer;
    procedure finishTest;
    procedure rgpQ1Click(Sender: TObject);
    procedure rgpQ2Click(Sender: TObject);
    procedure rgpQ3Click(Sender: TObject);
    procedure rgpQ5Click(Sender: TObject);
    procedure rgpQ4Click(Sender: TObject);
    procedure rgpQ6Click(Sender: TObject);
    procedure rgpQ7Click(Sender: TObject);
    procedure rgpQ8Click(Sender: TObject);
    procedure rgpQ9Click(Sender: TObject);
    procedure rgpQ10Click(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  iQuestion, iCount, iMinute, iMultiply : integer;
  sGlobalTimeRem : string;
  arrUserAnswers : array[1..10] of string;
  arrDescriptions : array[1..10] of string = ('Solve for X, Y and Z', 'The equation of the parabola above is: y = -x^2 + 4x + C.' + sLineBreak + 'Solve for C if the area of the triangle is 32 units', 'Solve for K', 'Which ONE of the following is true regarding the above circle?', 'Solve for X (Hint: Vectors/Displacement have DIRECTION and MAGNITUDE)', 'Solve for b, c and d', 'What is the area of the orange-shaded region?', 'Solve for X', 'What is the height of the triangle?', 'What is the volume of this rectangular prism?');
  arrQuestions : array [1..10] of string = ('1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg');
  arrAnswers : array[1..10] of string = ('x = 27/5 , y = 48/5, z = 36/5', 'C=12', 'k=10', 'BO^C > 90', 'X=3600', 'b = 14, c=8, d=18', 'Area=7.25' , 'X=2.4', 'h=76.77' ,'volume abc = 6 * sqroot(10)');

implementation

{$R *.dfm}

procedure TForm2.btnNextClick(Sender: TObject);
begin
  if iQuestion < 10 then
    begin
      lblQuestion.Caption := 'Question ' + IntToStr(iQuestion + 1);
      Inc(iQuestion);
      imgTest.Picture.LoadFromFile(arrQuestions[iQuestion]);
      lblExplain.Caption := arrDescriptions[iQuestion];
    end;
end;

procedure TForm2.btnPrevClick(Sender: TObject);
begin
  if iQuestion <> 1 then
    begin
      lblQuestion.Caption := 'Question ' + IntToStr(iQuestion - 1);
      Dec(iQuestion);
      imgTest.Picture.LoadFromFile(arrQuestions[iQuestion]);
      lblExplain.Caption := arrDescriptions[iQuestion];
    end;
end;

procedure TForm2.btnStartClick(Sender: TObject);

begin
  lblQuestion.Caption := 'Question ' + IntToStr(iQuestion + 1);
  btnStart.Enabled := False;
  btnPrev.Enabled := true;
  btnNext.Enabled := true;
  btnFinish.Enabled := true;
  iQuestion := 0;
  Inc(iQuestion);
  imgTest.Picture.LoadFromFile(arrQuestions[iQuestion]);
  lblExplain.Caption := arrDescriptions[iQuestion];
  tmrMath.Enabled := true;
  tmrMultiply.Enabled := true;
  tmrStop.Enabled := true;
end;

procedure TForm2.btnFinishClick(Sender: TObject);
begin
  finishtest();
end;

function TForm2.calcScore: integer;

var iTotal, i: integer;

begin
  iTotal := 0;

  for i := 1 to Length(arrAnswers) do
    begin
      if arrAnswers[i] = arrUserAnswers[i] then
        iTotal := iTotal + 10;
      end;
    Result := iTotal;
  end;

procedure TForm2.finishTest;

var sID : string;

begin
  sID := objApplicant.getID_NO;
  tmrMath.Enabled := false;
  tmrMultiply.Enabled := false;
  tmrStop.Enabled := false;
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
  btnFinish.Enabled := false;
  ShowMessage('Your score: ' + IntToStr(calcScore()) + '%');
  objApplicant.setMath(calcScore(), sID);
  app_u.Form1.Show;
  math_u.Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  iMultiply := 1;
end;

procedure TForm2.rgpQ10Click(Sender: TObject);
begin
  arrUserAnswers[10] := rgpQ10.Items[rgpQ10.ItemIndex];
end;

procedure TForm2.rgpQ1Click(Sender: TObject);
begin
  arrUserAnswers[1] := rgpQ1.Items[rgpQ1.ItemIndex];
end;

procedure TForm2.rgpQ2Click(Sender: TObject);
begin
  arrUserAnswers[2] := rgpQ2.Items[rgpQ2.ItemIndex];
end;

procedure TForm2.rgpQ3Click(Sender: TObject);
begin
  arrUserAnswers[3] := rgpQ3.Items[rgpQ3.ItemIndex];
end;

procedure TForm2.rgpQ4Click(Sender: TObject);
begin
  arrUserAnswers[4] := rgpQ4.Items[rgpQ4.ItemIndex];
end;

procedure TForm2.rgpQ5Click(Sender: TObject);
begin
arrUserAnswers[5] := rgpQ5.Items[rgpQ5.ItemIndex];
end;

procedure TForm2.rgpQ6Click(Sender: TObject);
begin
  arrUserAnswers[6] := rgpQ6.Items[rgpQ6.ItemIndex];
end;

procedure TForm2.rgpQ7Click(Sender: TObject);
begin
arrUserAnswers[7] := rgpQ7.Items[rgpQ7.ItemIndex];
end;

procedure TForm2.rgpQ8Click(Sender: TObject);
begin
  arrUserAnswers[8] := rgpQ8.Items[rgpQ8.ItemIndex];
end;

procedure TForm2.rgpQ9Click(Sender: TObject);
begin
  arrUserAnswers[9] := rgpQ9.Items[rgpQ9.ItemIndex];
end;

procedure TForm2.tmrMathTimer(Sender: TObject);

var iHour, iSeconds, iSecondsOutstanding : integer;
    sTimeRemaining : string;

begin
  iHour := 3600;
  inc(iCount);
  iSeconds := iHour - iCount;
  iSecondsOutstanding := iHour - (iHour - iCount);
  sTimeRemaining := IntToStr(Trunc(iSeconds / 60)) + ':' + IntToStr(60 * iMultiply - iSecondsOutstanding);

  lblTimer.Caption := sTimeRemaining;
  sGlobalTimeRem := sTimeRemaining;
end;

procedure TForm2.tmrMultiplyTimer(Sender: TObject);
begin
  Inc(iMultiply);
end;

procedure TForm2.tmrStopTimer(Sender: TObject);

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
