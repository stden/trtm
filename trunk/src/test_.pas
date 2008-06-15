unit trtm_gui;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, ExtCtrls, QuickRpt, Grids, StdCtrls, ComCtrls, TeEngine,
  Series, TeeProcs, Chart, trtm_main, trtm_types, trtm_lng, trtm_table, Ex_Grid,
  Qrctrls, Inifiles;

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
    TabSheetGraphics: TTabSheet;
    TabSheetReport: TTabSheet;
    ChartMethodsCharacteristics: TChart;
    Series1: TBarSeries;
    PanelPageControlMethods: TPanel;
    PanelTaskAndSolutions: TPanel;
    PanelTask: TPanel;
    PanelSolutions: TPanel;
    MemoFP: TMemo;
    Label4: TLabel;
    Label3: TLabel;
    MemoTP: TMemo;
    MemoAP: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    MemoTask: TMemo;
    LabelTask: TLabel;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    PanelSolutionButtons: TPanel;
    ButtonEvaluate: TButton;
    ButtonShowMethods: TButton;
    ButtonBuildGraphics: TButton;
    PanelResult: TPanel;
    MemoResult: TMemo;
    Label6: TLabel;
    Splitter3: TSplitter;
    PageControlMethods: TPageControl;
    TabSheetObjectsList: TTabSheet;
    TabSheetAdvicedMethods: TTabSheet;
    OpenDialog1: TOpenDialog;
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
    QRLabelTask: TQRLabel;
    QRMemoTask: TQRMemo;
    QRLabelAuthor: TQRLabel;
    QRLabelContradictions: TQRLabel;
    QRLabelContrAdmin: TQRLabel;
    QRMemoAC: TQRMemo;
    QRLabelContrTech: TQRLabel;
    QRMemoTC: TQRMemo;
    QRLabelContrPhys: TQRLabel;
    QRMemoPC: TQRMemo;
    QRLabelToChange: TQRLabel;
    QRLabelBobj: TQRLabel;
    QRLabelMethods: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelAnalysis: TQRLabel;
    QRBand1: TQRBand;
    QRLabelObjData: TQRLabel;
    QRLabelBobjsData: TQRLabel;
    QRLabelMethodsData: TQRLabel;
    QRLabelPopularData: TQRLabel;
    QRLabelGoodData: TQRLabel;
    QRLabelBadData: TQRLabel;
    QRLabelDateTime: TQRLabel;
    QRLabel5: TQRLabel;
    MainMenuView: TMenuItem;
    MainMenuViewTasks: TMenuItem;
    MainMenuViewGraphics: TMenuItem;
    MainMenuViewReport: TMenuItem;
    PanelObjectsList: TPanel;
    ListBoxObjects: TListBox;
    PanelMethodsList: TPanel;
    RichEditMethods: TRichEdit;
    PanelAllMethodsList: TPanel;
    RichEditAllMethods: TRichEdit;
    ChildBand1: TQRChildBand;
    QRMemoSolution: TQRMemo;
    QRLabel4: TQRLabel;
    MainMenuFileDelim1: TMenuItem;
    MainMenuFileNew: TMenuItem;
    N1: TMenuItem;
    MainMenuFileExport: TMenuItem;
    MainMenuFileExportMethods: TMenuItem;
    MainMenuFileExportTable: TMenuItem;
    MainMenuFileDelim3: TMenuItem;
    MainMenuFileHistory: TMenuItem;
    TabSheetProperties: TTabSheet;
    procedure ActionExitExecute(Sender: TObject);
    procedure MainMenuFileExitClick(Sender: TObject);
    procedure MainMenuHelpAboutClick(Sender: TObject);
    procedure MainMenuFilePrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelAllMethodsEndDock(Sender, Target: TObject; X,
      Y: Integer);
    procedure PanelAllMethodsDockOver(Sender: TObject;
      Source: TDragDockObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure PanelAllMethodsUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
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
    procedure MainMenuViewGraphicsClick(Sender: TObject);
    procedure MainMenuViewReportClick(Sender: TObject);
    procedure ButtonBuildGraphicsClick(Sender: TObject);
    procedure PanelPageControlMethodsResize(Sender: TObject);
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
  private
    { Private declarations }
    TRTMProblem       : TTRTMProblem;
    MethodGridContent : TMethodGridContent;
    procedure InitMethodsTable;
    procedure InitObjectsList;
    procedure ParseObjects( sobj : string; sbobj : string; Var obj : word; Var bobj : TTRTM_Objects_Set );
    procedure ParseObjLine( sobj : string; Var obj : TTRTM_Objects_Set );
    procedure DrawGraphic( obj : word; methods : TTRTM_Methods_Indexes );
    procedure GenerateDummyTableFile;
    procedure FillListBoxObjects;
    procedure FillRichEditAllMethods;
    procedure SaveTaskToFile( mode : word; fname : string );
    procedure SaveTaskFileInHistory( fname : string );
  public
    { Public declarations }
  end;

const
  version = '1.2.2';

const
  PROJECT_FILE_EXT      = 'riz';
  SAVE_AS_FILES_FORMATS = '';
  
  SAVE_FILE_MODE_RIZ    = 1; // riz-file
  SAVE_FILE_MODE_TXT    = 2; // text-file
  SAVE_FILE_MODE_HTM    = 3; // html-file
  SAVE_FILE_MODE_RTF    = 4; // rtf-file


var
  FormTRTM: TFormTRTM;

implementation

{$R *.DFM}

procedure TFormTRTM.ActionExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormTRTM.MainMenuFileExitClick(Sender: TObject);
begin
  Close;
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
    Header.SectionHeight        := 50;
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

procedure TFormTRTM.MainMenuHelpAboutClick(Sender: TObject);
begin
  ShowMessage( FormTRTM.Caption + ' ' + version +
               #13#10 + 'Теория: Братцева Г.Г.' +
               #13#10 + 'Реализация: Соболев С.П., sobolevsp@mail.ru' +
               #13#10 + '                      '  + 'Филипова О.С.' );
end;

procedure TFormTRTM.MainMenuHelpHelpClick(Sender: TObject);
begin
  ShowMessage( 'В данной версии программы справка не доступна.' );
end;


procedure TFormTRTM.MainMenuFilePrintClick(Sender: TObject);
begin
  QuickRep.Preview;
end;

procedure TFormTRTM.FormCreate(Sender: TObject);
begin
  RichEditAllMethods.Text       := '';
  InitMethodsTable;
  InitObjectsList;
  TRTMProblem                   := TTRTMProblem.Create;
  SetLength( MethodGridContent, GridViewMethods.Rows.Count );
  PageControlMain.ActivePage    := TabsheetTask;
  PageControlMethods.ActivePage := TabSheetObjectsList;
  FillListBoxObjects;
  FillRichEditAllMethods;
end;

procedure TFormTRTM.PanelAllMethodsEndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  ShowMessage( '' );
end;

procedure TFormTRTM.PanelAllMethodsDockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  ShowMessage( '' );
end;

procedure TFormTRTM.PanelAllMethodsUnDock(Sender: TObject;
  Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
begin
  Allow := False;
end;

procedure TFormTRTM.ButtonEvaluateClick(Sender: TObject);
Var
  bads : TTRTM_Objects_Set;
  obj  : word;
  cnt  : word;
begin
  ChartMethodsCharacteristics.RemoveAllSeries;
  for cnt := 0 to GridViewMethods.Rows.Count - 1 do
  begin
    if ( trim(MethodGridContent[ cnt, 0 ]) = '' ) then
    begin
      ShowMessage( 'Введите изменяемый параметр' );
      break;
    end;
    if ( trim(MethodGridContent[ cnt, 1 ]) = '' ) then
    begin
      ShowMessage( 'Введите ухудшающийся параметр' );
      break;
    end;
    ParseObjects( MethodGridContent[ cnt, 0 ], MethodGridContent[ cnt, 1 ], obj, bads );
    if ( bads <> nil ) then
    begin
      TRTMProblem.ProcessTask( obj, bads );
      MethodGridContent[ cnt, 2 ] := TRTMProblem.AllMethods;
      MethodGridContent[ cnt, 3 ] := TRTMProblem.PopularMethods;
      RichEditMethods.Text        := TRTMProblem.PopularMethodsContent;
      GridViewMethods.Refresh;
      // Draw the graphics
      DrawGraphic( obj, TRTMProblem.Problem.unique );
      PageControlMethods.ActivePage := TabSheetAdvicedMethods;
    end;
    bads    := nil;
  end;
end;

procedure TFormTRTM.FormDestroy(Sender: TObject);
begin
  TRTMProblem.Destroy;
end;

procedure TFormTRTM.InitObjectsList;
Var
  cnt : integer;
begin
  for cnt := 1 to MAX_ID do
  begin
    ListBoxObjects.Items[cnt-1] := IntToStr( cnt );
  end;
end;

procedure TFormTRTM.GridViewMethodsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 45 then
  begin
    // 'Ins' has been pressed, add a string to the table
    GridViewMethods.Rows.Count := GridViewMethods.Rows.Count + 1;
    SetLength( MethodGridContent, GridViewMethods.Rows.Count );
  end;
end;

procedure TFormTRTM.GridViewMethodsSetEditText(Sender: TObject;
  Cell: TGridCell; var Value: String);
begin
  if not ( Cell.Col in [TABLE_RO_COL_2, TABLE_RO_COL_3] ) then
  begin
    MethodGridContent[ Cell.Row, Cell.Col ]     := Value;
    GridViewMethods.Columns[Cell.Col].WordWrap  := True;
  end;
end;

procedure TFormTRTM.GridViewMethodsGetCellText(Sender: TObject;
  Cell: TGridCell; var Value: String);
begin
  Value := MethodGridContent[ Cell.Row, Cell.Col ];
end;

procedure TFormTRTM.ParseObjLine( sobj : string; Var obj : TTRTM_Objects_Set );
Var
  spar  : string;
  cnt,
  len   : word;

begin
  sobj := trim( sobj );
  spar := '';
  obj  := nil;
  cnt  := 1;
  len  := length( sobj );
  if ( len = 0 )then
  begin
    Exit;
  end;
  while ( cnt <= len ) do
  begin
    if ( sobj[cnt] in ['0' .. '9'] ) then
    begin
      spar := spar + sobj[cnt];
    end else if ( spar <> '' ) then
    begin
      SetLength( obj, length(obj) + 1 );
      obj[High(obj)] := StrToInt( spar );
      spar := '';
    end;
    inc( cnt );
  end;
  if ( spar <> '' ) then
  begin
    SetLength( obj, length(obj) + 1 );
    obj[High(obj)] := StrToInt( spar );
    spar := '';
  end;
end;

procedure TFormTRTM.ParseObjects( sobj : string; sbobj : string; Var obj : word; Var bobj : TTRTM_Objects_Set );
begin
  obj  := 0;
  bobj := nil;
  try
    // get the object: there must be the only one object in a cell
    obj := StrToInt( trim( sobj ) );
    // get bads. There can be many of them.
    ParseObjLine( sbobj, bobj );
  except
  end;
end;

procedure TFormTRTM.DrawGraphic( obj : word; methods : TTRTM_Methods_Indexes );
Var
  ser : TBarSeries;
  cnt : word;
begin
  ser       := TBarSeries.Create( ChartMethodsCharacteristics );
  ser.Title := IntToStr( obj ); // DEBUG! Insert the method name here!
  ser.Clear;
  for cnt := 1 to MAX_METHODS do
  begin
    ser.AddXY( cnt, methods[cnt], '', clTeeColor );
  end;
  ChartMethodsCharacteristics.AddSeries( ser );
end;

procedure TFormTRTM.QuickRepNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  if EditProjectName.Text <> '' then
    QRLabelProjectName.Caption := EditProjectName.Text;
  if MemoTask.Text <> '' then
    QRMemoTask.Lines           := MemoTask.Lines;
  if MemoAP.Text <> '' then
    QRMemoAC.Lines             := MemoAP.Lines;
  if MemoTP.Text <> '' then
    QRMemoTC.Lines             := MemoTP.Lines;
  if MemoFP.Text <> '' then
    QRMemoPC.Lines             := MemoFP.Lines;
  if MemoResult.Text <> '' then
    QRMemoSolution.Lines       := MemoResult.Lines;
  QRLabelDateTime.Caption      := TimeToStr( Time ) + '  ' + DateToStr(Date);  
  QRLabelObjData.Caption     := MethodGridContent[ 0, 0 ];
  QRLabelBobjsData.Caption   := MethodGridContent[ 0, 1 ];
  QRLabelMethodsData.Caption := MethodGridContent[ 0, 2 ];
  QRLabelPopularData.Caption := MethodGridContent[ 0, 3 ];
  QRLabelGoodData.Caption    := MethodGridContent[ 0, 4 ];
  QRLabelBadData.Caption     := MethodGridContent[ 0, 5 ];

  if EditAuthor.Text <> '' then
    QRLabelAuthor.Caption      := EditAuthor.Text;

end;

procedure TFormTRTM.MainMenuFilleOpenClick(Sender: TObject);
begin
  ShowMessage( 'В данной версии программы открытие файла не реализовано' );
end;

procedure TFormTRTM.MainMenuFileSaveClick(Sender: TObject);
begin
  //ShowMessage( 'В данной версии программы сохранение в файл не реализовано' );
//  1. Выбор файла для сохранения;
  SaveToFileDialog.Filter     := '*.'+PROJECT_FILE_EXT;
  SaveToFileDialog.InitialDir := GetCurrentDir;
  if ( SaveToFileDialog.Execute ) then
  begin
//  2. Запись в файл данных
    SaveTaskToFile( SAVE_FILE_MODE_RIZ, SaveToFileDialog.FileName );
//  3. Сохранение в истории задачи 
    SaveTaskFileInHistory( SaveToFileDialog.FileName );
  end;    
end;

procedure TFormTRTM.MainMenuFileSaveAsClick(Sender: TObject);
begin
  ShowMessage( 'В данной версии программы сохранение в файл другого типа не реализовано' );
end;

procedure TFormTRTM.MainMenuViewTasksClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabsheetTask;
end;

procedure TFormTRTM.MainMenuViewGraphicsClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetGraphics;
end;

procedure TFormTRTM.MainMenuViewReportClick(Sender: TObject);
begin
  PageControlMain.ActivePage := TabSheetReport;
end;

procedure TFormTRTM.GenerateDummyTableFile;
Var
   fsrc     : TextFile;
   fobj     : TextFile;
   fmet     : TextFile;
   ftab     : TextFile;
   cnt,
   ccnt,
   pcnt     : integer;
   sout,
   s_in_obj,
   s_in_n,
   s_in_ex  : string;
begin
  AssignFile( fsrc, 'dummy.pas' );
  Rewrite ( fsrc );
  AssignFile( ftab, 'table.txt' );
  Rewrite ( ftab );
  AssignFile( fmet, '40.txt' );
  Reset ( fmet );
  AssignFile( fobj, '39.txt' );
  Reset ( fobj );

  sout := 'trtm_methods_txt[%d].mname     := %s;'
          + #13#10 +
          'trtm_methods_txt[%d].mexample1 := %s;'
          + #13#10 +
          'trtm_methods_txt[%d].mexample2 := '''';'
          + #13#10
          ;
  for cnt := 1 to MAX_METHODS do
  begin
    readln( fmet, s_in_n );
    readln( fmet, s_in_ex );
    writeln( fsrc, Format( sout, [cnt, s_in_n, cnt, s_in_ex, cnt] ) );
  end;
  for cnt := 1 to MAX_ID do
  begin
    writeln( ftab, Format( '//%d'+#13#10+'0'+#13#10+'0'+#13#10+'0'+#13#10+'0'+#13#10+'', [cnt] ) );
    readln( fobj, s_in_obj );
    sout := #13#10 + 'trtm_main_table[%d].id         := %d;'
            + #13#10 +
            'trtm_main_table[%d].desc       := %s;'
            + #13#10
            ;
    writeln( fsrc, Format( sout, [cnt, cnt, cnt, s_in_obj] ) );
    for ccnt := 1 to MAX_ID do
    begin
      writeln( fsrc, '' );    
      for pcnt := 1 to MAX_METHODS_PER_CELL do
      begin
        sout := 'trtm_main_table[%d].sol[%d][%d]  := 0;';
        writeln( fsrc, Format( sout, [cnt, ccnt, pcnt] ) );
      end;
    end;
  end;
  writeln( fsrc, '' );
  CloseFile( fobj );  
  CloseFile( fmet );
  CloseFile( ftab );  
  CloseFile( fsrc );
end;

procedure TFormTRTM.FillListBoxObjects;
Var
  cnt : word;
begin
  ListBoxObjects.Clear;
  for cnt := 1 to MAX_ID do
  begin
    ListBoxObjects.Items.Add( IntToStr(cnt) +'. ' + trtm_main_table[cnt].desc );
  end;
end;

procedure TFormTRTM.SaveTaskFileInHistory( fname : string );
begin
  
end;

procedure TFormTRTM.SaveTaskToFile( mode : word; fname : string );
Var
  RizFile : TIniFile;
begin
  case ( mode ) of
    SAVE_FILE_MODE_RIZ :
      begin
        RizFile := TIniFile.Create( fname );
        // 1. Записать задачу;
        // 2. Записать противоречия;
        // 3. Записать изменяемые параметр(ы)

        RizFile.Destroy;
      end;
    SAVE_FILE_MODE_TXT : 
      begin
        
      end;
    SAVE_FILE_MODE_HTM :
      begin
        
      end;
    SAVE_FILE_MODE_RTF :
      begin
        
      end;
  end;
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


procedure TFormTRTM.PanelPageControlMethodsResize(Sender: TObject);
begin
//  PageControlMethods.Height := PanelPageControlMethods.ClientHeight;
//  ShowMessage( 'REsize!' );
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

end.
























