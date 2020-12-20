program FMXFPS;



{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms, FMX.Types,
  uMain in 'uMain.pas' {fMain},
  uGameUtils in 'uGameUtils.pas';

{$R *.res}

begin
  {$IFDEF MACOS}
    GlobalUseMetal := True;
  {$ENDIF}
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Landscape];
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
