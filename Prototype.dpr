program Prototype;

uses
  Vcl.Forms,
  Prototype.view.principal in 'Prototype.view.principal.pas' {Form1},
  Prototype.Model.Itens in 'Prototype.Model.Itens.pas',
  Prototype.Model.Interfaces in 'Prototype.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
