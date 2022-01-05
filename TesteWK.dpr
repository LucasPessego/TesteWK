program TesteWK;

uses
  Vcl.Forms,
  TesteTecnico in 'TesteTecnico.pas' {Form1},
  DMTesteTecnico in 'DMTesteTecnico.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
