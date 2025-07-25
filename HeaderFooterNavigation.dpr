program HeaderFooterNavigation;

uses
  System.StartUpCopy,
  FMX.Forms,
  HeaderFooterFormwithNavigation in 'HeaderFooterFormwithNavigation.pas' {TDLMD},
  uTarefaCard in 'class\uTarefaCard.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTDLMD, TDLMD);
  Application.Run;
end.
