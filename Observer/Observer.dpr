program Observer;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Observer.Model.Interfaces in 'Observer.Model.Interfaces.pas',
  Observer.Model.Observer in 'Observer.Model.Observer.pas',
  Observer.Model.Pedido in 'Observer.Model.Pedido.pas',
  Observer.Model.Cozinha in 'Observer.Model.Cozinha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
