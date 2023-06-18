unit dbmDB;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdbmApp = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbmApp: TdbmApp;

implementation

{$R *.dfm}

end.
