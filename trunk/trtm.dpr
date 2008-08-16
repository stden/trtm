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
  qr4const in 'QuickRep\qr4const.pas',
  qrprntr in 'QuickRep\qrprntr.pas',
  qrprev in 'QuickRep\qrprev.pas' {QRStandardPreview},
  qrextra in 'QuickRep\qrextra.pas',
  qrprgres in 'QuickRep\qrprgres.pas' {QRProgressForm},
  qrexpr in 'QuickRep\qrexpr.pas',
  qrexpbld in 'QuickRep\qrexpbld.pas' {QRExpressionBuilder},
  qrctrls in 'QuickRep\qrctrls.pas',
  qrlabled in 'QuickRep\qrlabled.pas' {QRLabelEditorForm},
  qrexpred in 'QuickRep\qrexpred.pas' {QRExprEditorForm},
  qrprnsu in 'QuickRep\qrprnsu.pas',
  QRSearchDlg in 'QuickRep\QRSearchDlg.pas' {SearchDlg},
  qrpdffilt in 'QuickRep\qrpdffilt.pas',
  qrexport in 'QuickRep\qrexport.pas',
  qrwebfilt in 'QuickRep\qrwebfilt.pas',
  qrenved in 'QuickRep\qrenved.pas' {QREnvironmentEditor},
  QrTee in 'QuickRep\QrTee.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'вавЬ';
  Application.CreateForm(TFormTRTM, FormTRTM);
  Application.CreateForm(TFormTRTMMaster, FormTRTMMaster);
  Application.CreateForm(TFormTRTMMasterObjects, FormTRTMMasterObjects);
  Application.CreateForm(TFormTRTMMasterMethods, FormTRTMMasterMethods);
  Application.CreateForm(TSearchDlg, SearchDlg);
  Application.Run;
end.
