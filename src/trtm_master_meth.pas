unit trtm_master_meth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTRTMMasterMethods = class(TForm)
    MemoTRTMMasterMethods: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTRTMMasterMethods: TFormTRTMMasterMethods;

implementation

uses trtm_gui;

{$R *.DFM}

procedure TFormTRTMMasterMethods.FormCreate(Sender: TObject);
begin
  if ( FormTRTM <> nil ) then
  begin
    MemoTRTMMasterMethods.Text := FormTRTM.RichEditAllMethods.Text;
  end;
end;

end.
