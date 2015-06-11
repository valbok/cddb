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
    miFillCD: TMenuItem;
    PageControl1: TPageControl;
    ts2: TTabSheet;
    ilApp: TImageList;
    lv: TListView;
    mem: TMemo;
    pnlTop: TPanel;
    ePath: TEdit;
    mmiTables: TMenuItem;
    mmiData: TMenuItem;
    mmiCD: TMenuItem;
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

    procedure miFindClick(Sender: TObject);

    procedure sbFindClick(Sender: TObject);
    procedure miInsertClick(Sender: TObject);


    procedure treeStrDBExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure lvDblClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure miEditClick(Sender: TObject);
    procedure mmiDataClick(Sender: TObject);
    procedure mmiCDClick(Sender: TObject);
    procedure mmiTypesClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);

    procedure FormActivate(Sender: TObject);
    procedure miFillCDClick(Sender: TObject);
    procedure miDelClick(Sender: TObject);
    procedure lvKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }


   procedure Click2Dot;
   procedure ClickDir_file;
   procedure FindLocate(txt:string);   
  end;
const VerPo='"s03DAtEëb-ÁÄ" â. 1.2009 ê0Äåä  áàÉ ..:::dLt.atT0o:::..';

  CLOSED_ICON=0;
  OPEN_ICON=1;
  File_ICON=2;
  CD_ICON=4;

var
  frmMain: TfrmMain;
  DirLevel:integer=0;
  NameCD:string;
implementation
uses unOpenFile, unCreate,undM, unCDs, unData, unCDTypes, unFindF3;
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
procedure fillLV_CD(var lv:TListView);
var i:integer;
begin
  with dm do
  begin
    qCds.Open;
    i:=0;
    lv.Clear;
    qCDs.First;
    while not qCds.Eof do
    begin
       lv.Items.Add.SubItems.Add(qCds.fieldByName('comments').AsString);
       lv.Items.Item[i].ImageIndex:=CD_ICON;
       lv.Items.Item[i].Caption:=qCds.fieldByName('name').AsString;
       qcds.Next;
       inc(i);
    end;
  end;

end;
//----------------------------
procedure TfrmMain.miConnectClick(Sender: TObject);
begin
with dm do
  try
     db.Open;
     qCds.open;
     fillLV_cd(lv);
     DirLevel:=0;
  except
    on E:Exception do
     begin
        messageDLG(E.Message,mtError,[mbOk],0);
     end;

  end;

end;
//+++++++++++++
procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
  dm.db.Close;
end;
//---------------
procedure TfrmMain.miRefreshClick(Sender: TObject);
var id:integer;
begin
  try
    try

    if DirLevel=0 then
    begin
      DM.qCds.Close;
      fillLV_cd(lv);
      DirLevel:=0;
    end;

  finally

  end;
  except
    on E:Exception do
      messageDLG(E.Message,mtError,[mbOk],0);
  end;

end;
//--------------------
procedure TfrmMain.miApplyClick(Sender: TObject);
begin
  with dm do
  try
   try

    try
     qDataWithOutCD.ApplyUpdates;
     qDataWithOutCD.Close;
     qDataWithOutCD.Open;     
    except
    end;
    try
       qCds.ApplyUpdates;
       qCDs.Close;
       qCDs.Open;

    except
    end;
    try
       qCDtypes.ApplyUpdates;
       qCDtypes.Close;
       qCDtypes.Open;
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
   qDataWithOutCD.CancelUpdates;
  except
  end;
  try
     qCds.CancelUpdates;
  except
  end;
  try
     qCDtypes.CancelUpdates;
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

procedure TfrmMain.miFindClick(Sender: TObject);
begin
{
 if pnlFind.Visible then
 begin
  pnlFind.Visible:=false;
  miFind.Caption:='ÔYéÍÄ îÏÅÍ';
  setDS(dm.dsCD,dm.qcd);
 end else
 begin
   pnlFind.Visible:=true;
   miFind.Caption:='ÔYéÍÄ êËÎyÑÅ';
   eValue.SetFocus;
 end; }
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
  with dm do
  begin
       if DirLevel = 0 then
       begin
         if not qCDtypes.Active then qCDtypes.Open;
         frmCDs.dbnav.BtnClick(nbInsert);
         frmCDs.Show;
       end else
       begin
         if not qDataWithOutCD.Active then qDataWithOutCD.Open;
         frmData.dbnav.BtnClick(nbInsert);
         qWork.Close;
         qWork.SQL.Text:='select * from cds where name="'+NameCD+'"';
         qWork.Open;
         frmData.cbCD.KeyValue:=qWork.fieldByName('id').asinteger;
         qWork.close;
         frmData.Show;
       end;
  end;
end;


procedure addChild(Parent:TTreeNode;
                   var tree:TTreeView;
                   glubina:integer;
                   text:string);
var first,tmp : TTreeNode;
    index:string;
begin
        First:=parent;

        tmp:=first;
        TMP:=tree.Items.AddChild (first, text);
{        if glubina=0 then
          begin
           tmp.ImageIndex:=CD_ICOn;;
           TMP.SelectedIndex:=CD_ICON;
          end;}

end;
//-------------


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
function GetDirFromQry(var qry: Tquery;numSlash:integer;param:string;var res:TMemo):TStrings;
var i,j:integer;
    i_s:integer;
    s,r:string;

begin
//  i_s:=0;
  r:='';
  while not qry.Eof do
  begin
   i_s:=0;
   s:=qry.fieldByName(param).AsString;
   i:=1;
   while i<= length(s) do
//   for i:=1 to length(s) do
   begin
      if s[i]='\' then
      begin
         inc(i_s);
         if i_s >= numSlash then
         begin
           res.Lines.add(r);
           r:='';
           break;
         end else inc(i);
         r:='';
      end;
      r:=r+s[i];
      inc(i);
   end;
           //check on file or dir   
   if r <> '' then
   begin
           r:=r+'[file]';
           res.Lines.add(r);
           r:='';
   end;
   qry.Next;
   end;
end;
///-------------------
procedure fillLVDir(var lv: TListView;res:TMemo);
var i,j,ii:integer;
    i_s:integer;
    s,r:string;
    dist:boolean;
begin
   lv.items.clear;;
   dist:=false;
   lv.Items.Add;
   lv.Items.Item[0].ImageIndex:=Open_icon;
   lv.Items.Item[0].Caption:='[..]';
   ii:=0;
   for i:=1 to res.lines.Count do
   begin
       dist:=false;
       for j:=0 to lv.Items.Count-1 do
        if res.Lines.Strings[i-1] = lv.Items.Item[j].Caption then
        begin
           dist:=true;
           break;
        end;
       if dist then continue;
       lv.Items.Add;
       inc(ii);
       if copy(res.Lines.Strings[i-1],length(res.Lines.Strings[i-1])-5,7)='[file]' then
       begin
         lv.Items.Item[ii].ImageIndex:=File_icon;
         r:=(res.Lines.Strings[i-1]);
         delete(r,length(r)-5,7);
         res.Lines.Strings[i-1]:=r;
       end else
       lv.Items.Item[ii].ImageIndex:=Closed_icon;
       lv.Items.Item[ii].Caption:=res.Lines.Strings[i-1];
       end;

end;
procedure  findLV(str:string; var lv: TListView);
var i:integer;
begin
  for i:=0 to lv.Items.Count-1 do
  begin
     if lv.Items.Item[i].Caption=str then
//        lv.Items.Item[i].Selected:=true;
        lv.Items.Item[i].Focused:=true;
  end;

end;
procedure TFrmMain.Click2Dot;
var s:string;
    i:integer;
    tmp:string;
begin
with dm do
      case dirlevel of
      1:
        begin
          fillLV_cd(lv);
          DirLevel:=0;
          tmp:=nameCD;
          ePath.Text:='>';
          NameCD:='';
          findLV(tmp,lv);
          exit;
        end;
      2:
        begin
          qData.CLose;
          qData.ParamByName('name').AsString:=NameCD;
          qdata.Open;
          ePath.Text:='>'+NameCD+':\';
          GetDirFromQry(qData,dirLevel-1,'path',mem);
          fillLVdir(lv,mem);
          dec(dirLevel);
          exit;
        end;
      else begin
        s:=ePath.Text;
        delete(s,length(s),1);
        for i:=length(s) downto 1 do
         if ePath.Text[i]='\' then break;

        s:=copy(s,0,i);
        qWork.Close;
        qWork.SQL.Text:='select * from data d inner join cds c on d.cd_id=c.id  '
                          +' where path like "'
                          + copy(s,length(NameCD)+4,length(ePath.Text)-length(NameCD)+3)+'%"'
                          +' and c.name="'+ NameCD + '"';
        //showmessage(qWork.SQL.Text);
        qWork.Open;

        GetDirFromQry(qWork,dirLevel-1,'path',mem);

        ePath.Text:=s;
        fillLVdir(lv,mem);
        dec(dirLevel);
        exit;
      end;

    end;//end [..]

end;
procedure TFRmMain.ClickDir_file;
begin
with dm do
begin
 if lv.Selected=nil then exit;
 if lv.Selected.ImageIndex=File_icon then
 begin
    miEdit.Click;
    exit;
 end;
// if lv.Selected.ImageIndex <> Closed_icon then exit;
//     showmessage(copy(ePath.Text,length(NameCD)+3,length(ePath.Text)-length(NameCD)+3));
     qWork.Close;
     qWork.SQL.Text:='select * from data d inner join cds c on d.cd_id=c.id  '
                        +' where path like "'
                        + copy(ePath.Text,length(NameCD)+4,length(ePath.Text)-length(NameCD)+3)+lv.Selected.Caption+'\%"'
                        +' and c.name="'+ NameCD + '"';
   //  showmessage(qWork.SQL.Text);
     qWork.Open;
     ePath.Text:=ePath.Text+lv.Selected.Caption+'\';
     GetDirFromQry(qWork,dirLevel+1,'path',mem);
     fillLVdir(lv,mem);
     inc(dirLevel);
end;
end;
///-------------------
procedure TfrmMain.lvDblClick(Sender: TObject);
var i:integer;
    s,tmpstr:string;

begin
    mem.Clear;
    tmpstr:='';
    if lv.Selected = nil then exit;
    with dm do
    begin
    if lv.Selected.Caption='[..]' then
    begin
     click2Dot;
     exit;
    end;// case
    if dirlevel=0 then
    begin
       qData.CLose;
       qData.ParamByName('name').AsString:=lv.Selected.Caption;
       qdata.Open;
       NameCD:=lv.Selected.Caption;
       ePath.Text:=ePath.Text+lv.Selected.Caption+':\';
       GetDirFromQry(qData,dirLevel+1,'path',mem);
       fillLVdir(lv,mem);
       inc(dirLevel);

    end else
    begin
      ClickDir_file;

    end;


    end;
end;
//***************
procedure TfrmMain.PopupMenuPopup(Sender: TObject);
begin
  if dirlevel=0 then
  begin
    miInsert.Caption:='ÄîDaòû CD';
    miEDit.Caption:='Ýäèò ÑD';
    miDEl.Caption:='ÇÍèùèòè CD';

  end else
  begin
    miInsert.Caption:='ÄîDaòû';
    miEDit.Caption:='Ýäèò';
    miDEl.Caption:='Çíèùèòè';
  end;
  miEdit.Enabled:=lv.Selected <> nil;
  miFillCD.visible:=dirlevel=0;
  miRefresh.Enabled:=dirlevel=0;  
  miFillCD.Enabled:=lv.Selected <> nil;
  miDEl.Enabled:=lv.Selected <> nil;

//  if (lv.Selected <> nil) and (dirlevel<>0) then
//    miRefresh.Enabled:=lv.Selected.ImageIndex=0;
end;

procedure TfrmMain.miEditClick(Sender: TObject);
var s: string;
begin
try
  if lv.Selected=nil then exit;
  if dirlevel=0 then
  with dm do
  begin
       qCds.Locate('name',lv.Selected.Caption,[]);
       if not qCDtypes.Active then qCDtypes.open;
       frmCds.Show;
       exit;
  end else
//  if lv.Selected.ImageIndex = File_ICON then
  with dm do
  begin
       s:=copy(Epath.Text,Length(NameCD)+4,length(Epath.Text));
       s:=s+lv.Selected.Caption;
       if not qDataWithOutCD.Active then qDataWithOutCD.open;
       qDataWithOutCD.Locate('path',s,[loPartialKey]);
       frmData.Show;
       exit;
  end; {else
  if lv.Selected.ImageIndex = Closed_ICON then
  with dm do
  begin
       s:=copy(Epath.Text,Length(NameCD)+4,length(Epath.Text));
       s:=s+lv.Selected.Caption;
       if not qDataWithOutCD.Active then qDataWithOutCD.open;
       qDataWithOutCD.Locate('path',s,[loPartialKey]);
       frmData.Show;
       exit;
  end;}


 except
   on E:Exception do
     messageDLG(E.Message,mtError,[mbOk],0);
 end;
end;
//----------------
procedure TfrmMain.mmiDataClick(Sender: TObject);
begin
   if not dm.qDataWithOutCD.Active then dm.qDataWithOutCD.Open;
    frmData.show;
end;
//************
procedure TfrmMain.mmiCDClick(Sender: TObject);
begin
  if not dm.qCDs.Active then dm.qCDs.Open;
  frmCDs.Show;
end;
//*******************
procedure TfrmMain.mmiTypesClick(Sender: TObject);
begin
  if not dm.qCDtypes.Active then dm.qCDtypes.Open;
  frmCDTypes.show;
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
procedure TfrmMain.miFillCDClick(Sender: TObject);
begin
  if lv.Selected=nil then exit;
  with dm do
  if dirlevel=0 then
  begin
         qWork.Close;
         qWork.SQL.Text:='select * from cds where name="'+lv.Selected.Caption+'"';
         qWork.Open;
         frmCreate.lcbCD_name.KeyValue:=qWork.fieldByName('id').asinteger;
         qWork.close;
         frmCreate.Show;
  end;
end;
//++++++++++++++++
procedure TfrmMain.miDelClick(Sender: TObject);
begin
  if lv.Selected = nil then exit;
  with dm do
  if dirlevel=0 then
  begin
       qCds.Locate('name',lv.Selected.Caption,[]);
       frmCDs.btnDEL.Click;
  end;
end;
procedure TfrmMain.FindLocate(txt:string);
var i,j:integer;
   b:integer;
begin
with dm do
try
  try
  lv.Cursor:=crHourGlass;
//   anim.Active:=true;
  frmFindF3.Top:=frmMain.Top+frmMain.Height-39;
  frmFindF3.Left:=FrmMain.Left+13;
  frmFindF3.showModal;
  b:=0;

  for i:=0 to lv.Items.Count-1 do
  begin
    if frmFindF3.existValue then
    for j:=1 to length(frmFindF3.value) do
      if lv.Items.Item[i].Caption[j] = frmFindF3.value[j] then
      begin
        if lv.Items.Item[i].Caption[j-1] = frmFindF3.value[j-1] then
         inc(b) else b:=0;
//        lv.Items.Item[i].Selected:=true;
      end;
       if b>0 then
        if (i <> lv.Items.Count) and (i <>0)
                then lv.Items.Item[i-1].Selected:=true;
  end;

  finally
     lv.Cursor:=crDefault;
//       Anim.Active:=false;
   end;
//   fuck
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;


end;
procedure TfrmMain.lvKeyPress(Sender: TObject; var Key: Char);
const c: set of  char = ['A'..'Z','a'..'z','0'..'9','À'..'ß','à'..'ÿ'];
begin
     if key in c then
     begin
       frmFindF3.eValue.Text:=key;
       FindLocate(key);
       exit;
     end else

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


end;

end.

