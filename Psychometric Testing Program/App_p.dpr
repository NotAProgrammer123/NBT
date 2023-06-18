program App_p;

uses
  Forms,
  app_u in 'app_u.pas' {Form1},
  conDB in 'conDB.pas' {dbmApp: TDataModule},
  math_u in 'math_u.pas' {lblMath},
  eng_u in 'eng_u.pas' {Form3},
  psychometric_u in 'psychometric_u.pas' {Form4},
  psy_u in 'psy_u.pas' {Form5};

{$R *.res}


begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdbmApp, dbmApp);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
