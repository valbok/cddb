unit unData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, Grids, DBGrids,
  ComCtrls;

type
  TfrmData = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eId: TDBEdit;
    eName: TDBEdit;
    memComments: TDBMemo;
    cbTypes: TDBLookupComboBox;
    dbnav: TDBNavigator;
    eTheDate: TDBEdit;
    Label5: TLabel;
    btnExit: TBitBtn;
    btnDEL: TBitBtn;
    grid: TDBGrid;
    eParent_id: TDBEdit;
    Label7: TLabel;
    StatusBar: TStatusBar;
    ePath: TDBEdit;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnDELClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eNameExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure DEl_DATA(id:integer; path: string);    
  end;

var
  frmData: TfrmData;

implementation
uses undm;
{$R *.dfm}

procedure TfrmData.FormActivate(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfrmData.btnExitClick(Sender: TObject);
begin
  close;
end;
procedure TfrmData.DEl_DATA(id:integer; path: string);
begin
 if messageDlg('Впевнен що треба знищити file="'+path+'"?',mtConfirmation,[mBYes,mbNo],0)=mrno then exit;
 with dm do
 begin
     qDElData.ParamByName('id').AsInteger := id;
     qDElData.ExecSQL;
     if path <> EmptyStr then
     begin
       qDelDataByPath.ParamByName('path').AsString := path + '%';
       qDelDataByPath.ExecSQL;
     end;
 end;

end;
//-------------
procedure TfrmData.btnDELClick(Sender: TObject);
begin
 if eid.Text = emptyStr then exit;
   del_data( StrToInt( eid.text ),ePath.Text );
end;

procedure TfrmData.FormShow(Sender: TObject);
begin
    if not dm.qTypes.Active then dm.qTypes.Open;
end;

procedure TfrmData.eNameExit(Sender: TObject);
begin
  ePath.Text :=  ePath.Text + '\' + eName.Text;
end;

end.
