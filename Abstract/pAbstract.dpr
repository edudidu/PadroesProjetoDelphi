program pAbstract;

uses
  Vcl.Forms,
  ModelPessoa in 'ModelPessoa.pas' {Form1},
  Model.interfaces in 'Model.interfaces.pas',
  Model.Pessoa in 'Model.Pessoa.pas',
  Model.NotaFiscal in 'Model.NotaFiscal.pas',
  Model.Factory in 'Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
