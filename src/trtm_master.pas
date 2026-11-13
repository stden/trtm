unit trtm_master;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, trtm_main,  trtm_types, trtm_lng, trtm_master_lng, TeeProcs, TeEngine, Chart;

type TFormContent = set of ( edpar1, edpar2, mempar,
                             btnshow, chartmeth,
                             btnrpreview, btnrprint,
                             btnsaveas, cbgraphic,
                             lblstate,
                             btnprev, btnnext, btndone, btncancel
                            );

type TMasterState = (        st_general, 
                             st_task, 
                             st_ac, 
                             st_tc, 
                             st_phc,
                             st_chng, 
                             st_bad, 
                             st_select, 
                             st_decision,
                             st_report
                     );
type TProcedure      = procedure of object;

type 
     TPMasterScreenState = ^TMasterScreenState;
     TMasterScreenState = record
                            fNext     : TPMasterScreenState;
                            fPrev     : TPMasterScreenState;
                            fSave     : TProcedure;
                            fSetState : TProcedure;
                            fState    : TMasterState;
                          end;

type TTaskContent       = record
                            fAuthorName : string;
                            fProject    : string;
                            fTask       : string;
                            fAC         : string;
                            fTC         : string;
                            fPHC        : string;
                            fObj        : string;
                            fBads       : string;
                            fGood       : string;
                            fNotGood    : string;
                            fMethods    : string;
                            fDecision   : string;
                          end;  
type
  TFormTRTMMaster = class(TForm)
    PanelParams: TPanel;
    EditParam1: TEdit;
    LabelScreenName: TLabel;
    LabelParam1: TLabel;
    PanelHelp: TPanel;
    ButtonPrevious: TButton;
    ButtonNext: TButton;
    ButtonDone: TButton;
    ButtonCancel: TButton;
    MemoParam: TMemo;
    LabelState: TLabel;
    MemoHelp: TMemo;
    LabelHelp: TLabel;
    ButtonReportPreview: TButton;
    ButtonReportPrint: TButton;
    EditParam2: TEdit;
    LabelParam2: TLabel;
    ButtonShow: TButton;
    ButtonSaveFileAs: TButton;
    CheckBoxShowGraphic: TCheckBox;
    ChartMethods: TChart;
    procedure ButtonCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonNextClick(Sender: TObject);
    procedure ButtonPreviousClick(Sender: TObject);
    procedure ButtonDoneClick(Sender: TObject);
    procedure ButtonShowObjectsClick(Sender: TObject);
    procedure ButtonShowMethodsClick(Sender: TObject);
    procedure EditParam1KeyPress(Sender: TObject; var Key: Char);
    procedure EditParam2KeyPress(Sender: TObject; var Key: Char);
    procedure MemoParamKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonReportPreviewClick(Sender: TObject);
    procedure ButtonReportPrintClick(Sender: TObject);
    procedure ButtonSaveFileAsClick(Sender: TObject);
  private
    { Private declarations }
    form_content  : TFormContent;
    master_screen_states : array of TMasterScreenState;
    current_screen_state : TPMasterScreenState;
    task_temp            : TTaskContent;
    TRTMProblem          : TTRTMProblem;
    procedure ConfigureGUIElements;
    procedure SetStateGeneral;
    procedure SetStateTask;
    procedure SetStateAC;
    procedure SetStateTC;
    procedure SetStatePHC;
    procedure SetStateCHNG;
    procedure SetStateBad;
    procedure SetStateSelect;
    procedure SetStateDecision;
    procedure SetStateReport;
    procedure SaveGeneral;
    procedure SaveTask;
    procedure SaveAC;
    procedure SaveTC;
    procedure SavePHC;
    procedure SaveCHNG;
    procedure SaveBad;
    procedure SaveSelect;
    procedure SaveDecision;
    procedure SaveReport;
    procedure FindMethods( Sender : TObject );
    procedure ExportDataToMainForm;
    procedure SaveFileClick( Sender: TObject );
  public
    { Public declarations }
    task_result           : TTaskContent;
  end;

const
  MAX_STATES = 10;

var
  FormTRTMMaster: TFormTRTMMaster;

implementation

uses trtm_master_obj, trtm_master_meth, trtm_gui;

{$R *.DFM}

procedure TFormTRTMMaster.ButtonShowObjectsClick(Sender: TObject);
begin
  FormTRTMMasterObjects.Show;
end;

procedure TFormTRTMMaster.ButtonShowMethodsClick(Sender: TObject);
begin
  FormTRTMMasterMethods.Show;
end;



procedure TFormTRTMMaster.ButtonCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTRTMMaster.FormCreate(Sender: TObject);
Var
  cnt : byte;
begin
  TRTMProblem                              := TTRTMProblem.Create;
  SetLength( master_screen_states, MAX_STATES );
  master_screen_states[0].fState           := st_general;
  master_screen_states[0].fSetState        := SetStateGeneral;
  master_screen_states[0].fSave            := SaveGeneral;
  master_screen_states[1].fState           := st_task;
  master_screen_states[1].fSetState        := SetStateTask;
  master_screen_states[1].fSave            := SaveTask;
  master_screen_states[2].fState           := st_ac;
  master_screen_states[2].fSetState        := SetStateAC;
  master_screen_states[2].fSave            := SaveAC;
  master_screen_states[3].fState           := st_tc;
  master_screen_states[3].fSetState        := SetStateTC;
  master_screen_states[3].fSave            := SaveTC;
  master_screen_states[4].fState           := st_phc;
  master_screen_states[4].fSetState        := SetStatePHC;
  master_screen_states[4].fSave            := SavePHC;
  master_screen_states[5].fState           := st_chng;
  master_screen_states[5].fSetState        := SetStateCHNG;
  master_screen_states[5].fSave            := SaveCHNG;
  master_screen_states[6].fState           := st_bad;
  master_screen_states[6].fSetState        := SetStateBad;
  master_screen_states[6].fSave            := SaveBad;
  master_screen_states[7].fState           := st_select;
  master_screen_states[7].fSetState        := SetStateSelect;
  master_screen_states[7].fSave            := SaveSelect;
  master_screen_states[8].fState           := st_decision;
  master_screen_states[8].fSetState        := SetStateDecision;
  master_screen_states[8].fSave            := SaveDecision;
  master_screen_states[9].fState           := st_report;
  master_screen_states[9].fSetState        := SetStateReport;
  master_screen_states[9].fSave            := SaveReport;

  master_screen_states[0].fPrev            := nil;
  master_screen_states[0].fNext            := @master_screen_states[1];
  master_screen_states[MAX_STATES-1].fNext := nil;
  master_screen_states[MAX_STATES-1].fPrev := @master_screen_states[MAX_STATES-2];
  for cnt := 1 to MAX_STATES-2 do
  begin
    master_screen_states[cnt].fNext := @master_screen_states[cnt+1];
    master_screen_states[cnt].fPrev := @master_screen_states[cnt-1];
  end;
  current_screen_state := @master_screen_states[0];

  current_screen_state.fSetState;
  task_temp.fAuthorName := '';
  task_temp.fProject    := '';
  task_temp.fTask       := '';
  task_temp.fAC         := '';
  task_temp.fTC         := '';
  task_temp.fPHC        := '';
  task_temp.fObj        := '';
  task_temp.fBads       := '';
  task_temp.fGood       := '';
  task_temp.fNotGood    := '';
  task_temp.fMethods    := '';
  task_temp.fDecision   := '';

  ConfigureGUIElements;

  ButtonShow.Visible          := False;
  ButtonPrevious.Enabled      := False;
  ButtonReportPreview.Visible := False;
  ButtonReportPrint.Visible   := False;
end;

procedure TFormTRTMMaster.ConfigureGUIElements;
begin

  if not( mempar in form_content ) then
  begin
    MemoParam.Visible              := False;
  end else
  begin
    MemoParam.Visible              := True;
    MemoParam.SetFocus;
  end;

  if not( edpar1 in form_content ) then
  begin
    EditParam1.Visible             := False;
  end else
  begin
    EditParam1.Visible             := True;
    if FormTRTMMaster.Visible then
      EditParam1.SetFocus;
  end;

  if not( edpar2 in form_content ) then
  begin
    EditParam2.Visible             := False;
    LabelParam2.Visible := False;
  end else
  begin
    EditParam2.Visible             := True;
    LabelParam2.Visible := True;
  end;
  if not( lblstate in form_content ) then
  begin
    LabelState.Visible := False;
  end else
  begin
    LabelState.Visible := True;
  end;

  if not( btnshow in form_content ) then
  begin
    ButtonShow.Visible := False;
  end else
  begin
    ButtonShow.Visible := True;
  end;



  if not( btnprev in form_content ) then
  begin
    ButtonPrevious.Enabled := False;
  end else
  begin
    ButtonPrevious.Enabled := True;
  end;

  if not( btnnext in form_content ) then
  begin
    ButtonNext.Enabled := False;
  end else
  begin
    ButtonNext.Enabled := True;
  end;

  if not( btndone in form_content ) then
  begin
    ButtonDone.Enabled := False;
  end else
  begin
    ButtonDone.Enabled := True;
  end;

  if not( btncancel in form_content ) then
  begin
    ButtonCancel.Enabled := False;
  end else
  begin
    ButtonCancel.Enabled := True;
  end;

  if not( btnrpreview in form_content ) then
  begin
    ButtonReportPreview.Visible := False;
  end else
  begin
    ButtonReportPreview.Visible := True;
  end;

  if not( btnrprint in form_content ) then
  begin
    ButtonReportPrint.Visible := False;
  end else
  begin
    ButtonReportPrint.Visible := True;
  end;

  if (edpar1 in form_content) or (mempar in form_content) then
    LabelParam1.Visible := True
  else
    LabelParam1.Visible := False;
  
  if (btnsaveas in form_content) then
    ButtonSaveFileAs.Visible := True
  else
    ButtonSaveFileAs.Visible := False;
  
  if (cbgraphic in form_content) then
    CheckBoxShowGraphic.Visible := True
  else
    CheckBoxShowGraphic.Visible := False;

  if (chartmeth in form_content) then
    ChartMethods.Visible := True
  else
    ChartMethods.Visible := False;

end;

procedure TFormTRTMMaster.SetStateGeneral;
begin
  form_content            := [edpar1, edpar2, lblstate, btnnext, btndone, btncancel];
  EditParam1.Text         := task_temp.fAuthorName;
  EditParam2.Text         := task_temp.fProject;
  LabelScreenName.Caption := LABEL_GENERAL_SCREEN;
  LabelParam1.Caption     := LABEL_GENERAL_AUTHOR;
  LabelParam2.Caption     := LABEL_GENERAL_PROJECT;
  MemoHelp.Text           := HELP_GENERAL;
  LabelState.Caption      := LABEL_STATE_GENERAL;
end;

procedure TFormTRTMMaster.SetStateTask;
begin
  form_content            := [mempar, lblstate, btnprev, btnnext, btndone, btncancel];
  MemoParam.Text          := task_temp.fTask;
  LabelScreenName.Caption := LABEL_SCREEN_TASK;
  LabelParam1.Caption     := LABEL_TASK;
  MemoHelp.Text           := HELP_TASK;
  LabelState.Caption      := LABEL_STATE_TASK;
end;

procedure TFormTRTMMaster.SetStateAC;
begin
  form_content := [mempar, lblstate, btnprev, btnnext, btndone, btncancel];
  MemoParam.Text          := task_temp.fAC;
  LabelScreenName.Caption := LABEL_SCREEN_AC;
  LabelParam1.Caption     := LABEL_AC;
  MemoHelp.Text           := HELP_AC;
  LabelState.Caption      := LABEL_STATE_AC;
end;

procedure TFormTRTMMaster.SetStateTC;
begin
  form_content            := [mempar, lblstate, btnprev, btnnext, btndone, btncancel];
  MemoParam.Text          := task_temp.fTC;
  LabelScreenName.Caption := LABEL_SCREEN_TC;
  LabelParam1.Caption     := LABEL_TC;
  MemoHelp.Text           := HELP_TC;
  LabelState.Caption      := LABEL_STATE_TC;
end;

procedure TFormTRTMMaster.SetStatePHC;
begin
  form_content            := [mempar, lblstate, btnprev, btnnext, btndone, btncancel];
  MemoParam.Text          := task_temp.fPHC;
  LabelScreenName.Caption := LABEL_SCREEN_PHC;
  LabelParam1.Caption     := LABEL_PHC;
  MemoHelp.Text           := HELP_PHC;
  LabelState.Caption      := LABEL_STATE_PHC;
end;

procedure TFormTRTMMaster.SetStateCHNG;
begin
  form_content            := [edpar1, lblstate, btnshow, btnprev, btnnext, btndone, btncancel];
  EditParam1.Text         := task_temp.fObj;
  ButtonShow.Caption      := BTN_SHOW_OBJ;
  ButtonShow.OnClick      := ButtonShowObjectsClick;
  LabelScreenName.Caption := LABEL_SCREEN_OBJ;
  MemoHelp.Text           := HELP_OBJ;  
  LabelParam1.Caption     := LABEL_OBJ;
  LabelState.Caption      := LABEL_STATE_OBJ
end;

procedure TFormTRTMMaster.SetStateBad;
begin
  form_content            := [edpar1, lblstate, btnshow, btnprev, btnnext, btndone, btncancel];
  EditParam1.Text         := task_temp.fBads;
  ButtonShow.Caption      := BTN_SHOW_OBJ;
  ButtonShow.OnClick      := ButtonShowObjectsClick;
  LabelScreenName.Caption := LABEL_SCREEN_BAD;
  MemoHelp.Text           := HELP_BAD;
  LabelParam1.Caption     := LABEL_BAD;
  LabelState.Caption      := LABEL_STATE_BAD;
  ButtonNext.OnClick      := FindMethods;
end;

procedure TFormTRTMMaster.SetStateSelect;
begin
  form_content            := [edpar1, edpar2, mempar, lblstate, chartmeth, btnshow, btnprev, btnnext, btndone, btncancel];
  EditParam1.Text         := task_temp.fGood;
  EditParam2.Text         := task_temp.fNotGood;  
  LabelParam1.Caption     := LABEL_GOOD_METH;
  LabelParam2.Caption     := LABEL_NOT_GOOD_METH;
  ButtonShow.Caption      := BTN_SHOW_METH;
  ButtonShow.OnClick      := ButtonShowMethodsClick;
  LabelScreenName.Caption := LABEL_SCREEN_METH;
  MemoHelp.Text           := HELP_METH;
  LabelState.Caption      := LABEL_STATE_METH;
  MemoParam.Text          := task_temp.fMethods;
  MemoParam.ReadOnly      := True;
  MemoParam.Top           := 120; // set new Top and Height
  MemoParam.Height        := 74;
end;

procedure TFormTRTMMaster.SetStateDecision;
begin
  form_content            := [mempar, lblstate, btnprev, btnnext, btndone, btncancel];
  MemoParam.Text          := task_temp.fDecision;
  LabelScreenName.Caption := LABEL_SCREEN_DECIS;
  LabelParam1.Caption     := LABEL_DECISION;
  MemoHelp.Text           := HELP_DECISION;
  LabelState.Caption      := LABEL_STATE_DECIS;
end;

procedure TFormTRTMMaster.SetStateReport;
begin
  form_content := [lblstate, btnprev, btnshow, btndone, btncancel, btnrpreview, btnrprint, btnsaveas, cbgraphic];
  LabelScreenName.Caption := LABEL_SCREEN_REPORT;
  MemoHelp.Text           := HELP_REPORT;
  LabelState.Caption      := LABEL_STATE_REPORT;
  ButtonShow.Caption      := BTN_SHOW_SAVE;
  ButtonShow.OnClick      := SaveFileClick;
end;

procedure TFormTRTMMaster.SaveGeneral;
begin
  task_temp.fAuthorName := EditParam1.Text;
  task_temp.fProject    := EditParam2.Text;
end;

procedure TFormTRTMMaster.SaveTask;
begin
  task_temp.fTask := MemoParam.Text;
end;

procedure TFormTRTMMaster.SaveAC;
begin
  task_temp.fAC   := MemoParam.Text;
end;

procedure TFormTRTMMaster.SaveTC;
begin
  task_temp.fTC   := MemoParam.Text;
end;

procedure TFormTRTMMaster.SavePHC;
begin
  task_temp.fPHC  := MemoParam.Text;
end;

procedure TFormTRTMMaster.SaveCHNG;
begin
  if trim( EditParam1.Text ) = '' then
    ShowMessage( MSG_NEED_CHNG )
  else
    task_temp.fObj  := EditParam1.Text;
end;

procedure TFormTRTMMaster.SaveBad;
begin
  if trim( EditParam1.Text ) = '' then
    ShowMessage( MSG_NEED_BADS )
  else
    task_temp.fBads  := EditParam1.Text;
end;

procedure TFormTRTMMaster.SaveSelect;
begin
  task_temp.fGood    := EditParam1.Text;
  task_temp.fNotGood := EditParam2.Text;
  task_temp.fMethods := MemoParam.Text;
  MemoParam.ReadOnly := False;
  MemoParam.Top      := 64; // restore old Top and Height
  MemoParam.Height   := 113;
end;

procedure TFormTRTMMaster.SaveDecision;
begin
  task_temp.fDecision  := MemoParam.Text;
end;

procedure TFormTRTMMaster.SaveReport;
begin
  //form_content := [lblstate, btnprev, btndone, btncancel, btnrpreview, btnrprint];
end;



procedure TFormTRTMMaster.ButtonNextClick(Sender: TObject);
begin
  current_screen_state.fSave;
  if current_screen_state.fNext <> nil then
  begin
    current_screen_state := current_screen_state.fNext;
    current_screen_state.fSetState;
  end;
  ConfigureGUIElements;
end;

procedure TFormTRTMMaster.ButtonPreviousClick(Sender: TObject);
begin
  current_screen_state.fSave;
  if current_screen_state.fPrev <> nil then
  begin
    current_screen_state := current_screen_state.fPrev;
    current_screen_state.fSetState;
  end;
  ConfigureGUIElements;
end;

procedure TFormTRTMMaster.ExportDataToMainForm;
begin
  task_result.fAuthorName := task_temp.fAuthorName;
  task_result.fProject    := task_temp.fProject;
  task_result.fTask       := task_temp.fTask;
  task_result.fAC         := task_temp.fAC;
  task_result.fTC         := task_temp.fTC;
  task_result.fPHC        := task_temp.fPHC;
  task_result.fObj        := task_temp.fObj;
  task_result.fBads       := task_temp.fBads;
  task_result.fGood       := task_temp.fGood;
  task_result.fNotGood    := task_temp.fNotGood;
  task_result.fDecision   := task_temp.fDecision;
  task_result.fMethods    := task_temp.fMethods;
  with FormTRTM do
  begin
    EditAuthor.Text         := task_temp.fAuthorName;
    EditProjectName.Text    := task_temp.fProject;
    MemoTask.Text           := task_temp.fTask;
    MemoAP.Text             := task_temp.fAC;
    MemoTP.Text             := task_temp.fTC;
    MemoFP.Text             := task_temp.fPHC;
    MethodGridContent[ 0, 0 ] := task_temp.fObj;
    MethodGridContent[ 0, 1 ] := task_temp.fBads;
    ButtonEvaluateClick( self );
    MethodGridContent[ 0, 4 ] := task_temp.fGood;
    MethodGridContent[ 0, 5 ] := task_temp.fNotGood;
    MemoResult.Text         := task_temp.fDecision;
  end;
end;

procedure TFormTRTMMaster.ButtonDoneClick(Sender: TObject);
begin
  current_screen_state.fSave;
  ExportDataToMainForm;
  Close;
end;

procedure TFormTRTMMaster.EditParam1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ButtonNext.Click;
end;

procedure TFormTRTMMaster.EditParam2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ButtonNext.Click;
end;

procedure TFormTRTMMaster.MemoParamKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Exit;

  if Key = 13 then
  begin
    ButtonNext.Click;
  end;
end;

procedure TFormTRTMMaster.FindMethods( Sender : TObject );
Var
  bads : TTRTM_Objects_Set;
  obj  : word;
begin
  ButtonNext.OnClick := ButtonNextClick; // restore handler
  current_screen_state.fSave;
  ChartMethods.RemoveAllSeries;
  if ( trim(task_temp.fObj) = '' ) then
  begin
    ShowMessage( MSG_ENTER_CHANGING );
    Exit;
  end;
  if ( trim(task_temp.fBads) = '' ) then
  begin
    ShowMessage( MSG_ENTER_GETTING_WORSE );
    Exit;
  end;
  FormTRTM.ParseObjects( task_temp.fObj, task_temp.fBads, obj, bads );
  if ( bads <> nil ) then
  begin
    TRTMProblem.ProcessTask( obj, bads );
    MemoParam.Clear;
    MemoParam.Lines.Add( MEMO_RESULT_ALL_METH );
    if TRTMProblem.AllMethods <> '' then
      MemoParam.Lines.Add( TRTMProblem.AllMethods )
    else
      MemoParam.Lines.Add( MEMO_RESULT_NO_METH );
    MemoParam.Lines.Add( '' );      
    MemoParam.Lines.Add( MEMO_RESULT_POP_METH );
    if TRTMProblem.PopularMethods <> '' then
      MemoParam.Lines.Add( TRTMProblem.PopularMethods )
    else
      MemoParam.Lines.Add( MEMO_RESULT_NO_METH );
    MemoParam.Lines.Add( '' ); 
    MemoParam.Lines.Add( MEMO_RESULT_ALL_MET_T );
    MemoParam.Lines.Add( TRTMProblem.PopularMethodsContent );
    task_temp.fMethods := MemoParam.Text;
    // Draw the graphics
    FormTRTM.DrawGraphic( ChartMethods, obj, TRTMProblem.Problem.unique );
  end;
  bads    := nil;
  ButtonNextClick( Sender );
end;


procedure TFormTRTMMaster.FormDestroy(Sender: TObject);
begin
  TRTMProblem.Destroy;
end;

procedure TFormTRTMMaster.ButtonReportPreviewClick(Sender: TObject);
begin
  ExportDataToMainForm;
  FormTRTM.CheckBoxPrintImage.Checked := CheckBoxShowGraphic.Checked;
  FormTRTM.QuickRep.Preview;
end;

procedure TFormTRTMMaster.ButtonReportPrintClick(Sender: TObject);
begin
  ExportDataToMainForm;
  FormTRTM.CheckBoxPrintImage.Checked := CheckBoxShowGraphic.Checked;
  FormTRTM.QuickRep.Print;
end;

procedure TFormTRTMMaster.SaveFileClick(Sender: TObject);
begin
  ExportDataToMainForm;
  FormTRTM.MainMenuFileSaveClick( Self );
end;

procedure TFormTRTMMaster.ButtonSaveFileAsClick(Sender: TObject);
begin
  ExportDataToMainForm;
  FormTRTM.MainMenuFileSaveAsClick( Sender );
end;

end.
























