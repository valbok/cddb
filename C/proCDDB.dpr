program proCDDB;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unOpenFile in 'unOpenFile.pas',
  unCreate in 'unCreate.pas' {frmCreate},
  unCDs in 'unCDs.pas' {frmCDs},
  unData in 'unData.pas' {frmData},
  unCDTypes in 'unCDTypes.pas' {frmCDTypes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCreate, frmCreate);
  Application.CreateForm(TfrmCDs, frmCDs);
  Application.CreateForm(TfrmData, frmData);
  Application.CreateForm(TfrmCDTypes, frmCDTypes);
  Application.Run;
end.
