unit unData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TfrmData = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eId: TDBEdit;
    ePath: TDBEdit;
    memComments: TDBMemo;
    cbCD: TDBLookupComboBox;
    dbnav: TDBNavigator;
    eTheDate: TDBEdit;
    Label5: TLabel;
    btnExit: TBitBtn;
    btnDEL: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDELClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure DEl_DATA(id:integer;name:string);    
  end;

var
  frmData: TfrmData;

implementation
uses undm;
{$R *.dfm}

procedure TfrmData.FormActivate(Sender: TObject);
begin
  ePath.SetFocus;
end;

procedure TfrmData.btnExitClick(Sender: TObject);
begin
  close;
end;
procedure TfrmData.DEl_DATA(id:integer;name:string);
begin
 if messageDlg('Впевнен що треба знищити file="'+name+'"?',mtConfirmation,[mBYes,mbNo],0)=mrno then exit;
 with dm do
 begin
     qDElData.ParamByName('id').AsInteger:=id;
     qDElData.ExecSQL;
     showmessage('0K!');
 end;

end;
//-------------
procedure TfrmData.btnDELClick(Sender: TObject);
begin
 if eid.Text = emptyStr then exit;
  DEl_DATA(StrToInt(eid.text),ePath.Text);
end;

end.
