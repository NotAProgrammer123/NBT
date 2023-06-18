unit conDB;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdbmApp = class(TDataModule)
    conAppDB: TADOConnection;
    tblApplicant: TADOTable;
    dscApp: TDataSource;
    qryApplicant: TADOQuery;
    tblUniversityRequests: TADOTable;
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
