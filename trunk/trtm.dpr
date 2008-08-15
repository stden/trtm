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
  trtm_master_meth in 'src\trtm_master_meth.pas' {FormTRTMMasterMethods},
  ExtSysUtils in 'ExtControls\ExtSysUtils.pas',
  Ex_DBGrid in 'ExtControls\Ex_DBGrid.pas',
  Ex_Grid in 'ExtControls\Ex_Grid.pas',
  Ex_GridC in 'ExtControls\Ex_GridC.pas' {ColumnsEditorForm},
  Ex_GridH in 'ExtControls\Ex_GridH.pas' {HeaderEditorForm},
  Ex_Inspector in 'ExtControls\Ex_Inspector.pas',
  ExtGraphics in 'ExtControls\ExtGraphics.pas',
  ExtStrUtils in 'ExtControls\ExtStrUtils.pas',
  ExtSystem in 'ExtControls\ExtSystem.pas',
  quickrpt in 'QuickRep\quickrpt.pas',
  grimgctrl in 'QuickRep\grimgctrl.pas',
  lzw in 'QuickRep\lzw.pas',
  pdfconst in 'QuickRep\pdfconst.pas',
  pdfobjs in 'QuickRep\pdfobjs.pas',
  qrabout in 'QuickRep\qrabout.pas' {QRAboutBox},
  qrabsdatas in 'QuickRep\qrabsdatas.pas',
  qrbonus in 'QuickRep\qrbonus.pas',
  qrcomped in 'QuickRep\qrcomped.pas',
  qr4const in 'QuickRep\qr4const.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '����';
  Application.CreateForm(TFormTRTM, FormTRTM);
  Application.CreateForm(TFormTRTMMaster, FormTRTMMaster);
  Application.CreateForm(TFormTRTMMasterObjects, FormTRTMMasterObjects);
  Application.CreateForm(TFormTRTMMasterMethods, FormTRTMMasterMethods);
  Application.Run;
end.
