unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, Grids, DBGrids,unPass, DBCtrls,
  Buttons, StdCtrls,db,IBquery;


type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    miDB: TMenuItem;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    pnlMain2: TPanel;
    grid: TDBGrid;
    N1: TMenuItem;
    miCreate: TMenuItem;
    nav: TDBNavigator;
    N2: TMenuItem;
    miRefresh: TMenuItem;
    N3: TMenuItem;
    miApply: TMenuItem;
    miCancel: TMenuItem;
    N4: TMenuItem;
    miDelete: TMenuItem;
    N5: TMenuItem;
    miFind: TMenuItem;
    pnlFind: TPanel;
    eValue: TEdit;
    Label1: TLabel;
    cbFields: TComboBox;
    Label2: TLabel;
    sbFind: TBitBtn;
    miClearDb: TMenuItem;
    miCD: TMenuItem;
    miViewCD: TMenuItem;
    miViewDb: TMenuItem;
    miClearCD: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure miCreateClick(Sender: TObject);
    procedure setE(value:Boolean);
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure miRefreshClick(Sender: TObject);
    procedure miApplyClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);
    procedure miDeleteClick(Sender: TObject);
    procedure miFindClick(Sender: TObject);
    procedure sbHideClick(Sender: TObject);
    procedure setDS(var ds:TDatasource;var q:TIBquery);
    procedure sbFindClick(Sender: TObject);
    procedure miClearDbClick(Sender: TObject);
    procedure miViewCDClick(Sender: TObject);
    procedure miViewDbClick(Sender: TObject);
    procedure miClearCDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   pathToDb,host:string
  end;
const VerPo='"���������" �� � 0.8 �0���  ��� ..:::dLt.atT0o:::..';
var
  frmMain: TfrmMain;

implementation
uses unOpenFile, unCreate,undM;
{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var f:Tfile;
p:integer;
begin
frmMain.Caption:=VerPo;
  if    openFile('config.ini',f) then
   begin
      find(f,'path="',p,filepos(f));
      pathToDb:=getPath(f,p+6);
      find(f,'host="',p,filepos(f));
      host:=getPath(f,p+6);
      CloseFile(f);
    end else
    begin
        CloseFile(f);
            halt;
    end;


end;

procedure TfrmMain.miCreateClick(Sender: TObject);
begin
  frmCreate.show;
end;
procedure tFrmMain.setE(value:Boolean);
begin
  miConnect.Enabled:=not Value;
  miDisconnect.Enabled:=value;
  miCreate.Enabled:=value;
  miDelete.Enabled:=value;
  miRefresh.Enabled:=value;
  miApply.Enabled:=value;
  miCancel.Enabled:=value;
  miFind.Enabled:=value;
  miClearDb.Enabled:=value;
  miClearCD.Enabled:=value;  
  miViewCD.Enabled:=value;

//  miViewDB.Enabled:=value;
end;
procedure TfrmMain.miConnectClick(Sender: TObject);
begin
//   GetLoginParams;
  try
     DM.db.Open;

  except
    on E:Exception do
     begin
        messageDLG(E.Message,mtError,[mbOk],0);
     end;

  end;

end;

procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
  dm.db.Close;
end;

procedure TfrmMain.miRefreshClick(Sender: TObject);
var id:integer;
begin
try
  try
  grid.Cursor:=crHourGlass;
{  id:=dm.qCD.fieldByName('id').asinteger;
  dm.qCD.Close;
  dm.qCD.Open;
  setDS(dm.dsCD,dm.qcd);
  dm.qCD.Locate('id',id,[]);  }
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
end;

end;

procedure TfrmMain.miApplyClick(Sender: TObject);
begin
with dm do
try
 try
  grid.Cursor:=crHourGlass;
{  if grid.DataSource=dsCD then  qCD.ApplyUpdates;
  if grid.DataSource=dsq_by_filename then  q_by_filename.ApplyUpdates;
  if grid.DataSource=dsq_by_id then  q_by_id.ApplyUpdates;
  if grid.DataSource=dsq_by_path then  q_by_path.ApplyUpdates;
  if grid.DataSource=dsq_by_comments then  q_by_comments.ApplyUpdates;
  if grid.DataSource=dsq_by_thedate then  q_by_thedate.ApplyUpdates;
  if grid.DataSource=dsCD_names then  qCD_names.ApplyUpdates;}
 
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
end;

end;

procedure TfrmMain.miCancelClick(Sender: TObject);
begin
with dm do
try
 try
  grid.Cursor:=crHourGlass;
{  if grid.DataSource=dsCD then qCD.CancelUpdates;
  if grid.DataSource=dsq_by_filename then  q_by_filename.CancelUpdates;
  if grid.DataSource=dsq_by_id then  q_by_id.CancelUpdates;
  if grid.DataSource=dsq_by_path then  q_by_path.CancelUpdates;
  if grid.DataSource=dsq_by_comments then q_by_comments.CancelUpdates;
  if grid.DataSource=dsq_by_thedate then  q_by_thedate.CancelUpdates;
  if grid.DataSource=dsCD_names then  qCD_names.CancelUpdates;}
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
end;

end;

procedure TfrmMain.miDeleteClick(Sender: TObject);
begin
with dm do
try
  try
  grid.Cursor:=crHourGlass;
{  if grid.DataSource=dsCD then  qCD.Delete;
  if grid.DataSource=dsq_by_filename then  q_by_filename.Delete;
  if grid.DataSource=dsq_by_id then q_by_id.Delete;
  if grid.DataSource=dsq_by_path then q_by_path.Delete;
  if grid.DataSource=dsq_by_comments then q_by_comments.Delete;
  if grid.DataSource=dsq_by_thedate then q_by_thedate.Delete;
  if grid.DataSource=dsCD_names then  qCD_names.Delete;}
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
end;

end;
procedure TfrmMain.setDS(var ds:TDatasource;var q:TIBquery);
begin
  grid.DataSource:=ds;
  nav.DataSource:=ds;
//  StatusBar.Panels[1].Text:='> �0Y�t = '+intToStr(q.Rields.Count);

  StatusBar.Refresh;
end;
procedure TfrmMain.miFindClick(Sender: TObject);
begin
{
 if pnlFind.Visible then
 begin
  pnlFind.Visible:=false;
  miFind.Caption:='�Y��� ����';
  setDS(dm.dsCD,dm.qcd);
 end else
 begin
   pnlFind.Visible:=true;
   miFind.Caption:='�Y��� ���y��';
   eValue.SetFocus;
 end; }
end;

procedure TfrmMain.sbHideClick(Sender: TObject);
begin
 pnlFind.Visible:=false;
end;

procedure TfrmMain.sbFindClick(Sender: TObject);
begin
try
  try
{if eValue.Text=emptySTR then exit;
    grid.Cursor:=crHourGlass;
with dm do
  begin
    case cbFields.ItemIndex of
    0: begin
           q_by_ID.close;
q_by_ID.ParamByName('id').AsInteger:=strToInt(eValue.text);
           q_by_ID.open;
           setDS(dsq_by_id,q_by_ID);
       end;
    1: begin
           q_by_filename.close;
           q_by_filename.ParamByName('filename').AsString:=eValue.text;
           q_by_filename.open;
           setDS(dsq_by_filename,q_by_filename);
        end;
    2: begin
           q_by_path.close;
           q_by_path.ParamByName('path').AsString:=eValue.text;
           q_by_path.open;
           setDS(dsq_by_path,q_by_path);
       end;
    3: begin
           q_by_comments.close;

q_by_comments.ParamByName('comments').AsString:=eValue.text;
           q_by_comments.open;
           setDS(dsq_by_comments,q_by_comments);
       end;
    4: begin
           q_by_thedate.close;

q_by_thedate.ParamByName('thedate').AsString:=eValue.text;
           q_by_thedate.open;
           setDS(dsq_by_thedate,q_by_thedate);
       end;

    end;

  end;}
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miClearDbClick(Sender: TObject);
begin
with dm do
try
  try
 if messageDLG('��, ����, ������ ��� ������� ������� ��� ������ �� ����?',mtConfirmation,[mbYes,mbNo],0)= mrNo
     then exit;
   grid.Cursor:=crHourGlass;
//   qdeleteAll.ExecSQL;
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miViewCDClick(Sender: TObject);
begin
with dm do
try
  try
   grid.Cursor:=crHourGlass;
{   qCD_names.Close;
   qCD_names.Open;
   setDS(dsCD_names,qCD_names);
   miViewCD.Enabled:=false;
   miViewDB.Enabled:=True;
   miCD.Caption:='�������� [CD]';}
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;


end;

procedure TfrmMain.miViewDbClick(Sender: TObject);
begin
with dm do
try
  try
   grid.Cursor:=crHourGlass;
{   setDS(dsCD,qCD);
   miViewCD.Enabled:=true;
   miViewDB.Enabled:=False;
   miCD.Caption:='�������� [DB]';}
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miClearCDClick(Sender: TObject);
begin
with dm do
try
  try
 if messageDLG('��, ����, ������ ��� ������� ������� ��� ������ �� <<<��>>> ����?',mtConfirmation,[mbYes,mbNo],0)= mrNo
     then exit;
   grid.Cursor:=crHourGlass;
//   qdeleteCD.ExecSQL;
finally
    grid.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

end.
