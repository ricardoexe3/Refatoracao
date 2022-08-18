program ProjRefatoracao;

uses
  Vcl.Forms,
  Refatoracao.View.Main in 'View\Refatoracao.View.Main.pas' {FrmMain},
  uRefatoracao.Controller.Refatorar in 'Controller\uRefatoracao.Controller.Refatorar.pas',
  uRefatoracao.Interfaces.Controller in 'Controller\uRefatoracao.Interfaces.Controller.pas',
  uRefatoracao.Interfaces.Model in 'Model\uRefatoracao.Interfaces.Model.pas',
  uRefatoracao.Model.Refatorar in 'Model\uRefatoracao.Model.Refatorar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
