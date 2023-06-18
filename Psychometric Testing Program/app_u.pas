unit app_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, conDB, app_cls, Grids, DBGrids, DateUtils, ExtCtrls,
  ComCtrls;

type
  TForm1 = class(TForm)
    edtID: TEdit;
    edtPassword: TEdit;
    lblID: TLabel;
    lblPassword: TLabel;
    btnMath: TButton;
    lblRegister: TLabel;
    dbgData: TDBGrid;
    btnEng: TButton;
    btnPsychometric: TButton;
    btnReport: TButton;
    memReport: TMemo;
    redCourses: TRichEdit;
    btnRequest: TButton;
    Button1: TButton;
    lblHelp: TLabel;
    procedure lblRegisterMouseEnter(Sender: TObject);
    procedure lblRegisterMouseLeave(Sender: TObject);
    procedure lblRegisterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMathClick(Sender: TObject);
    procedure btnEngClick(Sender: TObject);
    procedure btnPsychometricClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnRequestClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure lblHelpMouseEnter(Sender: TObject);
    procedure lblHelpMouseLeave(Sender: TObject);
    procedure lblHelpClick(Sender: TObject);
  private
    { Private declarations }
    function countLetters(str : string) : integer;
    procedure createAccount;
    function processName() : string;
    function processSurname() : string;
    function processID() : string;
    function processSchool() : string;
    function processPassword() : string;
    function processCourses(math : integer; eng : integer; psy : integer) : string;
    function courses(math, eng, psy: integer): string;
    procedure hlpFunctionality;
    procedure hlpAbout;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  objApplicant : TApplicant;
  iMath, iEng, iPsy : integer;
  arrNormalCareers : array[1..5] of string = ('Business Management', 'Journalism', 'Human Rights', 'Egyptology', 'Commerce');
  arrEngCareers : array[1..5] of string = ('Creative Writing', 'Education Studies', 'Liberal Arts', 'Gender Studies', 'Social Anthropology');
  arrMathCareers : array[1..10] of string = ('Actuarial Science', 'Engineering', 'Medicine', 'Data Science', 'Statistics', 'Chartered Accounting', 'Financial Mathematics', 'Pilot School', 'Agricultural Science', 'Physics');
  arrPsyCareers: array[1..10] of string = ('Psychology', 'Occupational Therapy', 'Town Planning', 'Law', 'Political Science', 'Communications', 'Sound Engineering', 'Criminology', 'Marketing', 'Economics');
  arrQuestions : array [1..10] of string = ('1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg');
  arrAnswers : array[1..10] of string = ('x = 27/5 , y = 48/5, z = 36/5', 'C=12 when y = -x2 + 4x + C', 'k=10', 'BOC = 144', 'X = 3600', 'b = 14, c=8, d=18', 'area orange = 7.25' , 'x=2.4', 'h=76.77' ,'volume abc = 6 * sqroot(10)');

implementation

uses math_u, eng_u, psychometric_u, psy_u;

{$R *.dfm}

procedure TForm1.btnEngClick(Sender: TObject);

var sPass, sID: string;
    tID : TextFile;

begin
  sID := edtID.Text;
  sPass := edtPassword.Text;
  AssignFile(tID, 'ID.txt');
  Rewrite(tID);

 WITH dbmApp DO
  begin
   qryApplicant.Close;
   qryApplicant.SQL.Clear;
   qryApplicant.SQL.Add('SELECT First_name FROM tblApplicant WHERE ID_NO = "' + sID + '" AND Password = "' + sPass + '"');
   qryApplicant.Open;
   end;

   if dbgData.DataSource.DataSet.RecordCount = 1 then
    begin
      ShowMessage('Profile Found');
      WriteLn(tID, sID);
      Form1.Hide;
      Form3.Show;
    end
     else
    begin
      ShowMessage('Incorrect Username/Password Entered');
    end;

  CloseFile(tID);
end;

procedure TForm1.btnMathClick(Sender: TObject);

var sPass, sID: string;
    tID : TextFile;

begin

  sID := edtID.Text;
  sPass := edtPassword.Text;
  AssignFile(tID, 'ID.txt');
  Rewrite(tID);

  WITH dbmApp DO
  begin
   qryApplicant.Close;
   qryApplicant.SQL.Clear;
   qryApplicant.SQL.Add('SELECT First_name FROM tblApplicant WHERE ID_NO = "' + sID + '" AND Password = "' + sPass + '"');
   qryApplicant.Open;
   end;

   if dbgData.DataSource.DataSet.RecordCount = 1 then
    begin
      ShowMessage('Profile Found');
      WriteLn(tID, sID);
      Form1.Hide;
      Form2.Show;
    end
     else
    begin
      ShowMessage('Incorrect Username/Password Entered');
    end;



  CloseFile(tID);


end;

procedure TForm1.btnPsychometricClick(Sender: TObject);

var sPass, sID: string;
    tID : TextFile;

begin
   sID := edtID.Text;
  sPass := edtPassword.Text;
  AssignFile(tID, 'ID.txt');
  Rewrite(tID);

 WITH dbmApp DO
  begin
   qryApplicant.Close;
   qryApplicant.SQL.Clear;
   qryApplicant.SQL.Add('SELECT First_name FROM tblApplicant WHERE ID_NO = "' + sID + '" AND Password = "' + sPass + '"');
   qryApplicant.Open;
   end;

   if dbgData.DataSource.DataSet.RecordCount = 1 then
    begin
      ShowMessage('Profile Found');
      WriteLn(tID, sID);
      Form1.Hide;
      Form5.Show;
    end
     else
    begin
      ShowMessage('Incorrect Username/Password Entered');
    end;

  CloseFile(tID);
end;

procedure TForm1.btnReportClick(Sender: TObject);

var sPass, sID, sReport : string;
    bFound : boolean;
    tID : TextFile;

begin

  sID := edtID.Text;
  sPass := edtPassword.Text;
  bFound := false;
  AssignFile(tID, 'ID.txt');
  Rewrite(tID);

  WITH dbmApp DO
  begin
   qryApplicant.Close;
   qryApplicant.SQL.Clear;
   qryApplicant.SQL.Add('SELECT Round( (Math_Score + Psychometric_Score + English_Score) / 3, 0 ) AS Aggregate, Round((Math_Score + Psychometric_Score) / 2, 0) AS Non_Language_Aggragate, Math_Score, English_Score, Psychometric_Score, First_Name, Surname, ');
   qryApplicant.SQL.Add('Test_Date, ID, ID_NO, School FROM tblApplicant WHERE ID_NO = "' + sID + '" AND Password = "' + sPass + '"');
   qryApplicant.Open;
   end;

   if dbgData.DataSource.DataSet.RecordCount = 1 then
    begin
      ShowMessage('Profile Found');
      dbgData.DataSource.DataSet.First;
      iMath := dbgData.DataSource.DataSet['Math_Score'];
      iEng := dbgData.DataSource.DataSet['English_Score'];
      iPsy := dbgData.DataSource.DataSet['Psychometric_Score'];
      sReport := 'Name: ' + dbgData.DataSource.DataSet['First_Name'] + ' ' + dbgData.DataSource.DataSet['Surname'] + sLineBreak + 'Psychometric Score: ' + IntToStr(dbgData.DataSource.DataSet['Psychometric_Score']) + sLineBreak + 'English Score: ' + IntToStr(dbgData.DataSource.DataSet['English_Score']) + sLineBreak + 'Math Score: ' + IntToStr(dbgData.DataSource.DataSet['Math_Score']);
      objApplicant := TApplicant.create(dbgData.DataSource.DataSet['Surname'], dbgData.DataSource.DataSet['First_Name'], dbgData.DataSource.DataSet['ID_NO'], dbgData.DataSource.DataSet['Math_Score'], dbgData.DataSource.DataSet['English_Score'], dbgData.DataSource.DataSet['Psychometric_Score'], dbmApp.tblApplicant['ID'], dbgData.DataSource.DataSet['Test_Date'], dbgData.DataSource.DataSet['School'], '');
      processCourses(iMath, iEng, iPsy);
      memReport.Text := sReport;
    end
     else
    begin
      ShowMessage('Incorrect Username/Password Entered');
    end;


  CloseFile(tID);
end;

procedure TForm1.btnRequestClick(Sender: TObject);

var sID, sReason, sUniversity, sSQL, sReport : string;
    dtDate : TDateTime;
    bFound : boolean;

begin
  dtDate := DateUtils.DateOf(Now);
  bFound := false;
  sID := InputBox('Student ID', 'Enter Student ID Number', '');
  sUniversity := InputBox('University', 'Enter University Name', '');
  sReason := InputBox('Reason', 'Enter Reason For Requesting Results', '');


  if (Length(sID) <> 0) AND (Length(sUniversity) <> 0) AND (Length(sReason) <> 0) then
    begin
      dbmApp.tblUniversityRequests.Append;
      dbmApp.tblUniversityRequests['STUDENT_ID_NO'] := sID;
      dbmApp.tblUniversityRequests['Request_Date'] := dtDate;
      dbmApp.tblUniversityRequests['University'] := sUniversity;
      dbmApp.tblUniversityRequests['Reason'] := sReason;
      dbmApp.tblUniversityRequests.Post;

      sSQL := 'SELECT tblApplicant.Math_Score, tblApplicant.Psychometric_Score, tblApplicant.English_Score, tblUniversityRequests.University, tblUniversityRequests.Reason FROM tblApplicant, tblUniversityRequests WHERE ID_NO = STUDENT_ID_NO';

            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.Close;
                qryApplicant.SQL.Add(sSQL);
                qryApplicant.Open;
              end;

      if dbgData.DataSource.DataSet.RecordCount <> 0 then
      begin
        ShowMessage('Profile Found')
      end
       else
      begin
        ShowMessage('Profile Not Found. Please Try Again');
      end;


    end;
end;

procedure TForm1.Button1Click(Sender: TObject);

var sID, sUniversity, sSQL : string;

begin
  sID := InputBox('Student ID', 'Enter Student ID', '');
  sUniversity := InputBox('University', 'Enter University', '');

  if (sID <> '') AND (sUniversity <> '') then
    begin
      sSQL := 'DELETE FROM tblUniversityRequests WHERE University= "' + sUniversity + '" AND STUDENT_ID_NO = "' + sID + '"';

            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Text := sSQL;
                qryApplicant.ExecSQL;
              end;
              ShowMessage('Requests Deleted Successfully');
    end
     else
    begin
      ShowMessage('Invalid Input. Please Try Again');
    end;
end;

function TForm1.countLetters(str: string): integer;

  var i, iLetters : integer;


begin

  iLetters := 0;

  for i := 1 to Length(str) do
    begin
      if str[i] <> ' ' then
      begin
        Inc(iLetters);
      end;
    end;

    Result := iLetters;
end;

function TForm1.courses(math, eng, psy: integer): string;
begin
  if math > 80 then


end;

procedure TForm1.createAccount;

var sName, sSurname, sID, sSchool, sResult, sPassword, sSQL, sValues : string;
    iEng, iPsy, iMath, iID : integer;
    dtDate : TDateTime;

begin

          //Set Default Values and Date
          iMath := -1;
          iEng := -1;
          iPsy := -1;
          iID := 1;
          dtDate := DateUtils.DateOf(Now);
          sResult := 'Not Set Yet';

          //Capture Values
            sName := processName();

          if (sName <> '') then
            begin
              sSurname := processSurname();
            end;

          if (sName <> '') AND (sSurname <> '') then
            begin
             sID := processID();
            end;

          if (sName <> '') AND (sSurname <> '') AND (sID <> '') then
            begin
             sSchool := processSchool();
            end;

             if (sName <> '') AND (sSurname <> '') AND (sID <> '') AND (sSchool <> '') then
            begin
             sPassword := processPassword();
            end;

            iID := dbmApp.tblApplicant.RecordCount + 1;
            objApplicant := TApplicant.create(sSurname, sName, sID, iMath, iEng, iPsy, dbmApp.tblApplicant.RecordCount + 10, dtDate, sSchool, sPassword);
            sValues := IntToStr(iID)

                      + ', ' +

                      '"' + sSurname + '"'

                      + ', ' +

                      '"' + sName + '"'

                      + ', '

                        +'"' + sID + '"'

                        + ', '



                      + IntToStr(iMath)

                      + ', '

                      + IntToStr(iEng)

                      + ', '

                      + IntToStr(iPsy)

                      + ', '

                      + '#' + DateToStr(dtDate) + '#'

                      + ', '

                      + '"' + sSchool + '"'

                      + ', '

                      + '"' + sPassword + '"';

            sSQL := 'INSERT INTO tblApplicant VALUES (' + sValues + ')';

            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Text := sSQL;
                qryApplicant.ExecSQL;

                qryApplicant.Close;
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Add('SELECT * FROM tblApplicant');
                qryApplicant.Open;
              end;
            end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edtPassword.PasswordChar := #0;
  memReport.Text := 'Reports Will Appear Here';
end;

procedure TForm1.FormShow(Sender: TObject);

var sSQL : string;

begin
  redCourses.Text := 'Recommended Courses Will Show Here';
  dbgData.DataSource := dbmApp.dscApp;
  sSQL := 'SELECT ID, Surname, First_Name, ID_NO, Math_Score, English_Score, Psychometric_Score, Test_Date, School FROM tblApplicant ORDER BY Surname ASC';

            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.Close;
                qryApplicant.SQL.Add(sSQL);
                qryApplicant.Open;
              end;
end;

procedure TForm1.hlpAbout;
begin
  ShowMessage('Purpose Of The Application: To Conduct Tests To Test The Academic Capabilities Of A Student, And Provide Recommendations On A Course Choice In University');
  ShowMessage('Tests That The Application Consists Of: Math Aptitude Test, English Aptitude Test, Logic/Psychometric Test');
  ShowMessage('Creator: Thesele Setsabi');
end;

procedure TForm1.hlpFunctionality;
begin
  ShowMessage('To Register For Test: Click on Red Link Labeled "Register For Test" then follow the prompts');
  ShowMessage('To Request The Test Results Of A Learner, You Must Be A University. Click On The "Request Learner" Button To Do This');
  ShowMessage('The "Generate Report" Button Enables A Student To Retrieve Their Test Results');
  ShowMessage('You Must Do Each Test Individually To Obtain An Accurate Set Of Test Results');
  ShowMessage('To Start Each Test, Click On The Relevant Button For Each Test');
  ShowMessage('You Must Enter Your ID Number AND Password To Do A Test Or Obtain Your Test Results');
  ShowMessage('Two Non-Editable Boxes Are Provided. The Left One Displays Your Test Results, The Right One Displays Recommended Courses For You');
  ShowMessage('To Cancel/Delete A Request For The Test Results Of A Learner, Click On The "Delete Marks Request" Button And Follow The Prompts');
  ShowMessage('Good Luck With The Tests And DO YOUR BEST! :)');
end;

procedure TForm1.lblHelpClick(Sender: TObject);

var sInput : string;

begin
  sInput := InputBox('Help', 'What do you need help with? Enter 1 for functionalities, 2 for About Application', '');



  if (sInput = '1') OR (sInput = '2') then
    begin
      case StrToInt(sInput) of
        1: hlpFunctionality();
        2: hlpAbout();
      end;
    end
     else
    begin
      ShowMessage('Invalid Input. Please Try Again');
    end;


end;

procedure TForm1.lblHelpMouseEnter(Sender: TObject);
begin
  lblHelp.Font.Color := clBlue;
end;

procedure TForm1.lblHelpMouseLeave(Sender: TObject);
begin
  lblHelp.Font.Color := clRed;
end;

procedure TForm1.lblRegisterClick(Sender: TObject);

begin

  createAccount();

end;

procedure TForm1.lblRegisterMouseEnter(Sender: TObject);
begin
  lblRegister.Font.Color := clBlue;
end;

procedure TForm1.lblRegisterMouseLeave(Sender: TObject);
begin
  lblRegister.Font.Color := clRed;
end;

function TForm1.processCourses(math, eng, psy: integer): string;

var i, iCount, iLoop, iNormal : integer;
    sSQL : string;

begin
 redCourses.Lines.Clear;
 redCourses.Lines.Add('Recommended Courses:');
 redCourses.Lines.Add('');
  if math >= 80 then
    begin

      for i := 1 to Length(arrMathCareers) do
        begin
          redCourses.Lines.Add(arrMathCareers[i]);
        end;
    end;

    if psy >= 60 then
      begin
        for iCount := 1 to Length(arrPsyCareers) do
        begin
          redCourses.Lines.Add(arrPsyCareers[iCount]);
        end;
      end;

      if eng >= 70 then
        begin
           for iLoop := 1 to Length(arrEngCareers) do
              begin
                redCourses.Lines.Add(arrEngCareers[iLoop]);
              end;
        end;

        if (eng < 70) AND (math < 80) AND (psy < 60) then
          begin
            for iNormal := 1 to Length(arrNormalCareers) do
              begin
                redCourses.Lines.Add(arrNormalCareers[iLoop]);
              end;
          end;

end;

function TForm1.processID() : string;

var sID : string;

begin
   //Capture ID Number
          sID := InputBox('ID', 'Enter Your ID Number', '');

        if countLetters(sID) <> 0 then
          begin
            Result := sID
          end
           else
          begin
           ShowMessage('Please Enter A Valid ID Number and Try Again');
           Result := '';
          end;


end;

function TForm1.processName() : string;

var sName : string;

begin
   //Capture Name
  sName := InputBox('First Name', 'Enter Your First Name(s)', '');

        if countLetters(sName) <> 0 then
          begin
            Result := sName;
          end
           else
          begin
           ShowMessage('Please Enter A Valid Name and Try Again');
           Result := '';
          end;


end;

function TForm1.processPassword() : string;

var sPassword : string;

begin
  //Capture Password
      sPassword := InputBox('Password', 'Create A New Password', '');

        if countLetters(sPassword) <> 0 then
          begin
            Result := sPassword;
            ShowMessage('Registered Successfully!');
          end
           else
          begin
           ShowMessage('Please Enter A Valid Password and Try Again');
           Result := '';
          end;


end;

function TForm1.processSchool() : string;

var sSchool : string;

begin
  //Capture School Name
      sSchool:= InputBox('School', 'Enter Your School Name', '');

        if countLetters(sSchool) <> 0 then
          begin
            Result := sSchool;
          end
           else
          begin
           ShowMessage('Please Enter A Valid School Name and Try Again');
           Result := '';
          end;


end;

function TForm1.processSurname() : string;

var sSurname : string;

begin
  //Capture Surname
          sSurname := InputBox('Surname', 'Enter Your Surname', '');

        if countLetters(sSurname) <> 0 then
          begin
           Result := sSurname;
          end
           else
          begin
           ShowMessage('Please Enter A Valid Surname and Try Again');
           Result := '';
          end;


end;

end.
