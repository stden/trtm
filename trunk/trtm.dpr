program trtm;

uses
  Forms,
  trtm_gui in 'src\trtm_gui.pas' {FormTRTM},
  trtm_main in 'src\trtm_main.pas',
  trtm_types in 'src\trtm_types.pas',
  trtm_table in 'src\trtm_table.pas',
  trtm_lng in 'src\trtm_lng.pas',
  trtm_master_obj in 'src\trtm_master_obj.pas' {FormTRTMMasterObjects},
  trtm_master in 'src\trtm_master.pas' {FormTRTMMaster},
  trtm_master_lng in 'src\trtm_master_lng.pas',
  trtm_master_meth in 'src\trtm_master_meth.pas' {FormTRTMMasterMethods};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'вавЬ';
  Application.CreateForm(TFormTRTM, FormTRTM);
  Application.CreateForm(TFormTRTMMaster, FormTRTMMaster);
  Application.CreateForm(TFormTRTMMasterObjects, FormTRTMMasterObjects);
  Application.CreateForm(TFormTRTMMasterMethods, FormTRTMMasterMethods);
  Application.Run;
end.
