program TMSWeb;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uNotaFiscal in 'uNotaFiscal.pas',
  uEmitente in 'uEmitente.pas',
  uItem in 'uItem.pas',
  ConnectionModule in 'ConnectionModule.pas' {SQLiteConnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSQLiteConnection, SQLiteConnection);
  Application.Run;
end.
