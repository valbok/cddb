unit unPass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPass = class(TForm)
    pnlMain: TPanel;
    pnlunderMain: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cbLogin: TComboBox;
    ePass: TEdit;
    btnEnter: TBitBtn;
    btnCancel: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    UserName,Password:string;
  end;
function GetLoginParams: Boolean;
var
  frmPass: TfrmPass;
  users :string='';  
const
  fileName='config.ini';
  users_l='users="';
implementation
uses unMain,unDm,unOpenFile, IBDatabase;
{$R *.dfm}

function GetLoginParams: Boolean;
var
  frmPass: TfrmPass;
begin
  Result := False;
  frmPass := TfrmPass.Create(Application);
  try
  if frmPass.ShowModal = mrOk then
    begin
      with dm.db do
      begin
            Params.Clear;
            Params.Add('USER_NAME='+frmPass.cbLogin.Text);
            Params.Add('PASSWORD='+frmPass.ePass.Text);
//            Params.Add('SERVER_NAME='+frmMain.host);
            DatabaseName:=frmMain.host+frmMain.pathToDb;
            Open;

      end;
      Result := True;
    end;
  finally
    frmPass.Free;
  end;
end;

procedure TfrmPass.FormCreate(Sender: TObject);
var f:Tfile;
p:integer;
begin
  with frmMain do
  begin
      if MainopenFile(filename,f) then
          begin
           find(f,users_l,p,filepos(f));
           users:=getPath(f,p+7);
           CloseFile(f);
          end;
  end;
//  showmessage(users);
  cbLogin.Items.CommaText:=users;
  cbLogin.Text:=cbLogin.Items.Strings[cbLogin.Items.Count-1];
end;

procedure TfrmPass.FormDestroy(Sender: TObject);
var     f:Tfile;
        p:integer;
        s,i:integer;
begin
      if MainOpenFile(filename,f) then
          begin
            find(f,users_l,p,filepos(f));
            seek(f,p+7);
            for i:=1 to length(cbLogin.Items.CommaText) do
            begin
              s:=ord(cbLogin.Items.CommaText[i]);
              Write(f,s);
            end;
              s:=ord('"');
              Write(f,s);
           CloseFile(f);
          end;


end;

procedure TfrmPass.btnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPass.FormActivate(Sender: TObject);
begin
  ePass.SetFocus;
end;

end.
