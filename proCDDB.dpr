program proCDDB;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unOpenFile in 'unOpenFile.pas',
  unCreate in 'unCreate.pas' {frmCreate},
  unCDs in 'unCDs.pas' {frmCDs},
  unData in 'unData.pas' {frmData},
  unTypes in 'unTypes.pas' {frmTypes},
  unFindF3 in 'unFindF3.pas' {frmFindF3},
  unFind in 'unFind.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCreate, frmCreate);
  Application.CreateForm(TfrmCDs, frmCDs);
  Application.CreateForm(TfrmData, frmData);
  Application.CreateForm(TfrmTypes, frmTypes);
  Application.CreateForm(TfrmFindF3, frmFindF3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
