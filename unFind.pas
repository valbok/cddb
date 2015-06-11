unit unFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    PanelMain: TPanel;
    PanelTop: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gbElem: TGroupBox;
    Label4: TLabel;
    edtValue: TEdit;
    btnPoisk: TBitBtn;
    gridFind: TDBGrid;
    BitBtn1: TBitBtn;
    anim: TAnimate;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 CLose;
end;

end.
