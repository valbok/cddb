unit unCDTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls;

type
  TfrmCDTypes = class(TForm)
    pnlMain: TPanel;
    gbMain: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    eId: TDBEdit;
    eName: TDBEdit;
    dbnav: TDBNavigator;
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

end.
