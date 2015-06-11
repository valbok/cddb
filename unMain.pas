unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, Grids, DBGrids,unPass, DBCtrls,
  Buttons, StdCtrls,db,DBTables,ImgList;


type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    miDB: TMenuItem;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    pnlMain2: TPanel;
    N1: TMenuItem;
    mmiCreate: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    miApply: TMenuItem;
    miCancel: TMenuItem;
    miFind: TMenuItem;
    PopupMenu: TPopupMenu;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    miInsert: TMenuItem;
    N6: TMenuItem;
    miFill: TMenuItem;
    PageControl1: TPageControl;
    ts2: TTabSheet;
    ilApp: TImageList;
    lv: TListView;
    pnlTop: TPanel;
    ePath: TEdit;
    mmiTables: TMenuItem;
    mmiData: TMenuItem;
    mmiTypes: TMenuItem;
    miRefresh: TMenuItem;
    btnExit: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure mmiCreateClick(Sender: TObject);
    procedure setE(value:Boolean);
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure miRefreshClick(Sender: TObject);
    procedure miApplyClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);

    procedure sbFindClick(Sender: TObject);
    procedure miInsertClick(Sender: TObject);


    procedure treeStrDBExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure lvDblClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure miEditClick(Sender: TObject);
    procedure mmiDataClick(Sender: TObject);

    procedure mmiTypesClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure miFillClick(Sender: TObject);
    procedure miDelClick(Sender: TObject);
    procedure lvKeyPress(Sender: TObject; var Key: Char);
    function fillLV( id:integer; var lv: TListView;  var lastParent_id:integer ):string;
    function getIconIDByType( typeOfFile:string ):integer;

  private
    { Private declarations }
  public
    { Public declarations }



//   procedure ClickDir_file;
//   procedure FindLocate(txt:string);
  end;
const VerPo='"s03DAtEëb-ÁÄ" â. 1.5/ ê0Äåä  áàÉ ..:::dLt.atT0o:::..';

  CLOSED_ICON=0;
  OPEN_ICON=1;
  File_ICON=2;
  CD_ICON=4;
  UP_TO_DIR = '[..]';
var
  frmMain: TfrmMain;
  DirLevel:integer=0;
  LastDirLevel:integer=0;
  NameCD:string;
implementation
uses unOpenFile, unCreate,undM, unCDs, unData, unTypes, unFindF3;
{$R *.dfm}


procedure TfrmMain.FormCreate(Sender: TObject);
begin
  frmMain.Caption:=verPO;
end;
//-----------------------------------------------
procedure TfrmMain.mmiCreateClick(Sender: TObject);
begin
  frmCreate.show;
end;
//++++++++++++++++++++++
procedure tFrmMain.setE(value:Boolean);
begin
  miConnect.Enabled:=not Value;
  miDisconnect.Enabled:=value;
  miApply.Enabled:=value;
  miCancel.Enabled:=value;
  miFind.Enabled:=value;
end;
//-----------
function TfrmMain.getIconIDByType( typeOfFile:string ):integer;
begin
     if typeOfFile = 'FOLDER' then
        result := CLOSED_ICON
     else
     if copy( typeOfFile, 1, 2 ) = 'CD' then
        result := CD_ICON
     else
     if copy( typeOfFile, 1, 3 ) = 'DVD' then
        result := CD_ICON
     else
        result := FILE_ICON; // if type is FILE or other
end;
//-----------
function TfrmMain.fillLV( id:integer; var lv: TListView; var lastParent_id:integer ):string;
var i:integer;
    typeOfFile:string;
begin
with dm do
begin
    qData.close;
    qData.ParamByName( 'parent_id' ).AsInteger:=id;
    qData.open;
    i:=-1;
    lv.items.clear;
    qData.First;
    lv.Items.Add;
    lv.Items.Item[0].ImageIndex := Open_icon;
    lv.Items.Item[0].Caption := UP_TO_DIR;
    inc(i);
    while not qData.Eof do
    begin
       lv.Items.Add;
       inc(i);
       lv.Items.Item[i].SubItems.Add( qData.fieldByName( 'd_comments' ).AsString );
       lv.Items.Item[i].SubItems.Add( intToStr( qData.fieldByName( 'd_id' ).AsInteger ) );
       typeOfFile := qData.fieldByName( 't_name' ).AsString;
       lv.Items.Item[i].ImageIndex := getIconIDByType( typeOfFile );
       lv.Items.Item[i].Caption := qData.fieldByName( 'd_name' ).AsString;
       qData.Next;
    end;
    dm.qFetchDataById.Close;
    dm.qFetchDataById.ParamByName( 'id' ).AsInteger := id;
    dm.qFetchDataById.Open;
    lastParent_id := 0;
    if not dm.qFetchDataById.Eof then
    begin
      result := '>' + dm.qFetchDataById.fieldByName( 'path' ).AsString;
      lastParent_id := dm.qFetchDataById.fieldByName( 'parent_id' ).AsInteger;
    end
    else
      result := '>';

    lv.Items.Item[0].Selected :=true;
    lv.SetFocus;
end;  
end;
//----------------------------
procedure TfrmMain.miConnectClick(Sender: TObject);
begin
with dm do
  try
     db.Open;
     DirLevel := 0;
  except
    on E:Exception do
    begin
        messageDLG( E.Message, mtError, [mbOk], 0 );
    end;
  end;
end;
//+++++++++++++
procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
  dm.db.Close;
  lv.Clear;
end;
//---------------
procedure TfrmMain.miRefreshClick(Sender: TObject);
begin
  ePath.Text := fillLV( dirlevel, lv, LastDirLevel );
end;
//--------------------
procedure TfrmMain.miApplyClick(Sender: TObject);
begin
  with dm do
  try
   try
    try
     qDataWithOutp.ApplyUpdates;
     qDataWithOutp.Close;
     qDataWithOutp.Open;     
    except
    end;
    try
       qtypes.ApplyUpdates;
       qtypes.Close;
       qtypes.Open;
    except
    end;

  finally

  end;
  except
    on E:Exception do
      messageDLG(E.Message,mtError,[mbOk],0);
  end;
end;
//----------------
procedure TfrmMain.miCancelClick(Sender: TObject);
begin
with dm do
try
 try
  lv.Cursor:=crHourGlass;
  try
     qDataWithOutp.CancelUpdates;
  except
  end;
  try
     qTypes.CancelUpdates;
  except
  end;
  finally
      lv.Cursor:=crDefault;
  end;
  except
    on E:Exception do
      messageDLG(E.Message,mtError,[mbOk],0);
  end;
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
    lv.Cursor:=crDefault;
end;
except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
   end;

end;

procedure TfrmMain.miInsertClick(Sender: TObject);
begin
   if not dm.qDataWithOutp.Active then dm.qDataWithOutp.Open;
   frmData.dbnav.BtnClick( nbInsert );
   frmData.eParent_id.Text := intToStr( dirLevel );
   frmData.ePath.Text := copy( ePath.Text, 2, length( ePath.Text ) ) ; 
   frmData.eTheDate.Text := DateToStr( Date );
   frmData.Show;
end;

procedure TfrmMain.treeStrDBExpanding(Sender: TObject; Node: TTreeNode;
  var AllowExpansion: Boolean);
begin
  AllowExpansion:=(Node.getFirstChild.ImageIndex<>-1);
   if not(AllowExpansion) then
    begin
//     treeStrDb.Selected:=Node;
//     treeStrDBDBLClick (Sender);
    end
    else
     if Node.ImageIndex=CLOSED_ICON then
      begin
       Node.ImageIndex:=OPEN_ICON;
       Node.SelectedIndex:=OPEN_ICON;
      end;
end;

///-------------------
procedure TfrmMain.lvDblClick(Sender: TObject);
var i : integer;
    s, tmpstr : string;
    arrayPath : TArrayOfPAth;
begin
//    mem.Clear;
    tmpstr := '';
    if lv.Selected = nil then exit;
    if lv.Selected.Caption = UP_TO_DIR then
    begin
       DirLevel := LastDirLevel;
       ePath.Text := fillLV( LastdirLevel, lv,  LastDirLevel );
       exit;
    end else
    if lv.Selected.ImageIndex <> File_icon then
    begin
       dirLevel := StrToInt( lv.Selected.SubItems.Strings[ 1 ] );
       ePath.Text := fillLV( dirLevel, lv, LastDirLevel );
    end;
end;
//***************
procedure TfrmMain.PopupMenuPopup(Sender: TObject);
begin
  miEdit.Enabled := lv.Selected <> nil;
  miFill.Enabled := lv.Selected <> nil;
  miDEl.Enabled := lv.Selected <> nil;
  if lv.Selected <> nil then
  begin
    miFill.Enabled := ( lv.Selected.Caption <> UP_TO_DIR ) and ( lv.Selected.ImageIndex <> File_ICON )
                   or ( ( ePath.Text = '>' ) and ( lv.Selected.Caption = UP_TO_DIR ) );
    miEdit.Enabled := lv.Selected.Caption <> UP_TO_DIR;
    miDEL.Enabled := lv.Selected.Caption <> UP_TO_DIR;


 end;
end;

procedure TfrmMain.miEditClick(Sender: TObject);
begin
   if not dm.qDataWithOutp.Active then dm.qDataWithOutp.Open;
   dm.qDataWithOutp.Locate( 'id', StrToInt( lv.Selected.SubItems.Strings[1] ),[] );
   frmData.Show;
end;
//----------------
procedure TfrmMain.mmiDataClick(Sender: TObject);
begin
   if not dm.qDataWithOutp.Active then dm.qDataWithOutp.Open;
   frmData.show;
end;
//*******************
procedure TfrmMain.mmiTypesClick(Sender: TObject);
begin
  if not dm.qTypes.Active then dm.qTypes.Open;
  frmTypes.show;
end;
//*******************
procedure TfrmMain.btnExitClick(Sender: TObject);
begin
   close;
end;
//-------------
procedure TfrmMain.FormActivate(Sender: TObject);
begin
   lv.SetFocus;
end;
//++++++++++++
procedure TfrmMain.miFillClick(Sender: TObject);
var s: string;
begin
  if lv.Selected=nil then exit;
  if ( ePath.Text = '>' ) then mmiCreate.Click;
  if ( lv.Selected.Caption = Up_TO_DIR ) then exit;
  frmCreate.parent_id := StrToInt(lv.Selected.SubItems.Strings[1]);
  if ePath.Text[length(ePath.Text)] <> '\' then s := '\' else s:='';
  frmCreate.eRoot.Text := copy( ePath.Text, 2, length( ePath.Text ) ) + s + lv.Selected.Caption ;
  frmCreate.Show;
end;
//++++++++++++++++
procedure TfrmMain.miDelClick(Sender: TObject);
var str,cp: string;

begin
  if lv.Selected = nil then exit;
  if lv.Selected.Caption = Up_TO_DIR then exit;
  cp := copy( ePath.Text, 2, length( ePath.Text ) );
  if ( cp = EmptyStr )  then
    str := '\'+ cp + lv.Selected.Caption
  else
  if ( cp[ length( cp ) ]  <> '\' ) then
    str := cp + '\' + lv.Selected.Caption
  else
    str := cp + lv.Selected.Caption;
  frmData.del_data( StrToInt(lv.Selected.SubItems.Strings[1]),
                    str );
  miRefresh.Click;
end;
procedure TfrmMain.lvKeyPress(Sender: TObject; var Key: Char);
const c: set of  char = ['A'..'Z','a'..'z','0'..'9','À'..'ß','à'..'ÿ'];
begin
    if key in c then
    begin
       frmFindF3.eValue.Text:=key;
//       FindLocate(key);
       exit;
    end else
    if lv.Selected = nil then exit;
    if ( key = #8 ) or ( ( ( key = #13 ) and ( lv.Selected.Caption = UP_TO_DIR ) ) ) then
    begin
       DirLevel := LastDirLevel;
       ePath.Text := fillLV( LastdirLevel, lv,  LastDirLevel );
       exit;
    end else
    if key = #13 then
    if ( lv.Selected.ImageIndex <> File_icon ) and ( lv.Selected.Caption <> UP_TO_DIR ) then
    begin
      dirLevel := StrToInt( lv.Selected.SubItems.Strings[ 1 ] );
      ePath.Text := fillLV( dirLevel, lv, LastDirLevel );
    end;
{
  if (dirlevel <> 0) and (key=chr(vk_Back)) then
  begin
//     click2dot;
  if   lv.Items.Item[0].Caption='[..]' then
  begin
     lv.Items.Item[0].Focused:=true;     all tjis fucked lamers
     lv.Items.Item[0].Selected:=true;
     lv.OnDblClick(sender);
  end else
                click2dot;
  end;
  if key=chr(vk_return) then
  begin
     lv.OnDblClick(sender);
  end;
}

end;

end.

