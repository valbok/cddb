unit unCDs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons,DBTables;

type
  TfrmCDs = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    eId: TDBEdit;
    eName: TDBEdit;
    memComments: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbType: TDBLookupComboBox;
    Label4: TLabel;
    dbnav: TDBNavigator;
    btnDEL: TBitBtn;
    btnExit: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnDELClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DEl_CD(cd_id:integer;name:string);
  end;

var
  frmCDs: TfrmCDs;

implementation
uses undm;
{$R *.dfm}
procedure TfrmCds.DEl_CD(cd_id:integer;name:string);
begin
 if messageDlg('Впевнен що треба знищити СД="'+name+'"?',mtConfirmation,[mBYes,mbNo],0)=mrno then exit;
 with dm do
 begin
   qDel_Data_by_cd_id.ParamByName('cd_id').AsInteger:=cd_id;
   qDel_Data_by_cd_id.ExecSQL;
   qDEl_cd.ParamByName('cd_id').AsInteger:=cd_id;
   qDEl_cd.ExecSQL;
   showmessage('0K!');
 end;

end;
procedure TfrmCDs.FormActivate(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfrmCDs.btnDELClick(Sender: TObject);
begin
 if eid.Text = emptyStr then exit;
 DEl_CD(StrToInt(eid.text),eName.Text);
end;

procedure TfrmCDs.btnExitClick(Sender: TObject);
begin
  close;
end;

end.
