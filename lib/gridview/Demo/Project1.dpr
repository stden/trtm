program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DBGrids in '\Program Files\Borland\Delphi 2.0\Source\VCL\DBGRIDS.PAS';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
