unit psychometric_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, app_u;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    lblTimer: TLabel;
    Label1: TLabel;
    tmrNext1: TTimer;
    tmrNext2: TTimer;
    tmrNext3: TTimer;
    tmrNext4: TTimer;
    tmrNext5: TTimer;
    procedure pnl1Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure tmrNext1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrNext2Timer(Sender: TObject);
    procedure tmrNext3Timer(Sender: TObject);
    procedure tmrNext5Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setPsy(score : integer);
  end;

var
  Form4: TForm4;
  bBlue, bYellow, bPurple, bMaroon : boolean;
  iScore, iRound : integer;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  iRound := 1;
end;

procedure TForm4.pnl1Click(Sender: TObject);
begin

  if iRound = 1 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl1.Color := clBtnFace;
    tmrNext1.Enabled := True;
    end;

    if iRound = 2 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl1.Color := clBtnFace;
    tmrNext2.Enabled := True;
    end;

    if iRound = 3 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl1.Color := clBtnFace;
    tmrNext3.Enabled := True;
    end;

    if iRound = 4 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl1.Color := clBtnFace;
    tmrNext4.Enabled := True;
    end;

    if iRound = 5 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl1.Color := clBtnFace;
    ShowMessage(IntToStr(iScore));
    setPsy(iScore);
    end;
  
end;

procedure TForm4.pnl3Click(Sender: TObject);

begin
  if iRound = 1 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl3.Color := clBtnFace;
    tmrNext1.Enabled := True;
    iScore := iScore + 20;
    end;

    if iRound = 2 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl3.Color := clBtnFace;
    tmrNext2.Enabled := True;
    end;

    if iRound = 3 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl3.Color := clBtnFace;
    iScore := iScore + 20;
    tmrNext3.Enabled := True;
    end;

    if iRound = 4 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl3.Color := clBtnFace;
    tmrNext4.Enabled := True;
    end;

     if iRound = 5 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    iScore := iScore + 20;
    pnl3.Color := clBtnFace;
    ShowMessage(IntToStr(iScore));
    setPsy(iScore);
    end;

  end;

procedure TForm4.pnl4Click(Sender: TObject);

begin
  if iRound = 1 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl4.Color := clBtnFace;
    tmrNext1.Enabled := True;
    end;

    if iRound = 2 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl4.Color := clBtnFace;
    iScore := iScore + 20;
    tmrNext2.Enabled := True;
    end;

    if iRound = 3 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl4.Color := clBtnFace;
    tmrNext3.Enabled := True;
    end;

    if iRound = 4 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    iScore := iScore + 20;
    pnl4.Color := clBtnFace;
    tmrNext4.Enabled := True;
    end;

    if iRound = 5 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    iScore := iScore + 20;
    pnl4.Color := clBtnFace;
    ShowMessage(IntToStr(iScore));
    setPsy(iScore);
    ShowMessage(objApplicant.getID_NO);
    end;

end;

procedure TForm4.setPsy(score : integer);
begin
  objApplicant.setPsy(iScore, objApplicant.getID_NO);
end;

procedure TForm4.tmrNext1Timer(Sender: TObject);
begin

  if iRound = 1 then
    begin
      Inc(iRound);
       pnl3.Enabled := True;
       pnl2.Enabled := True;
       pnl4.Enabled := True;
       pnl1.Enabled := True;
       pnl1.Color := clNavy;
       pnl2.Color := clAqua;
       pnl3.Color := clSkyBlue;
       pnl4.Color := clMenuHighlight;
       lblTimer.Caption := 'Which One Is Sky Blue?';
    end;
    tmrNext1.Enabled := false;
end;

procedure TForm4.tmrNext2Timer(Sender: TObject);
begin
  if iRound = 2 then
    begin
      Inc(iRound);
       pnl3.Enabled := True;
       pnl2.Enabled := True;
       pnl4.Enabled := True;
       pnl1.Enabled := True;
       pnl1.Color := clGreen;
       pnl2.Color := clOlive;
       pnl3.Color := clLime;
       pnl4.Color := clTeal;
       lblTimer.Caption := 'Which One Is Teal?';
    end;
    tmrNext2.Enabled := false;
end;

procedure TForm4.tmrNext3Timer(Sender: TObject);
begin
   if iRound = 3 then
    begin
      Inc(iRound);
       pnl3.Enabled := True;
       pnl2.Enabled := True;
       pnl4.Enabled := True;
       pnl1.Enabled := True;
       pnl1.Color := clYellow;
       pnl2.Color := clMaroon;
       pnl3.Color := clFuchsia;
       pnl4.Color := clBlack;
       lblTimer.Caption := 'Which One Is Same Colour as Obsidian?';
    end;
    tmrNext3.Enabled := false;
end;

procedure TForm4.tmrNext5Timer(Sender: TObject);
begin
  if iRound = 5 then
    ShowMessage(IntToStr(iRound));
    begin
      Inc(iRound);
       pnl3.Enabled := True;
       pnl2.Enabled := True;
       pnl4.Enabled := True;
       pnl1.Enabled := True;
       pnl1.Color := clYellow;
       pnl2.Color := clRed;
       pnl3.Color := clGreen;
       pnl4.Color := clBlue;
       lblTimer.Caption := 'Which One Is The Darkest Colour?';
    end;
    tmrNext5.Enabled := false;
end;

procedure TForm4.pnl2Click(Sender: TObject);

begin

   if iRound = 1 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl2.Enabled := False;
    pnl2.Color := clBtnFace;
    tmrNext1.Enabled := True;
    end;

    if iRound = 2 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl2.Color := clBtnFace;
    tmrNext2.Enabled := True;
    end;

    if iRound = 3 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl2.Color := clBtnFace;
    tmrNext3.Enabled := True;
    end;

    if iRound = 4 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl2.Color := clBtnFace;
    iScore := iScore + 20;
    tmrNext4.Enabled := True;
    end;

    if iRound = 5 then
    begin
    pnl3.Enabled := False;
    pnl2.Enabled := False;
    pnl4.Enabled := False;
    pnl1.Enabled := False;
    pnl2.Color := clBtnFace;
    ShowMessage(IntToStr(iScore));
    setPsy(iScore);
    end;

end;

end.
