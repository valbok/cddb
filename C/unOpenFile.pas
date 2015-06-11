unit unOpenFile;

interface
uses
   SysUtils,dialogs;

type tfile = file of byte;
        function OpenFile(const FileName:string;var f1: tfile):boolean;
        function mainOpenFile(const FileName:string;var f1: tfile):boolean;
        function find(var F1:Tfile;Str:string;var pos: integer;CurrentPos:integer):boolean;
        function getPath(var f1:tfile;Ind1:integer):string;
        function getfileName(Path:string):string;                
implementation

function OpenFile(const FileName:string;var f1: tfile):boolean;
begin
  result:=false;
try
  if not FileExists(FileName)
     then
       begin
          messageDlg('���� '''+filename+''' �� ������',mtError,[mbOk],0);
          exit;
        end;
  assign(F1,FileName);

  Reset(f1);
except
 messageDlg('���������� ������� ����'''+filename+'''',mtError,[mbOk],0);
 exit;
end;
  result:=true;
end;

function mainOpenFile(const FileName:string;var f1: tfile):boolean;
begin
  result:=openFile(Filename,f1);
end;
function find(var F1:Tfile;Str:string;var pos: integer;CurrentPos:integer):boolean;
var i,len,j: integer;
Schar:byte;
begin
 result:=false;
   len:=Length(Str);
   i:=CurrentPos;
   j:=1;
   while not eof(f1) do
   begin
     Seek(f1,i);
     read(f1,sChar);
      if str[j]= chr(sChar) then
       begin
        inc(j);
       end else j:=1;
     inc(i);
     if j=len then
        begin
         result:=true;
         pos:=FilePos(f1)-Len+1;
         exit;
        end;

   end;
end;
/////
function getPath(var f1:tfile;Ind1:integer):string;
var i: integer;
    st:byte;
begin
       i:=ind1;
       repeat
           seek(f1,i);
           read(f1,st);
           result:=result+chr(st);
           inc(i);
      until chr(st) = '"' ;
 delete(result,length(result),1);
end;
function getfileName(Path:string):string;
var i: integer;
begin
  result:='';
  for i:=length(path) downto 1 do
  begin
    if path[i]='\' then break;
    result:=path[i]+result;
  end;
end;
////////////////////**/
{function CopyBlock(var f1:tfile;Ind1:integer;Count:integer):string;
var i:integer;
    st:byte;
begin
 result:='';
   for i:=ind1 to ind1+Count do
     begin
        {$I-}
//       seek(f1,i);
//       read(f1,st);
         {$I+}
//         if IOResult<>0 then exit;
{       if st <> 0 then
        result:=result+chr(st);
     end;
end;}

end.
