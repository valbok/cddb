unit unFindF3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmFindF3 = class(TForm)
    pnlMain: TPanel;
    Label1: TLabel;
    eValue: TEdit;
    procedure eValueKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    existValue:boolean;
    value:string;
  end;

var
  frmFindF3: TfrmFindF3;

implementation

{$R *.dfm}

procedure TfrmFindF3.eValueKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
 begin
  existvalue := false;
  close;
 end else
if key = #13 then
begin
  value := eValue.text;
  existValue := true;
  close;
end;
end;
end.
