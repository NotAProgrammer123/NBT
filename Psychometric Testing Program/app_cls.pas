unit app_cls;

interface

uses sysUtils, conDB;

type
  TApplicant = class(TObject)

  private
    { Private declarations }
  surname, first_name, id_no, school, result, password: string;

  math_score, eng_score, psy_score, id: integer;

  test_date: TDateTime;

  public
    { Public declarations }
     constructor create(surname, first_name, id_no: string; math_score,
  eng_score, psy_score, id: integer; test_date: TDateTime; school,
  password: string);

     function countLetters(str : string) : integer;

     function toString : string;

     function login(username : string; password : string) : boolean;

     procedure setMath(score : integer; ID_NO : string);

     procedure setEng(score : integer; ID_NO : string);

     procedure setPsy(score : integer; ID_NO : string);

     function getID_NO : string;


  end;

  //var

implementation


{ TApplicant }

function TApplicant.countLetters(str: string): integer;

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

constructor TApplicant.create(surname, first_name, id_no: string; math_score,
  eng_score, psy_score, id: integer; test_date: TDateTime; school,
  password: string);
begin
  Self.surname:= surname;
  Self.first_name := first_name;
  Self.id_no := id_no;
  Self.math_score := -1;
  Self.eng_score := -1;
  Self.psy_score := -1;
  Self.test_date := test_date;
  Self.school := school;
  Self.result := result;
  Self.password := password;
  Self.id := id;
end;

function TApplicant.getID_NO: string;

var tID : textfile;
    sID : string;

begin
  AssignFile(tID, 'ID.txt');
  Reset(tID);
  while not Eof(tID) do
    begin
      ReadLn(tID, sID);
    end;
      CloseFile(tID);

      Result := sID;
end;

function TApplicant.login(username, password : string): boolean;
begin

end;

procedure TApplicant.setEng(score: integer; ID_NO: string);

var sSQL, sID : string;
    tID : textfile;

begin

  sID := getID_NO();
 // eng_score := score;

  sSQL := 'UPDATE tblApplicant SET English_Score = ' + IntToStr(score) + ' WHERE ID_NO = "' + sID + '"';
                
            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Text := sSQL;
                qryApplicant.ExecSQL;
              end;
  end;

procedure TApplicant.setMath(score : integer; ID_NO : string);

var sSQL, sID : string;
    tID : textfile;

begin

 //  math_score := score;
   sID := getID_NO();

  sSQL := 'UPDATE tblApplicant SET Math_Score = ' + IntToStr(score) + ' WHERE ID_NO = "' + sID + '"';

            WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Text := sSQL;
                qryApplicant.ExecSQL;
              end;

end;

procedure TApplicant.setPsy(score: integer; ID_NO: string);

var sSQL, sID : string;
    tID : textfile;

begin

 // psy_score := score;
  sID := getID_NO();

  sSQL := 'UPDATE tblApplicant SET Psychometric_Score = ' + IntToStr(score) + ' WHERE ID_NO = "' + sID + '"';

          WITH dbmApp DO
              begin
                qryApplicant.SQL.Clear;
                qryApplicant.SQL.Text := sSQL; 
                qryApplicant.ExecSQL;

                dbmApp.tblApplicant.Edit;
                dbmApp.tblApplicant.First;

              end;
end;

function TApplicant.toString: string;
begin
  Result := 'Surname: ' + surname + sLineBreak
            + 'Name: ' + first_name + sLineBreak
            + 'ID Number: ' + id_no + sLineBreak
            + 'Math Score: ' + IntToStr(math_score) + sLineBreak
            + 'English Score: ' + IntToStr(eng_score) + sLineBreak
            + 'Psychometric Score: ' + IntToStr(psy_score) + sLineBreak
            + 'Test Date: ' + DateToStr(test_date) + sLineBreak
            + 'School: ' + school + sLineBreak
            + 'Result: ' + result + sLineBreak
            + 'Password: ' + password + sLineBreak
            + 'ID: ' + IntToStr(id) + sLineBreak
end;

end.