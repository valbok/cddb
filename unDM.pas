unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    db: TDatabase;
    tblData: TTable;
    tblTypes: TTable;
    qData: TQuery;
    qFetchTypesByName: TQuery;
    dsData: TDataSource;
    dsFetchTypesByName: TDataSource;
    usData: TUpdateSQL;
    qDelDataByPath: TQuery;
    qWork: TQuery;
    qInsertIntoData: TQuery;
    qDataWithOutp: TQuery;
    dsDAtaWOP: TDataSource;
    usDATAWOP: TUpdateSQL;
    qDElData: TQuery;
    qTypes: TQuery;
    dsTypes: TDataSource;
    usTypes: TUpdateSQL;
    qFetchDataByName: TQuery;
    dsFetchDByName: TDataSource;
    dsFetchDataById: TDataSource;
    qFetchDataById: TQuery;
    qInsertIntoTypes: TQuery;
    procedure dbAfterConnect(Sender: TObject);
    procedure dbAfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses unMain;

{$R *.dfm}

procedure TDM.dbAfterConnect(Sender: TObject);
begin
  with frmMain do
  begin
    setE(True);
    StatusBar.Panels[0].Text:=' онне “ исну™!!! MotHA fYckA';
    ePath.Text := fillLV( 0, lv, LastDirLevel );
  end;
{  qCD.open;
  frmMain.StatusBar.Panels[1].Text:='> к0Yнt = '+intToStr(qCD.RecordCount);}
end;

procedure TDM.dbAfterDisconnect(Sender: TObject);
begin
  frmMain.setE(False);
  frmMain.StatusBar.Panels[0].Text:=' онне “Y нEмј';

end;

end.
