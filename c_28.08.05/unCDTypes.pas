unit unCDTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmCDTypes = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    eId: TDBEdit;
    eName: TDBEdit;
    dbnav: TDBNavigator;
    grid: TDBGrid;
    btnExit: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCDTypes: TfrmCDTypes;

implementation
uses unDm;
{$R *.dfm}

procedure TfrmCDTypes.FormActivate(Sender: TObject);
begin
  eName.SetFocus;
end;

procedure TfrmCDTypes.btnExitClick(Sender: TObject);
begin
  close;
end;

end.
