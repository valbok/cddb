unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    db: TDatabase;
    tblData: TTable;
    tblCDS: TTable;
    tblCDTypes: TTable;
    qData: TQuery;
    qCds: TQuery;
    qCDtypes: TQuery;
    dsData: TDataSource;
    dsCDs: TDataSource;
    dsCDtypes: TDataSource;
    usData: TUpdateSQL;
    usCDs: TUpdateSQL;
    usCDtypes: TUpdateSQL;
    qDEl_cd: TQuery;
    qDel_Data_by_cd_id: TQuery;
    qWork: TQuery;
    qInsertIntoCD: TQuery;
    qDataWithOutCD: TQuery;
    dsDAtaWOCD: TDataSource;
    usDATAQOCD: TUpdateSQL;
    qDElData: TQuery;
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
  frmMain.setE(True);
  frmMain.StatusBar.Panels[0].Text:='������� ����!!! MotHA fYckA';
{  qCD.open;
  frmMain.StatusBar.Panels[1].Text:='> �0Y�t = '+intToStr(qCD.RecordCount);}
end;

procedure TDM.dbAfterDisconnect(Sender: TObject);
begin
  frmMain.setE(False);
  frmMain.StatusBar.Panels[0].Text:='�������Y �E��';

end;

end.
