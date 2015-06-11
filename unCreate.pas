unit unCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, Buttons, Gauges,
  Menus, DBCtrls,DBTables;
type TPath = record
               value: string;
               path: string;
               typeOfFile: string;
              end;
type TArrayOfPath = array of TPath;
type
  TfrmCreate = class(TForm)
    pnlMain: TPanel;
    PageControl: TPageControl;
    tabSFind: TTabSheet;
    btnOPenLinkInfo: TBitBtn;
    pnlMPC: TPanel;
    StatusBarText: TStatusBar;
    pnlLeft: TPanel;
    Label1: TLabel;
    Procent: TGauge;
    lbDrive: TListBox;
    leMask: TLabeledEdit;
    btnFindFiles: TBitBtn;
    listB: TListBox;
    sbSave: TSpeedButton;
    StatusBarPath: TStatusBar;
    eRoot: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFindFilesClick(Sender: TObject);
    procedure FindFiles(Path:string);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);

  private
    _path: string;
    _path_id: string;
    _parent_id: integer;

    { Private declarations }

  public
    procedure setPath(value: string);
    procedure setPath_id(value: string);
    procedure setParent_id(value: integer);
    procedure saveInDB( path:string; _parent_id:integer );
    function split( glue:char; str: string ):TArrayOfPath;
    function GetCountOf( what: char; str: string ):integer;            
    property path:string read _path write setPath;
    property path_id:string read _path_id write setPath_id;
    property parent_id:integer read _parent_id write setParent_id;    
    { Public declarations }
  end;

var
  frmCreate: TfrmCreate;
  Maska:string = '*.*';
  cancel:boolean=false;
implementation
uses unDM,unOpenFile;
{$R *.dfm}

procedure TfrmCreate.setParent_id(value: integer);
begin
  _parent_id:=value;
end;
//----------------
procedure TfrmCreate.setpath(value: string);
begin
  _path:=value;
end;
//----------------
procedure TfrmCreate.setpath_id(value: string);
begin
  _path_id:=value;
end;
//----------------
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
//------------------
procedure TfrmCreate.btnFindFilesClick(Sender: TObject);
var i,countSelectedDrive:integer;
begin
try
  try
       ListB.Cursor := crHourGlass;
       listB.Clear;
       countSelectedDrive := 0;
       maska := leMask.Text;
       if maska = EmptyStr then exit;
       for i:=0 to lbDrive.Count-1 do
         if lbDrive.Selected[i] then
           begin
            ListB.Items.Add( '-------- <['+copy(lbDrive.Items.Strings[i],0,3)+']> --------' );
            findFiles( copy( lbDrive.Items.Strings[i], 0, 3 ) );
            inc( countSelectedDrive );
           end;
       if countSelectedDrive > 0 then
         StatusBarText.Panels[0].Text:='> К0унт всех фалов: '+intToStr( ListB.Count-countSelectedDrive );
   finally
     ListB.Cursor := crDefault;
   end;
except
  on E:Exception do
    messageDLG( E.Message, mtError, [mbOk], 0 );
end;
end;
//-----------
function GetDirName(dir:String):string;
begin
  if Dir[LEngth(Dir)]<>'\' then
     result:=dir+'\'
  else
     result:=Dir;
end;
//----------
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
              StatusBarText.Panels[0].Text:='> '+path+DsearchRec.name;
              StatusbArText.Refresh;
    end;
  Finally
    findClose(FsearchRec);
  end;
end;
//----
function TfrmCreate.GetCountOf( what: char; str: string ):integer;
var i: integer;
begin
 result := 0;
 for i:=0 to length(str)-1 do
    if str[i] = what then
      inc( result);
end;
//++++
function TfrmCreate.split( glue:char; str: string ):TArrayOfPath;
var i,countOfGlue,c,lenStr: integer;
    resArray: TArrayOfPath;
    tmpStr: string;
begin
  tmpStr := '';
  countOfGlue := GetCountOf( glue, str);
  setLength( resArray, countOfGlue );
//  showmessage(  intToStr(countOfglue) );
  c := 0;
  lenStr := length( str );
  for i:=length( str ) downto 3 do
  begin
     if str[i] = glue then
     begin
         with resArray[ c ] do
         begin
          path := copy( str,1, lenStr - length( tmpStr ) ) + tmpStr;
          path := copy( path, 4, length( path ) );
          lenStr := lenStr - length( tmpStr );
          value := tmpStr;
          if c = 0 then
            typeOfFile := 'FILE'
          else
            typeOfFile := 'FOLDER';
         end;
         inc( c );
         tmpStr := '';
     end;
     tmpStr := str[i] + tmpStr;
  end;
  result := resArray;
end;
//-----------------
procedure TfrmCreate.saveInDB( path:string; _parent_id:integer );
var i, type_id:integer;
    arrayPath : TArrayOfPAth;
    v_parent_id: integer;
begin
 try
  try
  arrayPath := split( '\', path );
  v_parent_id := _parent_id;
  with dm do
  for i := length( arrayPath ) - 1 downto 0 do
  begin
      qFetchDataByName.close;
      qFetchDataByName.ParamByName( 'name' ).AsString := arrayPath[ i ].value;
      qFetchDataByName.ParamByName( 'parent_id' ).AsInteger := v_parent_id;
      qFetchDataByName.Open;
      if qFetchDataByName.Eof then
      begin
          qInsertIntoData.ParamByName( 'name' ).AsString := arrayPath[ i ].value;
          qInsertIntoData.ParamByName( 'path' ).AsString := eRoot.Text + '\' + arrayPath[ i ].path;
          qInsertIntoData.ParamByName( 'parent_id' ).AsInteger := v_parent_id;
          qInsertIntoData.ParamByName( 'comments' ).AsString := '';
          type_id := 0;
          qFetchTypesByName.Close;
          qFetchTypesByName.ParamByName( 'name' ).AsString := arrayPath[ i ].typeOfFile;
          qFetchTypesByName.Open;
          // Insert into Types
          if qFetchTypesByName.Eof then
          begin
              qInsertIntoTypes.ParamByName( 'name' ).AsString := arrayPath[ i ].typeOfFile;
              qInsertIntoTypes.ParamByName( 'thedate' ).AsDateTime := date;
              qInsertIntoTypes.ExecSQL;
              qFetchTypesByName.Close;
              qFetchTypesByName.ParamByName( 'name' ).AsString := arrayPath[ i ].typeOfFile;
              qFetchTypesByName.Open;
              if not qFetchTypesByName.Eof then
                type_id := qFetchTypesByName.fieldByName( 'id' ).AsInteger;              
          end
          else
          begin
              type_id := qFetchTypesByName.fieldByName( 'id' ).AsInteger;
          end;
          qInsertIntoData.ParamByName( 'type_id' ).AsInteger := type_id;
          qInsertIntoData.ParamByName( 'thedate' ).AsDateTime := date;
          qInsertIntoData.ExecSQL;
          // select Parent_id
          qFetchDataByName.close;
          qFetchDataByName.ParamByName( 'name' ).AsString := arrayPath[ i ].value;
          qFetchDataByName.ParamByName( 'parent_id' ).AsInteger := v_parent_id;
          qFetchDataByName.Open;
          if not qFetchDataByName.Eof then
            v_parent_id := qFetchDataByName.FieldByName( 'id' ).AsInteger;
      end else
        v_parent_id := qFetchDataByName.FieldByName( 'id' ).AsInteger;
   end;
   finally
   end;
 except
  on E:Exception do
    messageDLG( E.Message, mtError, [mbOk], 0 );
 end;
end;
//++++++++++++
procedure TfrmCreate.sbSaveClick(Sender: TObject);
var i,countSaved: integer;
begin
 with dm do
 try
  try
   if messageDLG('Ты, фака, уверен чТо желАЕШЬ с0хранить ФУйлы в ДБ?',mtConfirmation,[mbYes,mbNo],0)= mrNo
     then exit;
{   if eRoot.Text= emptySTR then
   begin
        showmessage('Выбрать r00t, быстро!!!!');
        exit;
   end; }
   if listB.Items.Text = emptySTR then exit;
   ListB.Cursor := crHourGlass;
   Procent.Visible := true;
   Procent.Progress := 0;
   countSaved := 0;
   cancel := false;
//   _parent_id := 0;
//   cbDelete.Enabled:=false;
//   if cbDelete.Checked then
//     qdeleteAll.ExecSQL;

     for i:=0 to ListB.Count-1 do
      if copy( ListB.Items.Strings[i], 0, 1 ) <> '-' then
      begin
          saveInDB( listB.Items.Strings[i], _parent_id );
          inc( CountSaved );
          procent.Progress := trunc( ( i/listB.Count ) * 100 );
          StatusBarPath.Panels[0].Text := '> SаVЕ: ' + ListB.Items.Strings[i];
          StatusBarPath.Refresh;
      end;
   Procent.Progress := 100;
   Procent.Visible := false;
   StatusBarText.Panels[0].Text := '> КоYнт засэйвенNых: ' + intToStr( countSaved );
   StatusBarPath.Panels[0].Text := '';
   finally
     ListB.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;
end;
//--------------------
procedure TfrmCreate.sbCancelClick(Sender: TObject);
begin
  cancel:=true;
end;
//--------------------
procedure TfrmCreate.miCancelClick(Sender: TObject);
begin
  cancel:=true;
end;
end.
