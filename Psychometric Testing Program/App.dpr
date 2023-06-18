program App;

uses
  Forms,
  frmApp in 'frmApp.pas' {Form1},
  conDB in 'conDB.pas' {DataModule2: TDataModule},
  app_cls in 'app_cls.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
