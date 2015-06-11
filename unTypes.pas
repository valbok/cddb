unit unTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmTypes = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    eId: TDBEdit;
    eName: TDBEdit;
    dbnav: TDBNavigator;
    grid: TDBGrid;
    btnExit: TBitBtn;
    memComments: TDBMemo;
    eDate: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTypes: TfrmTypes;

implementation
uses unDm;
{$R *.dfm}

procedure TfrmTypes.FormActivate(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfrmTypes.btnExitClick(Sender: TObject);
begin
  close;
end;

end.
