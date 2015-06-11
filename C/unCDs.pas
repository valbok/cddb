unit unCDs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCDs: TfrmCDs;

implementation
uses undm;
{$R *.dfm}

end.
