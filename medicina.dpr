program medicina;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form2} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Polar Dark');
  Application.CreateForm(TForm2, Form2);
  Application.Run;

end.
