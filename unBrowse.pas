unit unBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus;

type
  TfrmBrowse = class(TForm)
    Panel1: TPanel;
    pnlMain2: TPanel;
    PageControl1: TPageControl;
    ts2: TTabSheet;
    lv: TListView;
    pnlTop: TPanel;
    ePath: TEdit;
    btnExit: TBitBtn;
    PopupMenu1: TPopupMenu;
    miGet: TMenuItem;
    procedure btnExitClick(Sender: TObject);
    procedure lvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miGetClick(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
    result:integer;
  end;

var
  frmBrowse: TfrmBrowse;

implementation

uses unDM, unMain;

{$R *.dfm}

procedure TfrmBrowse.btnExitClick(Sender: TObject);
begin
 close;
end;

procedure TfrmBrowse.lvDblClick(Sender: TObject);
var i:integer;
begin
    if lv.Selected = nil then exit;
    with dm do
    begin
        if lv.Selected.Caption='[..]' then
        begin
//           frmMain.fillLV( parent_id, lv, qData );
           exit;
        end;
    end;
end;

procedure TfrmBrowse.FormShow(Sender: TObject);
begin
with dm do
  try
//     frmMain.fillLV( 0, lv, qData,LastDirLevel );
  except
    on E:Exception do
    begin
        messageDLG( E.Message, mtError, [mbOk], 0 );
    end;
  end;
end;
procedure TfrmBrowse.miGetClick(Sender: TObject);
begin
//  result :=1;
   exit;
end;

end.

