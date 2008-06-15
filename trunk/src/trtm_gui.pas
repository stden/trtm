unit trtm_gui;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, ExtCtrls, QuickRpt, Grids, StdCtrls, ComCtrls, TeEngine,
  Series, TeeProcs, Chart, trtm_main, trtm_types, trtm_lng, trtm_table, Ex_Grid,
  Qrctrls, Inifiles, DBChart, QrTee;

type
  TMethodsRawContent = array [ 0 .. 6 ] of string;

type
  TMethodGridContent = array of TMethodsRawContent;

type
  TFormTRTM = class(TForm)
    MainMenu1: TMainMenu;
    MainMenuFile: TMenuItem;
    MainMenuHelp: TMenuItem;
    MainMenuFilleOpen: TMenuItem;
    MainMenuFileSave: TMenuItem;
    MainMenuFileSaveAs: TMenuItem;
    MainMenuFilePrint: TMenuItem;
    MainMenuFileDelim2: TMenuItem;
    MainMenuFileExit: TMenuItem;
    MainMenuHelpHelp: TMenuItem;
    MainMenuHelpDelim1: TMenuItem;
    MainMenuHelpAbout: TMenuItem;
    ActionList1: TActionList;
    ActionExit: TAction;
    ActionHelp: TAction;
    PageControlMain: TPageControl;
    TabSheetTask: TTabSheet;
    TabSheetReport: TTabSheet;
    PanelPageControlMethods: TPanel;
    PanelTaskAndSolutions: TPanel;
    PanelTask: TPanel;
    PanelSolutions: TPanel;
    MemoFP: TMemo;
    Label4: TLabel;
    Label3: TLabel;
    MemoAP: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    MemoTask: TMemo;
    LabelTask: TLabel;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    PanelSolutionButtons: TPanel;
    ButtonEvaluate: TButton;
    ButtonShowReport: TButton;
    ButtonBuildGraphics: TButton;
    PanelResult: TPanel;
    MemoResult: TMemo;
    Label6: TLabel;
    Splitter3: TSplitter;
    PageControlMethods: TPageControl;
    TabSheetObjectsList: TTabSheet;
    TabSheetAdvicedMethods: TTabSheet;
    OpenRizFileDialog: TOpenDialog;
    SaveToFileDialog: TSaveDialog;
    GridViewMethods: TGridView;
    TabSheetAllMethods: TTabSheet;
    PanelAuthor: TPanel;
    EditAuthor: TEdit;
    Label5: TLabel;
    EditProjectName: TEdit;
    LabelProjectName: TLabel;
    PanelReport: TPanel;
    QuickRep: TQuickRep;
    QRLabelCopyright: TQRLabel;
    TitleBand1: TQRBand;
    QRLabelProjectName: TQRLabel;
    QRLabelAuthor: TQRLabel;
    QRBandTask: TQRBand;
    QRLabelDateTime: TQRLabel;
    QRLabel5: TQRLabel;
    MainMenuView: TMenuItem;
    MainMenuViewTasks: TMenuItem;
    MainMenuViewReport: TMenuItem;
    PanelObjectsList: TPanel;
    ListBoxObjects: TListBox;
    PanelMethodsList: TPanel;
    RichEditMethods: TRichEdit;
    PanelAllMethodsList: TPanel;
    RichEditAllMethods: TRichEdit;
    ChildBandAC: TQRChildBand;
    MainMenuFileDelim1: TMenuItem;
    MainMenuFileNew: TMenuItem;
    N1: TMenuItem;
    MainMenuFileExport: TMenuItem;
    MainMenuFileExportMethods: TMenuItem;
    MainMenuFileExportTable: TMenuItem;
    MainMenuFileDelim3: TMenuItem;
    MainMenuFileHistory: TMenuItem;
    TabSheetProperties: TTabSheet;
    SaveToFileAsDialog: TSaveDialog;
    MemoTP: TMemo;
    SaveDialogExportTRTMTable: TSaveDialog;
    ChildBandTC: TQRChildBand;
    CheckBoxPrintImage: TCheckBox;
    N2: TMenuItem;
    MainMenuViewProperties: TMenuItem;
    ChartMethodsCharacteristics: TChart;
    Series1: TBarSeries;
    Splitter4: TSplitter;
    ChildBandPHC: TQRChildBand;
    ChildBandMethodsHeader: TQRChildBand;
    QRBandMethods: TQRChildBand;
    ChildBandImage: TQRChildBand;
    ChildBandResult: TQRChildBand;
    QRMemoSolution: TQRMemo;
    QRLabel4: TQRLabel;
    QRChartMethods: TQRChart;
    QRDBChart1: TQRDBChart;
    QRLabelChartTitle: TQRLabel;
    QRMemoObjData: TQRMemo;
    QRMemoBobjsData: TQRMemo;
    QRMemoMethodsData: TQRMemo;
    QRMemoPopularData: TQRMemo;
    QRMemoGoodData: TQRMemo;
    QRMemoBadData: TQRMemo;
    QRLabelToChange: TQRLabel;
    QRLabelBobj: TQRLabel;
    QRLabelMethods: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelAnalysis: TQRLabel;
    QRMemoPC: TQRMemo;
    QRLabelContrPhys: TQRLabel;
    QRLabelContrTech: TQRLabel;
    QRMemoTC: TQRMemo;
    QRMemoAC: TQRMemo;
    QRLabelContrAdmin: TQRLabel;
    QRLabelContradictions: TQRLabel;
    QRMemoTask: TQRMemo;
    QRLabelTask: TQRLabel;
    MainMenuViewMaster: TMenuItem;
    TimerShowMaster: TTimer;
    QRMemoMethdsPop : TQRMemo;
    procedure ActionExitExecute(Sender: TObject);
    procedure MainMenuFileExitClick(Sender: TObject);
    procedure MainMenuHelpAboutClick(Sender: TObject);
    procedure MainMenuFilePrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonEvaluateClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GridViewMethodsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridViewMethodsSetEditText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure GridViewMethodsGetCellText(Sender: TObject; Cell: TGridCell;
      var Value: String);
    procedure QuickRepNeedData(Sender: TObject; var MoreData: Boolean);
    procedure MainMenuHelpHelpClick(Sender: TObject);
    procedure MainMenuFilleOpenClick(Sender: TObject);
    procedure MainMenuFileSaveClick(Sender: TObject);
    procedure MainMenuFileSaveAsClick(Sender: TObject);
    procedure MainMenuViewTasksClick(Sender: TObject);
    procedure MainMenuViewReportClick(Sender: TObject);
    procedure ButtonBuildGraphicsClick(Sender: TObject);
    procedure ListBoxObjectsEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure ListBoxObjectsStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure RichEditMethodsStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure RichEditMethodsEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure RichEditAllMethodsStartDock(Sender: TObject;
      var DragObject: TDragDockObject);
    procedure RichEditAllMethodsEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure MainMenuFileExportTableClick(Sender: TObject);
    procedure MainMenuFileNewClick(Sender: TObject);
    procedure ButtonShowReportClick(Sender: TObject);
    procedure MainMenuViewPropertiesClick(Sender: TObject);
    procedure MainMenuFileExportMethodsClick(Sender: TObject);
    procedure MainMenuViewMasterClick(Sender: TObject);
    procedure TimerShowMasterTimer(Sender: TObject);
    procedure GridDragOver(Sender, Source: TObject; X, Y: integer; State: TDragState; var Accept: boolean);
    procedure GridDragDrop(Sender, Source: TObject; X, Y: integer);
    procedure ButtonAddProbClick(Sender: TObject);
    procedure ButtonDelProbClick(Sender: TObject);
private
    { Private declarations }
//    TRTMProblem       : TTRTMProblem;
  public
    MethodGridContent : TMethodGridContent;
    CurrentFileName   : string;
    wGlobalMethodsPopularity : TTRTM_Methods_Indexes;
    ProblemsArray : array of TTRTMProblem;

    function GetGlobalPopularMethodsStr : string;

    { Public declarations }
    procedure InitMethodsTable;
    procedure InitObjectsList;
    procedure ParseObjects( sobj : string; sbobj : string; Var obj : word; Var bobj : TTRTM_Objects_Set );
    procedure ParseObjLine( sobj : string; Var obj : TTRTM_Objects_Set );
    function  AppendWithSpaces( str_in : string ) : string;
    function  GetMemoAsString( memo : TMemo ) : string;
    procedure DrawGraphic( chart : TChart; obj : word; methods : TTRTM_Methods_Indexes );
    procedure GenerateDummyTableFile;
    procedure FillListBoxObjects;
    procedure FillRichEditAllMethods;
    procedure SaveTaskToFile( mode : word; fname : string );
    procedure SaveTaskToRizFile( fname : string );
    procedure SaveTaskToPlainTextFile( fname : string );
    procedure SaveTaskToHtmlFile( fname : string );
    procedure SaveTaskToRtfFile( fname : string );
    procedure SaveTaskFileInHistory( fname : string );
    procedure ReadTaskFromFile( fname : string );
    procedure SavePropertiesToFile;
    procedure ReadPropertiesFromFile;
    procedure ExportTRTMTableToPlaintTextFile( fname : string );
    procedure ExportTRTMTableToHtmlFile( fname : string );
    procedure NotRealizedYet;
  end;

const
  version = '1.2.5';

const
  PROJECT_FILE_EXT      = 'riz';
  SAVE_AS_FILE_EXT_TXT  = 'txt';
  SAVE_AS_FILE_EXT_RTF  = 'rtf';
  SAVE_AS_FILE_EXT_HTM  = 'htm';

  SAVE_FILE_MODE_RIZ    = 1; // riz-file
  SAVE_FILE_MODE_TXT    = 2; // text-file
  SAVE_FILE_MODE_HTM    = 3; // html-file
  SAVE_FILE_MODE_RTF    = 4; // rtf-file


var
  FormTRTM: TFormTRTM;

implementation

uses trtm_master;

{$I trtm_export.pas}
{$I trtm_task_files.pas}
{$I trtm_properties.pas}
{$I trtm_objects.pas}

{$R *.DFM}

procedure TFormTRTM.FormCreate(Sender: TObject);
begin
  RichEditAllMethods.Text        := '';
  PageControlMain.ActivePage     := TabsheetTask;
  PageControlMethods.ActivePage  := TabSheetObjectsList;
  
  OpenRizFileDialog.Filter       := '*.' + PROJECT_FILE_EXT;
  OpenRizFileDialog.FilterIndex  := 1;
  OpenRizFileDialog.DefaultExt   := PROJECT_FILE_EXT;
  OpenRizFileDialog.InitialDir   := GetCurrentDir;
  
  SaveToFileDialog.Filter        := OpenRizFileDialog.Filter;
  SaveToFileDialog.InitialDir    := OpenRizFileDialog.InitialDir;
  SaveToFileDialog.DefaultExt    := PROJECT_FILE_EXT;
  SaveToFileDialog.FilterIndex   := 1;
  
  SaveToFileAsDialog.FilterIndex := 1;
  SaveToFileAsDialog.Filter      := FILE_EXT_TXT + ' (*.' +
                                      SAVE_AS_FILE_EXT_TXT + ')|*.' +
                                      SAVE_AS_FILE_EXT_TXT + '|' +
                                    FILE_EXT_HTM + ' (*.' +
                                      SAVE_AS_FILE_EXT_HTM + ')|*.' +
                                      SAVE_AS_FILE_EXT_HTM + '|' +
                                    FILE_EXT_RTF + ' (*.' +
                                      SAVE_AS_FILE_EXT_RTF + ')|*.' +
                                      SAVE_AS_FILE_EXT_RTF;
  SaveToFileAsDialog.InitialDir  := OpenRizFileDialog.InitialDir;
  
  SaveDialogExportTRTMTable.InitialDir  := OpenRizFileDialog.InitialDir;
  SaveDialogExportTRTMTable.FilterIndex := 2;
  SaveDialogExportTRTMTable.DefaultExt  := FILE_EXT_HTM;
  SaveDialogExportTRTMTable.Filter      := FILE_EXT_TXT + ' (*.' +
                                             SAVE_AS_FILE_EXT_TXT + ')|*.' +
                                             SAVE_AS_FILE_EXT_TXT + '|' +
                                           FILE_EXT_HTM + ' (*.' +
                                             SAVE_AS_FILE_EXT_HTM + ')|*.' +
                                             SAVE_AS_FILE_EXT_HTM + '|';
  InitMethodsTable;
  InitObjectsList;
//  TRTMProblem                    := TTRTMProblem.Create;
  SetLength( MethodGridContent, GridViewMethods.Rows.Count );

  FillListBoxObjects;
  FillRichEditAllMethods;
end;

procedure TFormTRTM.FormDestroy(Sender: TObject);
var
  cnt : word;
begin
  ChartMethodsCharacteristics.SeriesList.Clear;
  QRChartMethods.Chart.SeriesList.Clear;
  GridViewMethods.Enabled := False;
//  TRTMProblem.Destroy;
  if ProblemsArray <> nil then
    for cnt := 0 to length(ProblemsArray)-1 do
      ProblemsArray[ cnt ].Destroy;
end;

procedure TFormTRTM.ActionExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormTRTM.MainMenuFileExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTRTM.MainMenuHelpAboutClick(Sender: TObject);
begin
  ShowMessage( FormTRTM.Caption + ' ' + version + #13#10 + MSG_ABOUT );
end;

procedure TFormTRTM.MainMenuHelpHelpClick(Sender: TObject);
begin
  ShowMessage( MSG_NO_HELP );
end;


procedure TFormTRTM.MainMenuFilePrintClick(Sender: TObject);
begin
  QuickRep.Preview;
end;

function TFormTRTM.GetGlobalPopularMethodsStr : string;
Var
  cnt : word;
begin
  Result := '';
  for cnt := 1 to length( wGlobalMethodsPopularity ) do
  begin
    if wGlobalMethodsPopularity[ cnt ] >= 1 then
    begin
      if Result <> '' then Result := Result + #13#10 + #13#10;
      Result := Result + IntToStr(cnt) + '. ' + trtm_methods_txt[cnt].mname + #13#10 +  trtm_methods_txt[cnt].mexample1;
    end;
  end;
end;

procedure TFormTRTM.ButtonEvaluateClick(Sender: TObject);
Var
  bads : TTRTM_Objects_Set;
  obj  : word;
  cnt, cnt2 : word;
  b : boolean;
  pProblem : ^TTRTMProblem;
begin
  // Cleaning and initialization
  b := false;
  if ProblemsArray <> nil then
    for cnt := 0 to length(ProblemsArray)-1 do
      ProblemsArray[ cnt ].Destroy;
  ProblemsArray := nil;
  ChartMethodsCharacteristics.RemoveAllSeries;
  for cnt := 1 to length( wGlobalMethodsPopularity ) do
    wGlobalMethodsPopularity[ cnt ] := 0;

  // Loop through all problems
  for cnt := 0 to GridViewMethods.Rows.Count - 1 do
  begin
    if ( trim(MethodGridContent[ cnt, 0 ]) = '' ) then
    begin
      ShowMessage( MSG_ENTER_CHANGING );
      break;
    end;
    if ( trim(MethodGridContent[ cnt, 1 ]) = '' ) then
    begin
      ShowMessage( MSG_ENTER_GETTING_WORSE );
      break;
    end;
    ParseObjects( MethodGridContent[ cnt, 0 ], MethodGridContent[ cnt, 1 ], obj, bads );
    if ( bads <> nil ) then
    begin
      b := true;
      // Allocate object and solve new problem
      SetLength(ProblemsArray, length(ProblemsArray)+1);
      ProblemsArray[length(ProblemsArray)-1] := TTRTMProblem.Create;
      pProblem := @ProblemsArray[length(ProblemsArray)-1];
      pProblem.ProcessTask( obj, bads );
      // Use output data
      MethodGridContent[ cnt, 2 ] := pProblem.AllMethods;
      MethodGridContent[ cnt, 3 ] := pProblem.PopularMethods;
      GridViewMethods.Refresh;
      for cnt2 := 1 to length( wGlobalMethodsPopularity ) do
        wGlobalMethodsPopularity[ cnt2 ] := wGlobalMethodsPopularity[ cnt2 ] + pProblem.Problem.unique[ cnt2 ];
    end;
    bads := nil;
  end;

  if ( b = true ) then
  begin
    RichEditMethods.Text := GetGlobalPopularMethodsStr;
    DrawGraphic( ChartMethodsCharacteristics, obj, wGlobalMethodsPopularity );
    DrawGraphic( TChart(QRChartMethods.Chart), obj, wGlobalMethodsPopularity );
    PageControlMethods.ActivePage := TabSheetAdvicedMethods;
  end;
end;

procedure TFormTRTM.InitMethodsTable;
begin
  with GridViewMethods do
  begin
    Header.Sections[0].Caption  := TABLE_DSC_NEED_TO_CHANGE;
    Header.Sections[1].Caption  := TABLE_DSC_GETTING_WORSE;
    Header.Sections[2].Caption  := TABLE_DSC_ALL_METHODS;
    Header.Sections[3].Caption  := TABLE_DSC_ALL_F_METHODS;
    Header.Sections[4].Caption  := TABLE_DSC_ALL_S_METHODS;
    Header.Sections[5].Caption  := TABLE_DSC_ALL_US_METHODS;
    Header.SectionHeight        := 60;
    Header.Sections[0].WordWrap := True;
    Header.Sections[1].WordWrap := True;
    Header.Sections[2].WordWrap := True;
    Header.Sections[3].WordWrap := True;
    Header.Sections[4].WordWrap := True;
    Header.Sections[5].WordWrap := True;

    Columns[0].Width            := TABLE_DSC_COL_0_W;
    Columns[1].Width            := TABLE_DSC_COL_1_W;
    Columns[2].Width            := TABLE_DSC_COL_2_W;
    Columns[3].Width            := TABLE_DSC_COL_3_W;
    Columns[4].Width            := TABLE_DSC_COL_4_W;
    Columns[5].Width            := TABLE_DSC_COL_5_W;
  end;
end;


procedure TFormTRTM.GridViewMethodsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 45 then
    // 'Ins' has been pressed, add a string to the table
    ButtonAddProbClick(nil);

  if Key = 46 then
    // 'Del' has been pressed, del a string from the table
    ButtonDelProbClick(nil);
end;


procedure TFormTRTM.DrawGraphic( chart : TChart; obj : word; methods : TTRTM_Methods_Indexes );
Var
  ser : TBarSeries;
  cnt : word;
begin
  chart.SeriesList.Clear;
  ser              := TBarSeries.Create( chart );
  chart.Title.Text.SetText( CHART_TITLE );
  ser.Title        := trtm_main_table[ obj ].desc;
  ser.ShowInLegend := False;
  ser.Clear;
  for cnt := 1 to MAX_METHODS do
  begin
    ser.AddXY( cnt, methods[cnt], '', clTeeColor );
  end;
  chart.AddSeries( ser );
end;

function TFormTRTM.AppendWithSpaces( str_in : string ) : string;
Var
  cnt,
  len : word;
begin
  Result := '';
  len    := length( str_in );
  if ( len <= 1 ) then
  begin
    Result := str_in;
    Exit;
  end;
  for cnt := 1 to len-1  do
  begin
    if  (str_in[cnt] <> ' ') and ( not (str_in[cnt] in ['0'..'9'] ) ) and ( str_in[cnt+1] <> ' ' ) then
    begin
      Result := Result + str_in[cnt] + ' ';
    end else
      Result := Result + str_in[cnt];
  end;
  Result := Result + str_in[len];
end;

procedure TFormTRTM.GridViewMethodsSetEditText(Sender: TObject;
  Cell: TGridCell; var Value: String);
begin
  if not ( Cell.Col in [TABLE_RO_COL_2, TABLE_RO_COL_3] ) then
  begin    
    MethodGridContent[ Cell.Row, Cell.Col ]     := AppendWithSpaces( Value );
    GridViewMethods.Columns[Cell.Col].WordWrap  := True;
  end;
end;

procedure TFormTRTM.GridViewMethodsGetCellText(Sender: TObject;
  Cell: TGridCell; var Value: String);
begin
  Value := MethodGridContent[ Cell.Row, Cell.Col ];
end;


procedure TFormTRTM.QuickRepNeedData(Sender: TObject;
  var MoreData: Boolean);
var
  cnt, cnt2, ln : word;
  str : string;
begin
  if EditProjectName.Text <> '' then
    QRLabelProjectName.Caption      := EditProjectName.Text;
  if MemoTask.Text <> '' then
    QRMemoTask.Lines.Text           := GetMemoAsString( MemoTask ); //.Lines;
  if MemoAP.Text <> '' then
    QRMemoAC.Lines.Text             := GetMemoAsString( MemoAP ); //.Lines;
  if MemoTP.Text <> '' then
    QRMemoTC.Lines.Text             := GetMemoAsString( MemoTP ); //.Lines;
  if MemoFP.Text <> '' then
    QRMemoPC.Lines.Text             := GetMemoAsString( MemoFP ); //.Lines;
  if MemoResult.Text <> '' then
    QRMemoSolution.Lines            := MemoResult.Lines;
  QRLabelDateTime.Caption           := TimeToStr( Time ) + '  ' + DateToStr(Date);

  // Fill main table
  QRMemoObjData.Lines.Clear;
  QRMemoBobjsData.Lines.Clear;
  QRMemoMethodsData.Lines.Clear;
  QRMemoPopularData.Lines.Clear;
  QRMemoGoodData.Lines.Clear;
  QRMemoBadData.Lines.Clear;
  for cnt := 0 to GridViewMethods.Rows.Count-1 do
  begin
    QRMemoObjData.Lines.Add( MethodGridContent[ cnt, 0 ] );
    QRMemoBobjsData.Lines.Add( MethodGridContent[ cnt, 1 ] );

    // Split methods list to the separate lines
    ln := 0;
    str := '';
    for cnt2 := 1 to length( MethodGridContent[ cnt, 2 ] ) do
    begin
      if MethodGridContent[ cnt, 2 ][ cnt2 ] <> ';' then
      begin
        SetLength(str, length(str)+1); str[length(str)] := MethodGridContent[ cnt, 2 ][ cnt2 ];
      end else
      begin
        Inc( ln );
        QRMemoMethodsData.Lines.Add( trim(str) ); str := '';
      end;
    end;

    QRMemoPopularData.Lines.Add( MethodGridContent[ cnt, 3 ] );
    QRMemoGoodData.Lines.Add( MethodGridContent[ cnt, 4 ] );
    QRMemoBadData.Lines.Add( MethodGridContent[ cnt, 5 ] );

    // Skip lines, if QRMemoMethodsData occupied more than one line.
    while ln > 1 do
    begin
      QRMemoObjData.Lines.Add(' ');
      QRMemoBobjsData.Lines.Add(' ');
      QRMemoPopularData.Lines.Add(' ');
      QRMemoGoodData.Lines.Add(' ');
      QRMemoBadData.Lines.Add(' ');
      Dec( ln );
    end;
  end;

  QRMemoMethdsPop.Lines.Clear;
  QRMemoMethdsPop.Lines.Add('Популярность каждого метода:');
  str := ''; ln := 0;
  for cnt := 1 to length( wGlobalMethodsPopularity ) do
  begin
    if wGlobalMethodsPopularity[ cnt ] <> 0 then
    begin
      if (wGlobalMethodsPopularity[ cnt ] >= 2) and (wGlobalMethodsPopularity[ cnt ] < 5) then
      begin
        str := str + '№' + IntToStr(cnt) + ' - ' +
          IntToStr(wGlobalMethodsPopularity[ cnt ]) + ' раза    ';
      end else
      begin
        str := str + '№' + IntToStr(cnt) + ' - ' +
          IntToStr(wGlobalMethodsPopularity[ cnt ]) + ' раз    ';
      end;
      Inc( ln );
    end;
    if ln >= 7 then
    begin
      QRMemoMethdsPop.Lines.Add(str); str := ''; ln := 0;
    end;
  end;
  if trim( str ) <> '' then QRMemoMethdsPop.Lines.Add(str);

  if CheckBoxPrintImage.Checked then
  begin
    ChildBandImage.Visible          := True;
    ChildBandImage.Height           := 120;

    QRChartMethods.Width            := ChildBandImage.ClientWidth;
    QRChartMethods.Top              := QRLabelChartTitle.Top + QRLabelChartTitle.Height + 3;
    QRChartMethods.Height           := ChildBandImage.ClientHeight - QRLabelChartTitle.Height - 5;
  end else
  begin
    QRChartMethods.Height           := 1;
    ChildBandImage.Height           := 1;
  end;
  if EditAuthor.Text <> '' then
    QRLabelAuthor.Caption           := EditAuthor.Text;

end;


procedure TFormTRTM.MainMenuFilleOpenClick(Sender: TObject);
begin
  if ( OpenRizFileDialog.Execute ) then
  begin
    ReadTaskFromFile( OpenRizFileDialog.FileName );
    CurrentFileName  := OpenRizFileDialog.FileName;
    FormTRTM.Caption := MAIN_FORM_TITLE + ' - ' + ExtractFileName( CurrentFileName );
  end;
end;


procedure TFormTRTM.MainMenuFileSaveClick(Sender: TObject);
begin
//  1. Выбор файла для сохранения;
  if CurrentFileName = '' then
  begin
    if  not ( SaveToFileDialog.Execute ) then
      Exit;
    CurrentFileName := SaveToFileDialog.FileName;
    FormTRTM.Caption := MAIN_FORM_TITLE + ' - ' + ExtractFileName( CurrentFileName );
  end else
    SaveToFileDialog.FileName := CurrentFileName;
//  2. Запись в файл данных
  SaveTaskToFile( SAVE_FILE_MODE_RIZ, SaveToFileDialog.FileName );
//  3. Сохранение в истории задачи
  SaveTaskFileInHistory( SaveToFileDialog.FileName );
end;

procedure TFormTRTM.MainMenuFileSaveAsClick(Sender: TObject);
begin
//  1. Выбор файла для сохранения;
  if ( SaveToFileAsDialog.Execute ) then
  begin
//  2. Запись в файл данных
    SaveTaskToFile( SaveToFileAsDialog.FilterIndex+1, SaveToFileAsDialog.FileName );
//  3. Сохранение в истории задачи 
    SaveTaskFileInHistory( SaveToFileAsDialog.FileName );
  end;    
end;


procedure TFormTRTM.MainMenuViewTasksClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabsheetTask;
end;


procedure TFormTRTM.MainMenuViewReportClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetReport;
end;


procedure TFormTRTM.FillRichEditAllMethods;
Var
  cnt : word;
begin
  RichEditAllMethods.Clear;
  
  for cnt := 1 to MAX_METHODS do
  begin
    if ( RichEditAllMethods.Text ) <> '' then
      RichEditAllMethods.Text := RichEditAllMethods.Text + #13#10;
    RichEditAllMethods.Text := RichEditAllMethods.Text +
                               IntToStr(cnt) + '. ' +
                               trtm_methods_txt[cnt].mname +
                               #13#10 +
                               trtm_methods_txt[cnt].mexample1 + 
                               #13#10 +  
                               trtm_methods_txt[cnt].mexample2
                               ;
  end;  
end;

procedure TFormTRTM.ButtonBuildGraphicsClick(Sender: TObject);
begin
  GenerateDummyTableFile;
end;

procedure TFormTRTM.ButtonAddProbClick(Sender: TObject);
begin
  GridViewMethods.Rows.Count := GridViewMethods.Rows.Count + 1;
  SetLength( MethodGridContent, GridViewMethods.Rows.Count );
end;

procedure TFormTRTM.ButtonDelProbClick(Sender: TObject);
begin
  if GridViewMethods.Rows.Count > 1 then
    GridViewMethods.Rows.Count := GridViewMethods.Rows.Count - 1;
    SetLength( MethodGridContent, GridViewMethods.Rows.Count );
end;

procedure TFormTRTM.ListBoxObjectsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  PanelObjectsList.DockSite := False;
end;


procedure TFormTRTM.ListBoxObjectsStartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  PanelObjectsList.DockSite := True;
end;


procedure TFormTRTM.RichEditMethodsStartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  PanelMethodsList.DockSite := True;
end;


procedure TFormTRTM.RichEditMethodsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  PanelMethodsList.DockSite := False;
end;


procedure TFormTRTM.RichEditAllMethodsStartDock(Sender: TObject;
  var DragObject: TDragDockObject);
begin
  PanelAllMethodsList.DockSite := True;
end;


procedure TFormTRTM.RichEditAllMethodsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  PanelAllMethodsList.DockSite := False;
end;


procedure TFormTRTM.MainMenuFileExportTableClick(Sender: TObject);
begin
  if SaveDialogExportTRTMTable.Execute then
  begin
    case ( SaveDialogExportTRTMTable.FilterIndex ) of
      1 : 
        begin
          ExportTRTMTableToPlaintTextFile( SaveDialogExportTRTMTable.FileName );
        end;
      2 :
        begin
          ExportTRTMTableToHtmlFile( SaveDialogExportTRTMTable.FileName );
        end;
    end;
  end;
end;

procedure TFormTRTM.NotRealizedYet;
begin
  ShowMessage( MSG_NOTREALIZED_YET );
end;

procedure TFormTRTM.MainMenuFileNewClick(Sender: TObject);
begin
  CurrentFileName := '';
  FormTRTM.Caption := MAIN_FORM_TITLE + ' - ???';
end;

procedure TFormTRTM.ButtonShowReportClick(Sender: TObject);
begin
  PageControlMain.ActivePage     := TabsheetReport;
  QuickRep.Preview;
end;

procedure TFormTRTM.MainMenuViewPropertiesClick(Sender: TObject);
begin
  PageControlMain.ActivePage     := TabsheetProperties;
end;

procedure TFormTRTM.MainMenuFileExportMethodsClick(Sender: TObject);
begin
  NotRealizedYet;
end;

procedure TFormTRTM.MainMenuViewMasterClick(Sender: TObject);
begin
  FormTRTMMaster.Show;
end;

procedure TFormTRTM.TimerShowMasterTimer(Sender: TObject);
begin
  FormTRTMMaster.Show;
  TimerShowMaster.Enabled := False;
end;

procedure TFormTRTM.GridDragOver(Sender, Source: TObject; X, Y: integer; State: TDragState; var Accept: boolean);
begin
  if Y > GridViewMethods.Header.SectionHeight then
    Accept := true
  else
    Accept := false;
end;

procedure TFormTRTM.GridDragDrop(Sender, Source: TObject; X, Y: integer);
var
  obj  : word;
  bads : TTRTM_Objects_Set;
  cnt, nPt: word;
  nCol, nRow, nMethod: integer;
  procedure Add1(r, c, m: integer);
  begin
    if trim(MethodGridContent[nRow, 1]) = '' then
      MethodGridContent[r, c] := IntToStr( m )
    else
      MethodGridContent[r, c] := MethodGridContent[r, c] + ', ' + IntToStr( m );
    GridViewMethods.Refresh;
  end;
begin

  // Calculate row/col position according to mouse coordinates.
  nPt := 0; nCol := -1;
  for cnt := 0 to GridViewMethods.Columns.Count-1 do
  begin
    if (X >= nPt) and (X < nPt + GridViewMethods.Columns[cnt].Width) then
    begin
      nCol := cnt; break;
    end;
    nPt := nPt + GridViewMethods.Columns[cnt].Width;
  end;
  if nCol = -1 then Exit;

  nRow := (Y - GridViewMethods.Header.SectionHeight) div GridViewMethods.Rows.Height;

  nMethod := 0;
  for cnt := 0 to ListBoxObjects.Items.Count-1 do
    if ListBoxObjects.Selected[cnt] = true then
      nMethod := cnt+1;
  if nMethod = 0 then Exit;

  // Do actual actions on the corresponding cell
  if nCol = 0 then
  begin
    if nRow >= GridViewMethods.Rows.Count then
    begin
      GridViewMethods.Rows.Count := GridViewMethods.Rows.Count + 1;
      SetLength( MethodGridContent, GridViewMethods.Rows.Count );
      MethodGridContent[GridViewMethods.Rows.Count-1, 0] := IntToStr( nMethod );
    end else
      MethodGridContent[nRow, 0] := IntToStr( nMethod );
    GridViewMethods.Refresh;
    Exit;
  end;

  if nCol = 1 then
  begin
    if nRow >= GridViewMethods.Rows.Count then nRow := GridViewMethods.Rows.Count-1;
    ParseObjects(MethodGridContent[nRow, 0], MethodGridContent[nRow, 1], obj, bads);
    if bads <> nil then
      for cnt := 0 to length(bads)-1 do
        if bads[cnt] = nMethod then
        begin
          ShowMessage('Такое свойство уже есть в списке'); bads := nil;
          Exit;
        end;
    Add1(nRow, 1, nMethod);
    bads := nil;
    Exit;
  end;
end;

end.





