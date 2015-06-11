unit unCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, Buttons, Gauges,
  Menus, DBCtrls;

type
  TfrmCreate = class(TForm)
    pnlMain: TPanel;
    PageControl: TPageControl;
    tabSFind: TTabSheet;
    btnOPenLinkInfo: TBitBtn;
    pnlMPC: TPanel;
    SBar: TStatusBar;
    pnlLeft: TPanel;
    Label1: TLabel;
    Procent: TGauge;
    lbDrive: TListBox;
    leMask: TLabeledEdit;
    btnFindFiles: TBitBtn;
    listB: TListBox;
    sbSave: TSpeedButton;
    PopupMenu: TPopupMenu;
    miCancel: TMenuItem;
    cbDelete: TCheckBox;
    lcbCD_name: TDBLookupComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFindFilesClick(Sender: TObject);
    procedure FindFiles(Path:string);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCreate: TfrmCreate;
  Maska:string = '*.*';
  cancel:boolean=false;  
implementation
uses unDM,unOpenFile;
{$R *.dfm}

procedure TfrmCreate.FormCreate(Sender: TObject);
var i:integer;
    c:string;
    Dtype:Integer;
    DriveString:string;
begin
    for i:=65 to 90 do
    begin
       c:=chr(i)+':\';
       dtype:=GetDriveType(pChar(c));
        case Dtype of
          0:DriveString:=C+' The drive type cannot be determined.';
          1:DriveString:=C+' The root dir does not exists';
          Drive_Removable: Drivestring:=C+' <Флоппи>';
          Drive_fixed:     Drivestring:=C+' <Фиксед>';
          Drive_remote:    Drivestring:=C+' <Нетворк>';
          Drive_CDROM:     Drivestring:=C+' <СД-РOM>';
          Drive_Ramdisk:   Drivestring:=C+' <Рам дisk>';
        end;
     if not ((Dtype=0) or (Dtype =1)) then
         lbDrive.Items.AddObject(DriveString,Pointer(i));
    end;


end;

procedure TfrmCreate.btnFindFilesClick(Sender: TObject);
var i,countSelectedDrive:integer;

begin
try
  try
       ListB.Cursor:=crHourGlass;
       listB.Clear;
       countSelectedDrive:=0;
       Maska:=leMask.Text;
        for i:=0 to lbDrive.Count-1 do
         if lbDrive.Selected[i] then
           begin
            ListB.Items.Add('-------- <['+copy(lbDrive.Items.Strings[i],0,3)+']> --------');
            findFiles(copy(lbDrive.Items.Strings[i],0,3));
            inc(countSelectedDrive);
           end;
if countSelectedDrive> 0 then
  SBar.Panels[0].Text:='> К0унт всех фалов: '+intToStr(ListB.Count-countSelectedDrive);
finally
     ListB.Cursor:=crDefault;

 end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;
end;
function GetDirName(dir:String):string;
begin
  if Dir[LEngth(Dir)]<>'\' then
       result:=dir+'\'
     else
       result:=Dir;
end;
procedure TfrmCreate.FindFiles(Path:string);
var FsearchRec,DsearchRec:TsearchRec;
    FindResult:integer;
 function  IsDirNotation(ADirName:string):Boolean;
 begin
     result:=(AdirName ='.') or (AdirName='..');
 end;
begin
  Path:=GetDirName(Path);
  FindResult:=FindFirst(Path+maska,faAnyFile+faHidden+faSysFile+faReadOnly,FsearchRec);
  try
    while FindResult = 0 do
    begin
        listB.Items.Add(LowerCAse(Path+FsearchRec.Name));
        FindREsult:=findNext(FsearchRec);
    end;

    FindResult:=FindFirst(Path+'*.*',faDirectory,DSearchRec);
    while FindResult = 0 do
    begin
        If ((DsearchRec.Attr and faDirectory) =faDirectory) and not
          IsDirNotation(DSearchRec.Name)
              then
               findFiles(Path+DsearchRec.name);//recursiya
              findResult:=findNext(DsearchRec);
              SBar.Panels[0].Text:='> '+path+DsearchRec.name;
              SbAr.Refresh;

    end;
  Finally
  findClose(FsearchRec);
  end;
end;

procedure TfrmCreate.sbSaveClick(Sender: TObject);
var i,countSaved: integer;
begin
 with dm do
 try
  try
{

   if messageDLG('Ты, фака, уверен чТо желАЕШЬ с0хранить всЕ ФУйлы в ДБ?',mtConfirmation,[mbYes,mbNo],0)= mrNo
     then exit;
if lcbCD_name.Text= emptySTR then
  begin
   showmessage('Выбрать СД, быстро!!!!');
   exit;
  end;
   if listB.Items.Text= emptySTR then exit;
   ListB.Cursor:=crHourGlass;
   Procent.Visible:=true;
   Procent.Progress:=0;
   countSaved:=0;
   cancel:=false;

   cbDelete.Enabled:=false;
   if cbDelete.Checked then
     qdeleteAll.ExecSQL;

     for i:=0 to ListB.Count-1 do
      if copy(ListB.Items.Strings[i],0,1) <> '-' then
      begin
        qInsertIntoCD.ParamByName('filename').AsString:=GetFileName(listB.Items.Strings[i]);
        qInsertIntoCD.ParamByName('path').AsString:=listB.Items.Strings[i];
        qInsertIntoCD.ParamByName('comments').AsString:='';
        qInsertIntoCD.ParamByName('thedate').AsString:=dateToStr(date);
        qInsertIntoCD.ParamByName('cd_id').AsInteger:=lcbCD_name.KeyValue;        
        qInsertIntoCD.ExecSQL;
        inc(CountSaved);
        Procent.Progress:=trunc((i/listB.Count)*100);
        sbar.Panels[0].Text:='> СаVЕ: '+ListB.Items.Strings[i];
        sBar.Refresh;
        if Cancel then
         begin
           messagedlg('Юзер оTкансился!',mtInformation,[mbOk],0);
           break;
         end;
      end;
   Procent.Progress:=100;
   Procent.Visible:=false;
   sbar.Panels[0].Text:='> КоYнт засэйвенNых: '+intToStr(countSaved);
   if cancel then
     sbar.Panels[0].Text:=sbar.Panels[0].Text+'; Юзер оTкансился';
        }

   finally
     ListB.Cursor:=crDefault;
     cbDelete.Enabled:=true;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;
    
end;

procedure TfrmCreate.sbCancelClick(Sender: TObject);
begin
  cancel:=true;
end;

procedure TfrmCreate.miCancelClick(Sender: TObject);
begin
  cancel:=true;
end;

procedure TfrmCreate.FormActivate(Sender: TObject);
begin
  if not dm.qCDs.Active then
    dm.qCDs.Active:=true;
end;

end.
