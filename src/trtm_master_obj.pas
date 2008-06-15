unit trtm_master_obj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormTRTMMasterObjects = class(TForm)
    ListBoxTRTMObjects: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTRTMMasterObjects: TFormTRTMMasterObjects;

implementation

uses trtm_gui;

{$R *.DFM}

procedure TFormTRTMMasterObjects.FormCreate(Sender: TObject);
begin
  if ( FormTRTM <> nil ) then
  begin
    ListBoxTRTMObjects.Items := FormTRTM.ListBoxObjects.Items;
  end;
end;

end.
