{
  Библиотека дополнительных компонентов

  Наследник от TGridView для отображения содержимого источника данных
    
  Версия 1.0

  © Роман М. Мочалов, 1997-2001
  E-mail: roman@sar.nnov.ru

  TODO:
    - Multiselect

  Исправлено: Компанец Илья, iluha@convex.ru
}                                  
                                            
unit Ex_DBGrid;

interface

{$I EX.INC}

uses
  Windows, Messages, SysUtils, CommCtrl, Classes, Controls, Graphics, Forms,
  StdCtrls, Math, {$IFDEF EX_D4_UP} ImgList, {$ENDIF} Ex_Grid, Db, DBTables,
  DBCtrls;
                                          
type
  TCustomDBGridView = class;

{ TDBGridHeader }

  {
    Заголовок таблицы. Отличается от заголовка стандарного TGridView только
    тем, что published свойство FullSynchrinizinf  по умолчанию равно False.
  }

  TDBGridHeader = class(TCustomGridHeader)
  public
    constructor Create(AGrid: TCustomGridView); override;
  published
    property AutoHeight;
    property AutoSynchronize;
    property Color;
    property Images;
    property Flat default False;
    property Font;
    property FullSynchronizing default False;
    property GridColor;
    property GridFont;
    property Sections;
    property SectionHeight;
    property Synchronized;
  end;
{ TDBGridColumn }

  {
    Колонка таблицы с дополнительным свойством: ссылкой на поле источника
    данных. Умеет автоматически определять название, выравнивание, маску
    и тип строки редактирования, максимальную длину строки, ширину и признак 
    редактирования от указанного поля.

    Методы:

    RestoreDefaults - Восстановить значения колонки по умолчанию.

    Свойства:

    DefaultColumn -   Признак использования колонкой параметров связанного
                      с ней поля источника данных.
    Field -           Ссылка на поле источника данных, отображаемого в
                      данной колонке.
    FieldName -       Название поля колонки.
  }

  TDBGridColumn = class(TCustomGridColumn)
  private
    FField: TField;
    FFieldName: string;
    FDefaultColumn: Boolean;
    function GetGrid: TCustomDBGridView;
    function IsNondefaultColumn: Boolean;
    function GetField: TField;
    procedure SetDefaultColumn(Value: Boolean);
    procedure SetField(Value: TField);
    procedure SetFieldName(const Value: string);
  protected
    function GetDisplayName: string; {$IFNDEF VER90} override; {$ENDIF}
    procedure SetAlignment(Value: TAlignment); override;
    procedure SetCaption(const Value: string); override;
    procedure SetEditMask(const Value: string); override;
    procedure SetEditStyle(Value: TGRidEditStyle); override;
    procedure SetMaxLength(Value: Integer); override;
    procedure SetReadOnly(Value: Boolean); override;
    procedure SetWidth(Value: Integer); override;
  public
    constructor Create(Collection: TCollection); override;
    procedure RestoreDefaults; virtual;
    property Field: TField read GetField write SetField;
    property Grid: TCustomDBGridView read GetGrid;
  published
    property Alignment stored IsNondefaultColumn;
    property AllowClick;
    property Caption stored IsNondefaultColumn;
    property CheckKind;
    property EditMask stored IsNondefaultColumn;
    property EditStyle stored IsNondefaultColumn;
    property FixedSize;
    property MaxLength stored IsNondefaultColumn;
    property MaxWidth;
    property MinWidth;
    property PickList;
    property ReadOnly stored IsNondefaultColumn;
    property TabStop;
    property Tag;
    property Visible;
    property WantReturns;
    property Width;
    property WordWrap;
    property DefWidth stored IsNondefaultColumn;
    property FieldName: string read FFieldName write SetFieldName stored True;
    property DefaultColumn: Boolean read FDefaultColumn write SetDefaultColumn default True;
  end;

{ TDBGridColumn }

  TDBGridColumns = class(TGridColumns)
  private
    function GetColumn(Index: Integer): TDBGridColumn;
    function GetGrid: TCustomDBGridView;
    procedure SetColumn(Index: Integer; Value: TDBGridColumn);
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    function Add: TDBGridColumn;
    property Columns[Index: Integer]: TDBGridColumn read GetColumn write SetColumn; default;
    property Grid: TCustomDBGridView read GetGrid;
  end;

{ TDBGridRows }

  {
    Строки таблицы. Отличаются от строк стандарного TGridView только
    тем, что не имеют published свойства Count, т.к. количество строк
    устанавливается таблицей автоматически и не подлежит изменению вручную.
  }

  TDBGridRows = class(TCustomGridRows)
  private
    FRowsFromGrid: Integer;
    function GetGrid: TCustomDBGridView;
  protected
    procedure Change; override;
    procedure SetCount(Value: Integer); override;
  public
    property Grid: TCustomDBGridView read GetGrid;
  published
    property AutoHeight;
    property Height;
  end;

{ TDBGridFixed }

  {
    Параметры фиксированных колонок таблицы.
  }

  TDBGridFixed = class(TCustomGridFixed)
  private
    FDefCount: Integer;
    function GetGrid: TCustomDBGridView;
    procedure SetDefCount(Value: Integer);
  public
    constructor Create(AGrid: TCustomGridView); override;
    property Grid: TCustomDBGridView read GetGrid;
  published
    property Color;
    property Count: Integer read FDefCount write SetDefCount default 0;
    property Flat default False;
    property Font;
    property GridColor;
    property GridFont;
  end;

{ TDBGridScrollBar }

  {
    Вертикльный скроллер таблицы. Имеет позицию всегда 0, чтобы не
    скроллировать строки в TGridView. Сам заботится об установке положения
    движка строллера в зависимости от текущей записи источника. Отлавливает
    события скроллера и смещает текущую запись источника данных.
  }

  TDBGridScrollBar = class(TGridScrollBar)
  private
    FRowMin: Integer;
    FRowMax: Integer;
    function GetGrid: TCustomDBGridView;
  protected
    procedure ScrollMessage(var Message: TWMScroll); override;
    procedure SetParams(AMin, AMax, APageStep, ALineStep: Integer); override;
    procedure SetPositionEx(Value: Integer; ScrollCode: Integer); override;
    procedure Update; override;
  public
    property Grid: TCustomDBGridView read GetGrid;
  end;

{ TDBGridEdit }

  {
    Строка редактирования таблицы. Умеет показывать выпадающий список
    для Lookup полей.
  }

  TDBGridListBox = class(TPopupDataList)
  private
    FLookupSource: TDataSource;
  public
    constructor Create(AOwner: TComponent); override;
    property LookupSource: TDataSource read FLookupSource;
  end;

  TDBGridEdit = class(TCustomGridEdit)
  private
    FDataList: TDBGridListBox;
    function GetGrid: TCustomDBGridView;
  protected
    function GetDropList: TWinControl; override;
    procedure UpdateList; override;
    procedure UpdateListItems; override;
    procedure UpdateListValue(Accept: Boolean); override;
    procedure UpdateStyle; override;
  public
    property Grid: TCustomDBGridView read GetGrid;
  end;

{ TDBGridDataLink }

  {
    Связка таблицы с источником данных. Перехватывает события изменения
    источника и передает их для обработки таблице.
  }

  TDBGridDataLink = class(TDataLink)
  private
    FGrid: TCustomDBGridView;
    FModified: Boolean;
    FInUpdateData: Integer;
  protected
    procedure ActiveChanged; override;
    procedure DataSetChanged; override;
    procedure DataSetScrolled(Distance: Integer); override;
    procedure EditingChanged; override;
    procedure FocusControl(Field: TFieldRef); override;
    function GetEOF: Boolean; {$IFDEF EX_D4_UP} override; {$ENDIF}
    procedure LayoutChanged; override;
    function MoveBy(Distance: Integer): Integer; {$IFDEF EX_D4_UP} override; {$ENDIF}
    procedure RecordChanged(Field: TField); override;
    procedure UpdateData; override;
    property Grid: TCustomDBGridView read FGrid;
    property InUpdateData: Integer read FInUpdateData;
  public
    constructor Create(AGrid: TCustomDBGridView);
    procedure Modified;
    procedure Reset;
{$IFNDEF EX_D4_UP}
    property EOF: Boolean read GetEOF;
{$ENDIF}
  end;

{ TCustomDBGridView }

  {
    Таблица для отображения содержимого указанного источника данных.
    Реализует возможности, аналогичные DBGrid: отображение данных из
    указанного DataSet, автоматическая расладка колонок по полям
    источника, редактирование записей, выпадающий список зачений для 
    lookup полей, индикатор, вставка и удаление записей.

    Свойства:

    AllowInsertRecord - Можно ли вставлять новые записи в таблице при
                        нажатии клавиши INSERT или по достижении конца
                        таблицы.
    AllowDeleteRecord - Можно ли удалять записи из таблицы при нажатии
                        клавиши DELETE;
    DataSource -        Связка с источником данных.
    DefaultLayout -     Признак автоматической раскладки колонок таблицы в
                        соответствии с набором полей источника данных.
    EditField -         Текущее редактируемое поле источника. Соотвествует
                        полю колонки текущей редактируемой ячейки.
    IndicatorImages -   Ссылка на список картинок индикатора. По умолчанию
                        сответствие между состоянием индикатора и индексом
                        картинки следующее:
                          -1 - Нет индикатора.
                           0 - Текущая запись.
                           1 - Идет редактирование.
                           2 - Новая запись.
                           3 - Зарезервировано.
                           4 - Зарезервировано.
    IndicatorWidth -     Ширина столбца индикатора.
    ShowIndicator -      Признак отображения индикатора.
    SelectedField -      Текущее выделенное поле источника. Соотвествует
                         полю текущей колонки выделенной ячейки.

    События:

    Все события аналогичны событиям TGridView за одним исключением:
    значение строки ячейки, указанной в событии (т.е. Cell.Row), всегда
    изменяется от 0 до количества видимых столбцов. Для получения поля
    (значения поля) источника данных, соотвествующего указанной ячейке,
    необходимо воспользоваться свойством Columns[Cell.Col].Field.
  }

  TDBGridSetTextAction = (taFail, taAbort);

  TDBGridSetTextErrorEvent = procedure(Sender: TObject; E: Exception; var Action: TDBGridSetTextAction) of object;
  TDBGridIndicatorImageEvent = procedure(Sender: TObject; DataRow: Integer; var ImageIndex: Integer) of object;
  TDBGridInsertEvent = procedure(Sender: TObject; var AllowInsert: Boolean) of object;
  TDBGridDeleteEvent = procedure(Sender: TObject; var AllowDelete: Boolean) of object;

  TCustomDBGridView = class(TCustomGridView)
  private
    FDataLink: TDBGridDataLink;
    FDefaultLayout: Boolean;
    FShowIndicator: Boolean;
    FIndicatorImages: TImageList;
    FIndicatorsLink: TChangeLink;
    FIndicatorsDef: TImageList;
    FIndicatorWidth: Integer;
    FCancelOnExit: Boolean;
    FAllowInsertRecord: Boolean;
    FAllowDeleteRecord: Boolean;
    FLayoutLock: Integer;
    FScrollLock: Integer;
    FScrollCell: TGridCell;
    FScrollSelected: Boolean;
    FCursorFromDataSet: Integer;
    FOnSetEditTextError: TDBGridSetTextErrorEvent;
    FOnGetIndicatorImage: TDBGridIndicatorImageEvent;
    FOnInsertRecord: TDBGridInsertEvent;
    FOnDeleteRecord: TDBGridDeleteEvent;
    function GetCol: Longint;
    function GetColumns: TDBGridColumns;
    function GetDataSource: TDataSource;
    function GetEditColumn: TDBGridColumn;
    function GetEditField: TField;
    function GetFixed: TDBGridFixed;
    function GetHeader: TDBGridHeader;
    function GetRows: TDBGridRows;
    function GetSelectedField: TField;
    procedure IndicatorsChange(Sender: TObject);
    function IsColumnsStored: Boolean;
    procedure SetCol(Value: Longint);
    procedure SetColumns(Value: TDBGridColumns);
    procedure SetDataSource(Value: TDataSource);
    procedure SetDefaultLayout(Value: Boolean);
    procedure SetFixed(Value: TDBGridFixed);
    procedure SetHeader(Value: TDBGridHeader);
    procedure SetIndicatorImages(Value: TImageList);
    procedure SetIndicatorWidth(Value: Integer);
    procedure SetRows(Value: TDBGridRows);
    procedure SetSelectedField(Value: TField);
    procedure SetShowIndicator(Value: Boolean);
{$IFNDEF VER90}
    procedure ReadColumns(Reader: TReader);
    procedure WriteColumns(Writer: TWriter);
{$ENDIF}
    procedure CMExit(var Message: TMessage); message CM_EXIT;
  protected
    function AcquireLockLayout: Boolean;
    procedure ChangeIndicator; virtual;
    function CreateColumns: TGridColumns; override;
    function CreateFixed: TCustomGridFixed; override;
    function CreateHeader: TCustomGridHeader; override;
    function CreateRows: TCustomGridRows; override;
    function CreateScrollBar(Kind: TScrollBarKind): TGridScrollBar; override;
    procedure DataLayoutChanged; virtual;
    procedure DataLinkActivate(Active: Boolean); virtual;
    procedure DataRecordChanged(Field: TField); virtual;
    procedure DataSetChanged; virtual;
    procedure DataSetDeleteRecord; virtual;
    procedure DataSetInsertRecord(AppendMode: Boolean); virtual;
    procedure DataSetScrolled(Distance: Integer); virtual;
    procedure DefineProperties(Filer: TFiler); override;
    function EditCanAcceptKey(Cell: TGridCell; Key: Char): Boolean; override;
    function EditCanModify(Cell: TGridCell): Boolean; override;
    function EditCanShow(Cell: TGridCell): Boolean; override;
    procedure GetCellColors(Cell: TGridCell; Canvas: TCanvas); override;
    function GetCellText(Cell: TGridCell): string; override;
    function GetColumnClass: TGridColumnClass; override;
    function GetEditClass(Cell: TGridCell): TGridEditClass; override;
    procedure HideCursor; override;
    procedure InvalidateIndicator;
    procedure InvalidateIndicatorImage(DataRow: Integer);
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MoveNextRow; virtual;
    procedure MovePriorRow; virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Paint; override;
    procedure PaintCell(Cell: TGridCell; Rect: TRect); override;
    procedure PaintIndicatorFixed; virtual;
    procedure PaintIndicatorGrid; virtual;
    procedure PaintIndicatorHeader; virtual;
    procedure PaintIndicatorImage(Rect: TRect; DataRow: Integer); virtual;
    procedure SetEditText(Cell: TGridCell; var Value: string); override;
    procedure SetEditTextError(E: Exception; var Action: TDBGridSetTextAction); virtual;
    procedure Resize; override;
    procedure UpdateData; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ApplyEdit; override;
    procedure CancelEdit; override;
    function IsCellReadOnly(Cell: TGridCell): Boolean; override;
    function IsFixedVisible: Boolean;
    function GetClientRect: TRect; override;
    function GetIndicatorHeaderRect: TRect; virtual;
    function GetIndicatorFixedRect: TRect; virtual;
    function GetIndicatorImage(DataRow: Integer): Integer; virtual;
    function GetIndicatorImageRect(DataRow: Integer): TRect; virtual;
    function GetIndicatorRect: TRect; virtual;
    procedure LockLayout;
    procedure LockScrool;
    procedure MakeCellVisible(Cell: TGridCell; PartialOK: Boolean); override;
    procedure SetCursor(Cell: TGridCell; Selected, Visible: Boolean); override;
    procedure UndoEdit; override;
    procedure UnLockLayout(CancelChanges: Boolean);
    procedure UnLockScrool(CancelScroll: Boolean);
    procedure UpdateCursorPos; virtual;
    procedure UpdateLayout; virtual;
    procedure UpdateRowCount; virtual;
    property AllowDeleteRecord: Boolean read FAllowDeleteRecord write FAllowDeleteRecord default True;
    property AllowEdit default True;
    property AllowInsertRecord: Boolean read FAllowInsertRecord write FAllowInsertRecord default True;
    property CancelOnExit: Boolean read FCancelOnExit write FCancelOnExit default True;
    property Col: Longint read GetCol write SetCol;
    property ColumnClick default False;
    property Columns: TDBGridColumns read GetColumns write SetColumns stored IsColumnsStored;
    property CursorKeys default [gkArrows, gkMouse, gkTabs];
    property CursorLock: Integer read FScrollLock;
    property DataLink: TDBGridDataLink read FDataLink;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DefaultLayout: Boolean read FDefaultLayout write SetDefaultLayout default True;
    property Hedaer: TDBGridHeader read GetHeader write SetHeader;
    property Fixed: TDBGridFixed read GetFixed write SetFixed; { <- после Header !!! }
    property LayoutLock: Integer read FLayoutLock;
    property EditColumn: TDBGridColumn read GetEditColumn;
    property EditField: TField read GetEditField;
    property IndicatorImages: TImageList read FIndicatorImages write SetIndicatorImages;
    property IndicatorWidth: Integer read FIndicatorWidth write SetIndicatorWidth default 12;
    property Rows: TDBGridRows read GetRows write SetRows;
    property SelectedField: TField read GetSelectedField write SetSelectedField;
    property ShowIndicator: Boolean read FShowIndicator write SetShowIndicator default True;
    property OnDeleteRecord: TDBGridDeleteEvent read FOnDeleteRecord write FOnDeleteRecord;
    property OnGetIndicatorImage: TDBGridIndicatorImageEvent read FOnGetIndicatorImage write FOnGetIndicatorImage;
    property OnInsertRecord: TDBGridInsertEvent read FOnInsertRecord write FOnInsertRecord;
    property OnSetEditTextError: TDBGridSetTextErrorEvent read FOnSetEditTextError write FOnSetEditTextError;
  end;

  TDBGridView = class(TCustomDBGridView)
  published
    property Align;
    property AllowDeleteRecord;
    property AllowEdit;
    property AllowInsertRecord;
    property AllowSelect;
    property AlwaysEdit;
    property AlwaysSelected;
{$IFDEF EX_D4_UP}
    property Anchors;
{$ENDIF}
    property BorderStyle;
    property CancelOnExit;
    property CheckBoxes;
    property CheckStyle;
    property Color;
    property ColumnClick;
    property Columns;
    property ColumnsFullDrag;
{$IFDEF EX_D4_UP}
    property Constraints;
{$ENDIF}
    property Ctl3D;
    property CursorKeys;
    property DataSource;
    property DefaultLayout;
    property DragCursor;
    property DragMode;
    property DoubleBuffered;
    property Enabled;
    property EndEllipsis;
    property Fixed;
    property FlatBorder;
    property FlatScrollBars;
    property FocusOnScroll;
    property Font;
    property GridLines;
    property GridStyle;
    property Header;
    property HideSelection;
    property Hint;
    property HorzScrollBar;
    property ImageIndexDef;
    property ImageHighlight;
    property Images;
    property IndicatorImages;
    property IndicatorWidth;
    property ParentColor default False;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property RightClickSelect;
    property Rows;
    property RowSelect;
    property ShowCellTips;
    property ShowIndicator;
    property ShowFocusRect;
    property ShowHeader;
    property ShowHint;
    property TabOrder;
    property TabStop default True;
    property VertScrollBar;
    property Visible;
    property OnCellAcceptCursor;
    property OnCellClick;
    property OnCellTips;
    property OnChange;
    property OnChangeColumns;
    property OnChangeEditing;
    property OnChangeEditMode;
    property OnChangeFixed;
    property OnChangeRows;
    property OnChanging;
    property OnCheckClick;
    property OnClick;
    property OnColumnAutoSize;
    property OnColumnResizing;
    property OnColumnResize;
    property OnDblClick;
    property OnDeleteRecord;
    property OnDragDrop;
    property OnDragOver;
    property OnDraw;
    property OnDrawCell;
    property OnDrawHeader;
    property OnEditAcceptKey;
    property OnEditButtonPress;
    property OnEditCanceled;
    property OnEditCanModify;
    property OnEditChange;
    property OnEditCloseUp;
    property OnEditSelectNext;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGetCellColors;
    property OnGetCellImage;
    property OnGetCellImageIndent;
    property OnGetCellHintRect;
    property OnGetCellText;
    property OnGetCellTextIndent;
    property OnGetCheckAlignment;
    property OnGetCheckImage;
    property OnGetCheckIndent;
    property OnGetCheckKind;
    property OnGetCheckState;
    property OnGetEditList;
    property OnGetEditListBounds;
    property OnGetEditMask;
    property OnGetEditStyle;
    property OnGetEditText;
    property OnGetHeaderColors;
    property OnGetHeaderImage;
    property OnGetIndicatorImage;
    property OnGetSortDirection;
    property OnGetSortImage;
    property OnGetTipsRect;
    property OnGetTipsText;
    property OnHeaderClick;
    property OnHeaderClicking;
    property OnInsertRecord;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
{$IFDEF EX_D4_UP}
    property OnMouseWheelDown;
    property OnMouseWheelUp;
{$ENDIF}
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnResize;
    property OnSetEditText;
    property OnSetEditTextError;
    property OnStartDrag;
  end;

implementation

uses
  DBConsts, ExtSystem, ExtSysUtils, ExtGraphics, ExtStrUtils;

{$R *.RES}

{ TDBGridHeader }

constructor TDBGridHeader.Create(AGrid: TCustomGridView);
begin
  inherited;
  Flat := False;
  FullSynchronizing := False;
end;

{ TDBGridColumn }

constructor TDBGridColumn.Create(Collection: TCollection);
begin
  inherited;
  FDefaultColumn := True;
end;

function TDBGridColumn.IsNondefaultColumn: Boolean;
begin
  Result := not DefaultColumn;
end;

function TDBGridColumn.GetField: TField;
begin
  if (FField = nil) and (Length(FFieldName) > 0) then
    if Assigned(Grid) and Assigned(Grid.DataLink.DataSet) then
      with Grid.Datalink.Dataset do
        if Active or (not DefaultFields) then SetField(FindField(FieldName));
  Result := FField;
end;

function TDBGridColumn.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

procedure TDBGridColumn.SetDefaultColumn(Value: Boolean);
begin
  if FDefaultColumn <> Value then
  begin
    if Value then RestoreDefaults;
    FDefaultColumn := Value;
  end;
end;

procedure TDBGridColumn.SetField(Value: TField);
begin
  if FField <> Value then
  begin
{$IFDEF EX_D5_UP}
    if (FField <> nil) and (Grid <> nil) then FField.RemoveFreeNotification(Grid);
{$ENDIF}
    FField := Value;
    if FField <> nil then
    begin
      if Grid <> nil then FField.FreeNotification(Grid);
{$IFDEF EX_D4_UP}
      FFieldName := FField.FullName;
{$ELSE}
      FFieldName := FField.FieldName;
{$ENDIF}
    end;
  end;
end;

procedure TDBGridColumn.SetFieldName(const Value: string);
var
  AField: TField;
begin
  AField := nil;
  if Length(Value) > 0 then
    if Assigned(Grid) and (not (csLoading in Grid.ComponentState)) then
      if Assigned(Grid.DataLink.DataSet) then
        AField := Grid.DataLink.DataSet.FindField(Value);
  FFieldName := Value;
  SetField(AField);
  { восстанавливаем значения по умолчанию }
  if FDefaultColumn then
  begin
    RestoreDefaults;
    FDefaultColumn := True;
  end;
  { колонка изменена }
  Changed(False);
end;

function TDBGridColumn.GetDisplayName: string;
begin
  Result := FFieldName;
  if Result = '' then Result := inherited GetDisplayName;
end;

procedure TDBGridColumn.SetAlignment(Value: TAlignment);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetCaption(const Value: string);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetEditMask(const Value: string);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetEditStyle(Value: TGRidEditStyle);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetMaxLength(Value: Integer);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetReadOnly(Value: Boolean);
begin
  FDefaultColumn := False;
  inherited;
end;

procedure TDBGridColumn.SetWidth(Value: Integer);
begin
  {if (Grid <> nil) and (not Grid.ColResizing) then }FDefaultColumn := False;
  inherited;
end;

function IsLookupField(Field: TField): Boolean;
var
  MasterField: TField;
begin
  Result := False;
  if (Field <> nil) and (Field.FieldKind = fkLookup) and (Field.DataSet <> nil) then
  begin
    MasterField := Field.DataSet.FieldByName(Field.KeyFields);
    if (MasterField <> nil) and MasterField.CanModify then Result := True;
  end
end;

{$IFDEF EX_D4_UP}

function IsReadOnlyField(Field: TField): Boolean;
const
  fkReadOnly = [fkLookup, fkCalculated];
begin
  Result := (Field = nil) or Field.ReadOnly or (Field.FieldKind in fkReadOnly) or
    ((Field.DataType in ftNonTextTypes) and (not Assigned(Field.OnSetText)));
end;

{$ELSE}

function IsReadOnlyField(Field: TField): Boolean;
const
  fkReadOnly = [fkLookup, fkCalculated];
begin
  Result := (Field = nil) or Field.ReadOnly or (Field.FieldKind in fkReadOnly) or
    ((Field is TBlobField) and (not Assigned(Field.OnSetText)));
end;

{$ENDIF}

procedure TDBGridColumn.RestoreDefaults;
var
  R: TRect;

  function AllowLookup: Boolean;
  begin
    Result := IsLookupField(Field) and (Grid <> nil) and
      (Grid.DataLink.Active) and (not Grid.Datalink.ReadOnly);
  end;

begin
  if Field <> nil then
  begin
    Alignment := Field.Alignment;
    Caption := Field.DisplayLabel;
    EditMask := Field.EditMask;
    { тип строки для Lookup полей }
    if AllowLookup then EditStyle := geDataList
    else if PickListCount > 0 then EditStyle := gePickList
    else EditStyle := geSimple;
    { возможность редактирования и максимальная длина строки }
    ReadOnly := IsReadOnlyField(Field);
{$IFDEF EX_D4_UP}
    MaxLength := 0;
    if Field.DataType in [ftString, ftWideString] then MaxLength := Field.Size;
{$ELSE}
    MaxLength := 0;
    if Field.DataType = ftString then MaxLength := Field.Size;
{$ENDIF}
    { ширина колонки по длине поля }
    if Grid <> nil then
    begin
      Grid.GetCellColors(GridCell(Self.Index, 0), Grid.Canvas);
      Width := GetFontWidth(Grid.Canvas.Font, Field.DisplayWidth);
      { по аналогии с DBGrid ширина колонки должна быть такой, чтобы
        в заголовке умещалось название колонки }
      with Grid do
        R := GetTextRect(Canvas, Rect(0, 0, 0, 0), TextLeftIndent, TextTopIndent,
          Self.Alignment, False, False, Self.Caption);
      Width := MaxIntValue([Width, R.Right - R.Left]);
    end;
  end;
end;

{ TDBGridColumns }

function TDBGridColumns.GetColumn(Index: Integer): TDBGridColumn;
begin
  Result := TDBGridColumn(inherited GetItem(Index));
end;

function TDBGridColumns.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

procedure TDBGridColumns.SetColumn(Index: Integer; Value: TDBGridColumn);
begin
  inherited SetItem(Index, Value);
end;

procedure TDBGridColumns.Update(Item: TCollectionItem);
begin
  if (Grid <> nil) and (Grid.LayoutLock = 0) {and (not Grid.ColResizing) }then Grid.DefaultLayout := False;
  inherited;
end;

function TDBGridColumns.Add: TDBGridColumn;
begin
  Result := TDBGridColumn(inherited Add);
end;

{ TDBGridListBox }

constructor TDBGridListBox.Create(AOwner: TComponent);
begin
  inherited;
  FLookupSource := TDataSource.Create(Self);
end;

{ TDBGridEdit }

function TDBGridEdit.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

function TDBGridEdit.GetDropList: TWinControl;
begin
  if (EditStyle = geDataList) and (Grid <> nil) and IsLookupField(Grid.EditField) then
  begin
    if FDataList = nil then FDataList := TDBGridListBox.Create(Self);
    Result := FDataList;
  end
  else
    Result := inherited GetDropList;
end;

procedure TDBGridEdit.UpdateList;
begin
  inherited;
  if (ActiveList = nil) or (not (ActiveList is TDBGridListBox)) then Exit;
  { настраиваем количество строк выпадающего lookup списка }
  TDBGridListBox(ActiveList).RowCount := Self.DropDownCount;
end;

procedure TDBGridEdit.UpdateListItems;
begin
  if (ActiveList = nil) or (not (ActiveList is TDBGridListBox)) then
  begin
    inherited;
    Exit;
  end;
  { проверяем таблицу и текущее поле }
  if (Grid = nil) or (Grid.EditField = nil) then Exit;
  { настраииваем lookup список }
  with Grid.EditField, TDBGridListBox(ActiveList) do
  begin
    LookupSource.DataSet := LookupDataSet;
    KeyField := LookupKeyFields;
    ListField := LookupResultField;
    ListSource := LookupSource;
    KeyValue := DataSet.FieldByName(KeyFields).Value;
  end;
end;

procedure TDBGridEdit.UpdateListValue(Accept: Boolean);
var
  ListValue: Variant;
  MasterField: TField;
begin
  if (ActiveList = nil) or (not (ActiveList is TDBGridListBox)) then
  begin
    inherited;
    Exit;
  end;
  { закрываем lookup список, берем его значение }
  with TDBGridListBox(ActiveList) do
  begin
    ListValue := KeyValue;
    ListSource := nil;
    LookupSource.DataSet := nil;
    if Accept and (Grid <> nil) then
      if (Grid.EditField <> nil) and (Grid.EditField.DataSet <> nil) then
        with Grid.EditField do
        begin
          MasterField := DataSet.FindField(KeyFields);
          if (MasterField <> nil) and MasterField.CanModify and Grid.DataLink.Edit then
            MasterField.Value := ListValue;
        end;
  end;
end;

procedure TDBGridEdit.UpdateStyle;
var
  MasterField: TField;
begin
  inherited UpdateStyle;
  { если строка имеет кнопку (списка или с многоточием), а модифицировать
    содержимое ячейки нельзя, то кнопку убираем }
  if (EditStyle <> geSimple) and (Grid <> nil) then
    { проверяем активность источника }
    if (not Grid.DataLink.Active) or Grid.DataLink.ReadOnly then
      EditStyle := geSimple
    { если для lookup не указано Master поле или его нельзя изменять, то
      кнопку тоже убираем }
    else if EditStyle = geDataList then
    begin
      { ищем мастер-поле }
      MasterField := nil;
      if (Grid.EditField <> nil) and (Grid.EditField.DataSet <> nil) then
        with Grid.EditField do MasterField := DataSet.FindField(KeyFields);
      { проверяем его }
      if (MasterField = nil) or (not MasterField.CanModify) then EditStyle := geSimple;
    end;
end;

{ TDBGridRows }

function TDBGridRows.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

procedure TDBGridRows.Change;
begin
  { при изменении высоты строк необходимо обновить количество видимых
    строк таблицы }
  if Grid <> nil then Grid.UpdateRowCount;
  inherited;
end;

procedure TDBGridRows.SetCount(Value: Integer);
begin
  { менять количество строк может только таблица }
  if FRowsFromGrid <> 0 then inherited;
end;

{ TDBGridFixed }

constructor TDBGridFixed.Create(AGrid: TCustomGridView);
begin
  inherited;
  Flat := False;
end;

function TDBGridFixed.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

procedure TDBGridFixed.SetDefCount(Value: Integer);
begin
  FDefCount := Value;
  SetCount(Value);
end;

{ TDBGridScrollBar }

function TDBGridScrollBar.GetGrid: TCustomDBGridView;
begin
  Result := TCustomDBGridView(inherited Grid);
end;

procedure TDBGridScrollBar.ScrollMessage(var Message: TWMScroll);
var
  DataSet: TDataSet;
  PageStep: Integer;

  procedure DoThumbPos(Pos: Integer);
  begin
    { масштабируем позицию }
    Pos := WinPosToScrollPos(Pos, FRowMin, FRowMax);
    { устанавливаем }
{$IFNDEF VER90}
    if DataSet.IsSequenced then
    begin
      { количество записей известно - встаем сразу на указанную запись }
      if Pos <= 1 then DataSet.First
      else if Pos >= DataSet.RecordCount then DataSet.Last
      else DataSet.RecNo := Pos;
    end
    else
{$ENDIF}
      { количество записей не известно - просто сдвигаемся }
      case Pos of
        0: DataSet.First;
        1: Grid.DataLink.MoveBy(-PageStep);
        2: Exit;
        3: Grid.DataLink.MoveBy(PageStep);
        4: DataSet.Last;
      end;
  end;

begin
  { проверяем источник }
  if (Grid = nil) or (not Grid.DataLink.Active) or (Grid.DataLink.DataSet = nil) then Exit;
  { ... }
  DataSet := Grid.DataLink.DataSet;
  PageStep := Grid.VisSize.Row;
  { обрабатываем сообщение }
  case Message.ScrollCode of
    SB_LINEUP: Grid.DataLink.MoveBy(-1);
    SB_LINEDOWN: Grid.DataLink.MoveBy(1);
    SB_PAGEUP: Grid.DataLink.MoveBy(-PageStep);
    SB_PAGEDOWN: Grid.DataLink.MoveBy(PageStep);
    SB_THUMBPOSITION: DoThumbPos(Message.Pos);
{$IFNDEF VER90}
    SB_THUMBTRACK: if Tracking and DataSet.IsSequenced then DoThumbPos(Message.Pos);
{$ENDIF}
    SB_BOTTOM: DataSet.Last;
    SB_TOP: DataSet.First;
  end;
end;

procedure TDBGridScrollBar.SetParams(AMin, AMax, APageStep, ALineStep: Integer);
begin
  inherited SetParams(0, 0, 0, 0);
  Update;
end;

procedure TDBGridScrollBar.SetPositionEx(Value: Integer; ScrollCode: Integer);
begin
  inherited SetPositionEx(0, ScrollCode);
  Update;
end;

procedure TDBGridScrollBar.Update;
var
  NewPage, NewPos: Integer;
  DataSet: TDataSet;
  SI: TScrollInfo;
begin
  if (Grid <> nil) and (Grid.HandleAllocated) and (UpdateLock = 0) then
  begin
    { параметры скроллера в зависимости от состояния источника данных }
    NewPage := 0;
    NewPos := 0;
    DataSet := Grid.DataLink.DataSet;
    if Grid.DataLink.Active and (DataSet <> nil) then
    begin
      { для источников данных, у которых количествозаписей известно
        (например Paradox) скроллер настраивается на номер текущей записи,
        а для источников с неизвестным количеством записей (SQL Server)
        скроллер настраивается для перехода вверх и вниз по источнику }
{$IFNDEF VER90}
      if DataSet.IsSequenced then
      begin
        { если идет вставка записи, то движок на нее ставить не надо
          (оставляем текущую позицию), иначе - движок на текущую запись }
        if not (DataSet.State in [dsInactive, dsBrowse, dsEdit]) then
        begin
          SI.cbSize := SizeOf(SI);
          SI.fMask := SIF_ALL;
          GetScrollInfo(Grid.Handle, SB_VERT, SI);
          NewPos := WinPosToScrollPos(SI.nPos, FRowMin, FRowMax);
        end
        else
          NewPos := DataSet.RecNo;
        { для минимума и максимума берем номер первой и последней записи }
        FRowMin := 1;
        NewPage := Grid.VisSize.Row;
        FRowMax := DataSet.RecordCount + NewPage - 1;
      end
      else
{$ENDIF}
      begin
        FRowMin := 0;
        FRowMax := 4;
        NewPage := 0;
        if DataSet.BOF then NewPos := 0
        else if DataSet.EOF then NewPos := 4
        else NewPos := 2;
      end;
    end
    else
    begin
      FRowMin := 0;
      FRowMax := 0;
    end;
    { заполняем структуру для установки параметров }
    FillChar(SI, SizeOf(SI), 0);
    SI.cbSize := SizeOf(SI);
    SI.fMask := SIF_ALL;
    SI.nMin := 0;
    if FRowMax - FRowMin > NewPage then {!!!}
    begin
      SI.nMax := MaxWinPos * Ord(Visible);
      SI.nPage := ScrollPosToWinPos(FRowMin + NewPage, FRowMin, FRowMax);
      SI.nPos := ScrollPosToWinPos(NewPos, FRowMin, FRowMax);
    end;
    { устанавливаем параметры }
    if Grid.FlatScrollBars then
      FlatSB_SetScrollInfo(Grid.Handle, SB_VERT, SI, True)
    else
      SetScrollInfo(Grid.Handle, SB_VERT, SI, True);
  end;
end;

{ TDBGridDataLink }

constructor TDBGridDataLink.Create(AGrid: TCustomDBGridView);
begin
  inherited Create;
{$IFDEF EX_D4_UP}
  VisualControl := True;
{$ENDIF}
  FGrid := AGrid;
end;

procedure TDBGridDataLink.ActiveChanged;
begin
  Grid.DataLinkActivate(Active);
  FModified := False;
end;

procedure TDBGridDataLink.DataSetChanged;
begin
  FGrid.DataSetChanged;
  FModified := False;
end;

procedure TDBGridDataLink.DataSetScrolled(Distance: Integer);
begin
  FGrid.DataSetScrolled(Distance);
end;

procedure TDBGridDataLink.LayoutChanged;
begin
  FGrid.DataLayoutChanged;
  inherited;
end;

procedure TDBGridDataLink.EditingChanged;
begin
  FGrid.InvalidateIndicatorImage(FGrid.Row);
end;

procedure TDBGridDataLink.FocusControl(Field: TFieldRef);
begin
  if Assigned(Field) and Assigned(Field^) then
  begin
    FGrid.SelectedField := Field^;
    if (FGrid.SelectedField = Field^) and FGrid.AcquireFocus then
    begin
      Field^ := nil;
      FGrid.ShowEdit;
    end;
  end;
end;

function TDBGridDataLink.GetEOF: Boolean;
begin
{$IFDEF EX_D4_UP}
  Result := inherited GetEOF;
{$ELSE}
  Result := (DataSet = nil) or DataSet.EOF;
{$ENDIF}
end;

function TDBGridDataLink.MoveBy(Distance: Integer): Integer;
begin
  Result := Distance;
{$IFDEF EX_D4_UP}
  if Result <> 0 then Result := inherited MoveBy(Distance);
{$ELSE}
  if (Result <> 0) and (DataSet <> nil) then Result := DataSet.MoveBy(Distance);
{$ENDIF}
end;

procedure TDBGridDataLink.RecordChanged(Field: TField);
begin
  FGrid.DataRecordChanged(Field);
  FModified := False;
end;

procedure TDBGridDataLink.UpdateData;
begin
  if FModified then
  begin
    Inc(FInUpdateData);
    try
      FGrid.UpdateData;
    finally
      Dec(FInUpdateData);
    end;
  end;
  FModified := False;
end;

procedure TDBGridDataLink.Modified;
begin
  FModified := True;
end;

procedure TDBGridDataLink.Reset;
begin
  if FModified then RecordChanged(nil) else Dataset.Cancel;
end;

{ TCustomDBGridView }

constructor TCustomDBGridView.Create(AOwner: TComponent);
begin
  FDataLink := TDBGridDataLink.Create(Self);
  FDefaultLayout := True;
  FShowIndicator := True;
  FIndicatorsLink := TChangeLink.Create;
  FIndicatorsLink.OnChange := IndicatorsChange;
  FIndicatorsDef := TImageList.CreateSize(16, 16);
  FIndicatorsDef.BkColor := clFuchsia;
{$IFDEF VER90}
  FIndicatorsDef.GetResource(rtBitmap, 'BM_GRIDVIEW_DB', 0, [], clFuchsia);
{$ELSE}
  FIndicatorsDef.ResInstLoad(HInstance, rtBitmap, 'BM_GRIDVIEW_DB', clFuchsia);
{$ENDIF}
  FIndicatorWidth := 12;
  FCancelOnExit := True;
  FAllowDeleteRecord := True;
  FAllowInsertRecord := True;
  inherited;
  AllowEdit := True;
  ColumnClick := False;
  CursorKeys := [gkArrows, gkMouse, gkTabs];
end;

destructor TCustomDBGridView.Destroy;
begin
  inherited;
  FIndicatorsLink.Free;
  FIndicatorsDef.Free;
  FDataLink.Free;
end;

function TCustomDBGridView.GetCol: Longint;
begin
  Result := inherited Col;
end;

function TCustomDBGridView.GetColumns: TDBGridColumns;
begin
  Result := TDBGridColumns(inherited Columns);
end;

function TCustomDBGridView.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TCustomDBGridView.GetEditColumn: TDBGridColumn;
begin
  Result := TDBGridColumn(inherited EditColumn);
end;

function TCustomDBGridView.GetEditField: TField;
begin
  Result := nil;
  if EditColumn <> nil then Result := EditColumn.Field;
end;

function TCustomDBGridView.GetFixed: TDBGridFixed;
begin
  Result := TDBGridFixed(inherited Fixed);
end;

function TCustomDBGridView.GetHeader: TDBGridHeader;
begin
  Result := TDBGridHeader(inherited Header);
end;

function TCustomDBGridView.GetRows: TDBGridRows;
begin
  Result := TDBGridRows(inherited Rows);
end;

function TCustomDBGridView.GetSelectedField: TField;
begin
  Result := nil;
  if (Col >= Fixed.Count) and (Col < Columns.Count) then Result := Columns[Col].Field;
end;

procedure TCustomDBGridView.IndicatorsChange(Sender: TObject);
begin
  if FShowIndicator then InvalidateIndicator;
end;

function TCustomDBGridView.IsColumnsStored: Boolean;
begin
{$IFDEF VER90}
  Result := not DefaultLayout;
{$ELSE}
  Result := False;
{$ENDIF}
end;

procedure TCustomDBGridView.SetCol(Value: Longint);
begin
  inherited Col := Value;
end;

procedure TCustomDBGridView.SetColumns(Value: TDBGridColumns);
begin
  Columns.Assign(Value);
end;

procedure TCustomDBGridView.SetDataSource(Value: TDataSource);
begin
  if FDatalink.DataSource <> Value then
  begin
    with FDataLink do
    begin
{$IFDEF EX_D5_UP}
      if DataSource <> nil then DataSource.RemoveFreeNotification(Self);
{$ENDIF}
      DataSource := Value;
      if DataSource <> nil then DataSource.FreeNotification(Self);
    end;
    DataLayoutChanged;
  end;
end;

procedure TCustomDBGridView.SetDefaultLayout(Value: Boolean);
begin
  if FDefaultLayout <> Value then
  begin
    FDefaultLayout := Value;
    DataLayoutChanged;
    Invalidate;
  end;
end;

procedure TCustomDBGridView.SetFixed(Value: TDBGridFixed);
begin
  Fixed.Assign(Value);
end;

procedure TCustomDBGridView.SetHeader(Value: TDBGridHeader);
begin
  Header.Assign(Value);
end;

procedure TCustomDBGridView.SetIndicatorImages(Value: TImageList);
begin
  if FIndicatorImages <> Value then
  begin
    if Assigned(FIndicatorImages) then FIndicatorImages.UnRegisterChanges(FIndicatorsLink);
    FIndicatorImages := Value;
    if Assigned(FIndicatorImages) then
    begin
      FIndicatorImages.RegisterChanges(FIndicatorsLink);
      FIndicatorImages.FreeNotification(Self);
    end;
    ChangeIndicator;
  end;
end;

procedure TCustomDBGridView.SetIndicatorWidth(Value: Integer);
begin
  if FIndicatorWidth <> Value then
  begin
    FIndicatorWidth := Value;
    ChangeIndicator;
  end;
end;

procedure TCustomDBGridView.SetRows(Value: TDBGridRows);
begin
  Rows.Assign(Value);
end;

procedure TCustomDBGridView.SetSelectedField(Value: TField);
var
  I: Integer;
begin
  if Value <> nil then
    for I := 0 to Columns.Count - 1 do
      if Columns[I].Field = Value then
      begin
        Col := I;
        Break;
      end;
end;

procedure TCustomDBGridView.SetShowIndicator(Value: Boolean);
begin
  if FShowIndicator <> Value then
  begin
    FShowIndicator := Value;
    ChangeIndicator;
  end;
end;

{$IFNDEF VER90}

procedure TCustomDBGridView.ReadColumns(Reader: TReader);
begin
  Columns.Clear;
  Reader.ReadValue;
  Reader.ReadCollection(Columns);
end;

procedure TCustomDBGridView.WriteColumns(Writer: TWriter);
begin
  Writer.WriteCollection(Columns);
end;

{$ENDIF}

procedure TCustomDBGridView.CMExit(var Message: TMessage);
begin
  if CancelOnExit and FDatalink.Active then
  try
    with FDatalink.Dataset do
      if (State = dsInsert) and (not Modified) and (not FDatalink.FModified) then
        Cancel
      else
        FDataLink.UpdateData;
  except
    SetFocus;
    raise;
  end;
  inherited;
end;

function TCustomDBGridView.AcquireLockLayout: Boolean;
begin
  Result := (UpdateLock = 0) and (FLayoutLock = 0);
  if Result then LockLayout;
end;

procedure TCustomDBGridView.ChangeIndicator;
begin
  { подправляем параметры таблицы }
  UpdateHeader;
  UpdateScrollBars;
  UpdateVisOriginSize;
  UpdateCursor;
  UpdateEdit(Editing);
  { перерисовываем таблицу }
  Invalidate;
end;

function TCustomDBGridView.CreateColumns: TGridColumns;
begin
  { TCustomDBGridView имеет свой набор колонок }
  Result := TDBGridColumns.Create(Self);
end;

function TCustomDBGridView.CreateFixed: TCustomGridFixed;
begin
  { TCustomDBGridView имеет свои фиксированные колонки }
  Result := TDBGridFixed.Create(Self);
end;

function TCustomDBGridView.CreateHeader: TCustomGridHeader;
begin
  { TCustomDBGridView имеет свой заголовок }
  Result := TDBGridHeader.Create(Self);
end;

function TCustomDBGridView.CreateRows: TCustomGridRows;
begin
  { TCustomDBGridView имеет свой список строк }
  Result := TDBGridRows.Create(Self);
end;

function TCustomDBGridView.CreateScrollBar(Kind: TScrollBarKind): TGridScrollBar;
begin
  if Kind = sbVertical then
    { TCustomDBGridView имеет свой вертикальный скроллер }
    Result := TDBGridScrollBar.Create(Self, Kind)
  else
    Result := inherited CreateScrollBar(Kind);
end;

procedure TCustomDBGridView.DataLayoutChanged;
begin
  if AcquireLockLayout then UnLockLayout(False);
end;

procedure TCustomDBGridView.DataLinkActivate(Active: Boolean);
begin
  { при изменении свойства Active источника данных необходимо обновить
    раскладку колонок, вертикальный скроллер и содержимое строки ввода }
  DataLayoutChanged;
  UpdateScrollBars;
  UpdateScrollPos;
  UpdateEdit(Editing);
end;

procedure TCustomDBGridView.DataRecordChanged(Field: TField);
var
  I: Integer;
  CField: TField;
begin
  { перерисовываем колонку поля по окончании изменения }
  if Field <> nil then
    for I := 0 to Columns.Count - 1 do
      if Columns[I].Field = Field then InvalidateColumn(I);
  { обновляем строку ввода, если изменилось текущее редактируемое поле }
  CField := EditField;
  if ((Field = nil) or (CField = Field)) and
    ((CField <> nil) and (Edit <> nil) and (CField.Text <> Edit.Text)) then
  begin
    UpdateEditContents(False);
    if Edit <> nil then Edit.Deselect;
  end;
end;

procedure TCustomDBGridView.DataSetChanged;
begin
  UpdateRowCount;
  UpdateScrollBars;
  UpdateCursorPos;
  UpdateEditContents(False);
  ValidateRect(Handle, nil);
  Invalidate;
end;

procedure TCustomDBGridView.DataSetDeleteRecord;
const
  Flags = MB_ICONQUESTION or MB_YESNO;
var
  AllowDelete: Boolean;
  Msg: string;
begin
  { а активен ли источник данных }
  if (not FDatalink.Active) or (FDataLink.DataSet = nil) then Exit;
  { добавляем запись }
  with FDatalink.DataSet do
    if (State <> dsInsert) and {$IFNDEF VER90} (not IsEmpty) and {$ENDIF}
      CanModify and (not ReadOnly) then
    begin
      AllowDelete := FAllowDeleteRecord;
      { проверяем обработчик события на удаление записи }
      if Assigned(FOnDeleteRecord) then
        { обработчик есть - спрашиваем разрешения на удаление }
        FOnDeleteRecord(Self, AllowDelete)
      else if AllowDelete then
      begin
        { обработчика нет - показываем диалог сами }
{$IFDEF VER90}
        Msg := LoadStr(SDeleteRecordQuestion);
{$ELSE}
        Msg := SDeleteRecordQuestion;
{$ENDIF}
        with Application do
          AllowDelete := MessageBox(PChar(Msg), PChar(Title), Flags) = ID_YES;
      end;
      { удаляем }
      if AllowDelete then Delete;
    end;
end;

procedure TCustomDBGridView.DataSetInsertRecord(AppendMode: Boolean);
var
  AllowInsert: Boolean;
begin
  { а активен ли источник данных }
  if (not FDatalink.Active) or (FDataLink.DataSet = nil) then Exit;
  { добавляем запись }
  with FDatalink.DataSet do
    if (State <> dsInsert) and CanModify and (not ReadOnly) and AllowEdit then
    begin
      { спрашиваем разрешения на вставку }
      AllowInsert := FAllowInsertRecord;
      if Assigned(FOnInsertRecord) then FOnInsertRecord(Self, AllowInsert);
      { вставляем }
      if AllowInsert then
      begin
        if AppendMode then Append else Insert;
        Editing := True;
      end;
    end;
end;

procedure TCustomDBGridView.DataSetScrolled(Distance: Integer);
var
  R: TRect;
begin
  if FDataLink.ActiveRecord >= Rows.Count then UpdateRowCount;
  UpdateScrollBars;
  UpdateCursorPos;
  { если изменилась верхняя отображаемая строка, то перерисовываем таблицу }
  if Distance <> 0 then
  begin
    HideCursor;
    try
      if Abs(Distance) <= VisSize.Row then
      begin
        { смещение всего лишь на несколько строк }
        R := GetRowsRect(0, VisSize.Row - 1);
        ScrollWindowEx(Handle, 0, - Distance * Rows.Height, @R, @R, 0, nil, SW_INVALIDATE);
      end
      else
        { смещение больше, чем количество видимых строк }
        Invalidate;
    finally
      ShowCursor;
    end;
  end;
end;

procedure TCustomDBGridView.DefineProperties(Filer: TFiler);
{$IFDEF VER90}
begin
{$ELSE}
var
  HasColumns: Boolean;
  AGrid: TCustomDBGridView;
begin
  { колонки не надо записывать, если они созданы автоматически или
    наследуются }
  HasColumns := not DefaultLayout;
  if HasColumns and (Filer.Ancestor <> nil) then
  begin
    AGrid := TCustomDBGridView(Filer.Ancestor);
    if not AGrid.DefaultLayout then
      HasColumns := not CollectionsEqual(Columns, AGrid.Columns {$IFDEF EX_D6_UP} ,nil,nil {$ENDIF} );
  end;
  { записываем колонки }
  Filer.DefineProperty('Columns', ReadColumns, WriteColumns, HasColumns);
{$ENDIF}
end;

function TCustomDBGridView.EditCanAcceptKey(Cell: TGridCell; Key: Char): Boolean;
begin
  Result := False;
  { проверяем колонку и источник }
  if (Cell.Col >= Fixed.Count) and (Cell.Col < Columns.Count) and DataLink.Active then
  begin
    { спрашиваем пользователя }
    Result := inherited EditCanAcceptKey(Cell, Key);
    { а может ли поле принимать данный символ }
    if Result then
      with Columns[Cell.Col] do
        Result := (Field <> nil) and Field.IsValidChar(Key);
  end;
end;

function TCustomDBGridView.EditCanModify(Cell: TGridCell): Boolean;
begin
  { проверяем возможность изменения ячейки, источника и поля }
  Result := inherited EditCanModify(Cell) and DataLink.Active and
    (not Datalink.ReadOnly) and (not IsReadOnlyField(EditField)) and
    (Editfield <> nil) and (EditField.CanModify);
  { если редактировать можно, то переводим источник в режим редактирования }
  if Result then
  begin
    if not Datalink.Editing then Result := DataLink.Edit;
    if Result then Datalink.Modified;
  end;
end;

function TCustomDBGridView.EditCanShow(Cell: TGridCell): Boolean;
begin
  Result := DataLink.Active and inherited EditCanShow(Cell);
end;

procedure TCustomDBGridView.GetCellColors(Cell: TGridCell; Canvas: TCanvas);
var
  OldActive: Integer;
begin
  { перед получением цвета ячейки ставим текущую запись активного
    источника на строку ячейки }
  if FDataLink.Active and IsCellValidEx(Cell, True, False) then
  begin
    OldActive := FDataLink.ActiveRecord;
    try
      FDataLink.ActiveRecord := Cell.Row;
      inherited;
    finally
      FDataLink.ActiveRecord := OldActive;
    end;
  end
  else
    inherited;
end;

function TCustomDBGridView.GetCellText(Cell: TGridCell): string;
var
  OldActive: Integer;
  Field: TField;
begin
  Result := '';
  { текст можно получить только для видимой ячейки }
  if FDataLink.Active and IsCellValidEx(Cell, True, False) then
  begin
    OldActive := FDataLink.ActiveRecord;
    try
      { ставим источник на запись ячейки и получаем текст поля колонки }
      FDataLink.ActiveRecord := Cell.Row;
      Field := Columns[Cell.Col].Field;
      if (Field <> nil) and (Field.DataSet <> nil) then Result := Field.DisplayText;
      { спрашиваем пользователя }
      if Assigned(OnGetCellText) then OnGetCellText(Self, Cell, Result);
    finally
      FDataLink.ActiveRecord := OldActive;
    end;
  end;
end;

function TCustomDBGridView.GetColumnClass: TGridColumnClass;
begin
  Result := TDBGridColumn;
end;

function TCustomDBGridView.GetEditClass(Cell: TGridCell): TGridEditClass;
begin
  Result := TDBGridEdit;
end;

procedure TCustomDBGridView.HideCursor;
begin
  inherited;
  InvalidateIndicatorImage(Row);
end;

procedure TCustomDBGridView.InvalidateIndicator;
begin
  InvalidateRect(GetIndicatorRect);
end;

procedure TCustomDBGridView.InvalidateIndicatorImage;
begin
  InvalidateRect(GetIndicatorImageRect(Row));
end;

procedure TCustomDBGridView.KeyDown(var Key: Word; Shift: TShiftState);
var
  KeyScroll: Boolean;
begin
  KeyScroll := Key in [VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT, VK_HOME, VK_END,
    VK_TAB, VK_RETURN, VK_ESCAPE, VK_INSERT, VK_DELETE];
  { блокируем перемещение курсора в стандартном обработчике }
  if KeyScroll then LockScrool;
  try
    inherited;
    { а активен ли источник данных }
    if (not FDataLink.Active) or (FDataLink.DataSet = nil) then Exit;
    { т.к. при изменении текущей записи в результате вызова MoveBy может
      возникнуть исключение обновления данных, то его следует отловить и не
      дать курсору сменить положение, иначе после выполенния UnLockScroll
      будет произведена попытка повторного UpdateRecord и выдано второе
      сообщение об ошибке }
    try
      { перемещение по записям стрелками }
      if gkArrows in CursorKeys then
        case Key of
          VK_UP:
            { отмена вставки новой записи и переход на предыдущую строку }
            begin
              MovePriorRow;
              SetCursor(CellFocused, True, True);
            end;
          VK_DOWN:
            { переход на следующую строку или вставка новой записи, если
              курсор находится в конце таблицы }
            begin
              MoveNextRow;
              { т.к. при вставке новой записи происходит изменение положения
                курсора по команде от DataLink, независимо от блокировки
                смещения курсора LockScroll, то следует еще раз вызвать
                установку курсора, чтобы после снятия блокировки он остался
                там, куда его поставил DataLink }
              SetCursor(CellFocused, True, True);
            end;
          VK_PRIOR:
            { переход на страницу вверх }
            FDataLink.MoveBy(-VisSize.Row);
          VK_NEXT:
            { переход на страницу вниз }
            FDataLink.MoveBy(VisSize.Row);
          VK_HOME:
            { в начало таблицы }
            if ssCtrl in Shift then FDataLink.DataSet.First;
          VK_END:
            { в конец таблицы }
            if ssCtrl in Shift then FDataLink.DataSet.Last;
        end;
      { перемещение по записям табуляцией }
      if (gkTabs in CursorKeys) and (Key = VK_TAB) and (not RowSelect) then
      begin
        { TAB на последней колонке в строке - преход на следующую запись }
        if (CellFocused.Col = Columns.Count - 1) and (not (ssShift in Shift)) then
        begin
          MoveNextRow;
          SetCursor(GetCursorCell(CellFocused, goHome), True, True);
        end;
        { TAB на первой колонке в строке - преход на предыдущую запись }
        if (CellFocused.Col = Fixed.Count) and (ssShift in Shift) then
        begin
          MovePriorRow;
          SetCursor(GetCursorCell(CellFocused, goEnd), True, True);
        end;
      end;
      { остальные клавиши }
      case Key of
        VK_ESCAPE:
          { нажатие клавиши ESCAPE приводит к отмене изменений текущей
            строки, даже если не видна строка редактирвания }
          begin
            CancelEdit;
            { в случае отмены вставки записи в конец таблицы текущее
              положение курсора окажется за последней строкой и поэтому
              таблица автоматически попытается установить курсор на первую
              попавшуюся доступную ячейку. чтобы при этом не сбилась текущая
              колонка подправим ее сами }
            SetCursor(CellFocused, True, True);
          end;
        VK_INSERT:
          { нажатие INSERT при погашенной строке редактирования приводит к
            вставке новой записи }
          if (Shift = []) and (not Editing) then DataSetInsertRecord(False);
        VK_DELETE:
          { нажатие INSERT при погашенной строке редактирования приводит к
            удалению текущей записи }
          if (Shift = []) and (not Editing) then
          begin
            DataSetDeleteRecord;
            SetCursor(CellFocused, True, True);
          end;
      end;
    except
      SetCursor(CellFocused, True, True);
      raise;
    end;
  finally
    if KeyScroll then UnLockScrool(False);
  end;
end;

procedure TCustomDBGridView.KeyPress(var Key: Char);
var
  ReturnScroll: Boolean;
begin
  { если нажали RETURN и надо переходить на следующую ячейку, то не
    дадим сменить ячейку в стандартном обработчике, а сделаем это сами,
    т.к. перед сменой ячейки надо отследить вставку в конец таблицы
    новой записи }
  ReturnScroll := (Key = #13) and (gkReturn in CursorKeys) and Editing;
  { блокируем перемещение курсора в стандартном обработчике }
  if ReturnScroll then LockScrool;
  try
    inherited;
    { Return на последней колонке в строке - преход на следующую запись }
    if ReturnScroll and (CellFocused.Col = Columns.Count - 1) then
    begin
      MoveNextRow;
      SetCursor(GetCursorCell(CellFocused, goHome), True, True);
    end;
  finally
    if ReturnScroll then UnLockScrool(False);
  end;
end;

procedure TCustomDBGridView.Loaded;
begin
  inherited;
  DataLayoutChanged;
end;

procedure TCustomDBGridView.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  { перехватываем изменение строки курсора при выделении ячейки мышкой,
    которое производится в стандарном обработчике TCustomGridView.MouseDown,
    и если строка действительно изменилась, то скроллируем источник данных,
    а курсор потом переместится на указанную строку автоматически }
  LockScrool;
  try
    inherited;
  finally
    UnLockScrool(False);
  end;
end;

procedure TCustomDBGridView.MouseMove(Shift: TShiftState; X, Y: Integer);

  function IsButtonPressed: Boolean;
  begin
    Result := (ssLeft in Shift) or ((ssRight in Shift) and RightClickSelect);
  end;

begin
  if IsButtonPressed then LockScrool;
  try
    inherited;
  finally
    if IsButtonPressed then UnLockScrool(False);
  end;
end;

procedure TCustomDBGridView.MoveNextRow;
begin
  { а активен ли источник данных }
  if (not FDatalink.Active) or (FDataLink.DataSet = nil) then Exit;
  { меняем запись }
  with FDatalink.DataSet do
  begin
    { если идет вставка записи, то отменяем ее, иначе - переходм на
      следующую запись }
    if (State = dsInsert) and not Modified and not FDatalink.FModified then
      if not FDataLink.EOF then
      begin
        Cancel;
        Editing := False;
      end
      else
        Exit
    else
      FDataLink.MoveBy(1);
    { если это последняя запись, то добавляем еще одну }
    if FDataLink.EOF then DataSetInsertRecord(True);
  end;
end;

procedure TCustomDBGridView.MovePriorRow;
begin
  { а активен ли источник данных }
  if (not FDatalink.Active) or (FDataLink.DataSet = nil) then Exit;
  { меняем запись }
  with FDatalink.DataSet do
    { если идет вставка записи в конце таблицы, то отменяем ее, иначе
      переходм на предыдущую запись }
    if (State = dsInsert) and (not Modified) and FDataLink.EOF and
      (not FDatalink.FModified) then
    begin
      Editing := False;
      Cancel;
    end
    else
      FDataLink.MoveBy(-1);
end;

procedure TCustomDBGridView.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited;
  if Operation = opRemove then
    if AComponent is TField then
    begin
      NeedLayout := False;
      LockLayout;
      try
        for I := Columns.Count - 1 downto 0 do
          if Columns[I].Field = AComponent then
          begin
            Columns[I].Field := nil;
            NeedLayout := True;
          end;
      finally
        UnLockLayout(not NeedLayout);
      end;
    end
    else if AComponent = DataSource then
      DataSource := nil
    else if AComponent = FIndicatorImages then
      IndicatorImages := nil;
end;

procedure TCustomDBGridView.Paint;
begin
  { рисуем индикатор }
  if ShowIndicator then
  begin
    PaintIndicatorHeader;
    PaintIndicatorFixed;
    if GridLines then PaintIndicatorGrid;
  end;
  { рисуем все остальное }
  inherited;
end;

procedure TCustomDBGridView.PaintCell(Cell: TGridCell; Rect: TRect);
var
  OldActive: Integer;
begin
  OldActive := FDataLink.ActiveRecord;
  try
    { перед отрисовкой ячейки устанавливаем источника текущую запись на
      строку ячейки, чтобы свойство Columns[Cell.Row].Field соотвествовало
      именно этой ячейке }
    FDataLink.ActiveRecord := Cell.Row;
    inherited;
  finally
    FDataLink.ActiveRecord := OldActive;
  end;
end;

procedure TCustomDBGridView.PaintIndicatorFixed;
var
  J: Integer;
  R: TRect;
begin
  Canvas.Brush.Color := Fixed.Color;
  { границы строк }
  R := GetIndicatorFixedRect;
  R.Bottom := GetRowRect(VisOrigin.Row).Top;
  { перебираем строки }
  for J := 0 to VisSize.Row - 1 do
  begin
    R.Top := R.Bottom;
    R.Bottom := R.Bottom + Rows.Height;
    { рисуем псевдоячейку индикатора }
    if RectVisible(Canvas.Handle, R) then
    begin
      Canvas.FillRect(R);
      { рисуем картинку индикатора }
      PaintIndicatorImage(R, J);
    end;
  end;
  { пустое поле снизу }
  R.Top := R.Bottom;
  R.Bottom := GetIndicatorFixedRect.Bottom;
  with Canvas do
  begin
    if not (IsFixedVisible or (gsListViewLike in GridStyle)) then Brush.Color := Color;
    FillRect(R);
  end;
  { полоска справа }
  if Fixed.Flat then
  begin
    R := GetIndicatorFixedRect;
    { если фиксированные не видны, то полоску рисуем до последней строки }
    if not IsFixedVisible then
    begin
      if VisSize.Row = 0 then Exit;
      R.Bottom := GetRowRect(VisOrigin.Row + VisSize.Row).Top;
    end;
    { если цвета фиксированных и таблицы совпадают - рисуем полоску
      из одной линии  }
    if Fixed.GridColor then
    begin
      if not (gsDotLines in GridStyle) then
      begin
        Canvas.Pen.Color := GetGridLineColor(Color);
        Canvas.Pen.Width := GridLineWidth;
        Canvas.MoveTo(R.Right - 1, R.Bottom - 1);
        Canvas.LineTo(R.Right - 1, R.Top - 1);
      end
      else
      begin
        R.Left := R.Right - 1;
        PaintDotGridLines(@R, 2);
      end;
    end
    else
      { иначе рисуем двойную полоску }
      with Canvas do
      begin
        Pen.Color := clBtnShadow;
        Pen.Width := 1;
        MoveTo(R.Right - 2, R.Top - 1);
        LineTo(R.Right - 2, R.Bottom - 1);
        Pen.Color := clBtnHighlight;
        MoveTo(R.Right - 1, R.Bottom - 1);
        LineTo(R.Right - 1, R.Top - 1);
      end;
  end;
end;

type
  PIntArray = ^TIntArray;
  TIntArray = array[0..MaxListSize - 1] of Integer;

procedure TCustomDBGridView.PaintIndicatorGrid;
var
  Points: PIntArray;
  PointCount: Integer;
  StrokeList: PIntArray;
  StrokeCount: Integer;
  I, L, R, Y, C: Integer;
  Index: Integer;
  Rect: TRect;

  procedure ShiftGridPoints(DX, DY: Integer);
  var
    I: Integer;
  begin
    I := 0;
    { сдвигаем горизонтальные линии по оси Y }
    while I < PointCount * 2 do
    begin
      if I mod 2 = 1 then Points^[I] := Points^[I] + DY;
      Inc(I);
    end;
  end;

  procedure Paint3DCells(Rect: TRect);
  var
    R: TRect;
  begin
    R := Rect;
    R.Bottom := R.Top;
    { строки }
    while R.Bottom < Rect.Bottom do
    begin
      R.Top := R.Bottom;
      R.Bottom := R.Bottom + Rows.Height;
      if RectVisible(Canvas.Handle, R) then PaintScrollBtnFrame(Canvas.Handle, R, False);
    end;
  end;

  procedure PaintHorz3DLines(Rect: TRect);
  var
    R: TRect;
  begin
    R := Rect;
    R.Bottom := R.Top;
    { строки }
    repeat
      R.Top := R.Bottom;
      R.Bottom := R.Bottom + Rows.Height;
      if RectVisible(Canvas.Handle, R) then PaintScrollBtnFrame(Canvas.Handle, R, False);
    until R.Bottom >= Rect.Bottom;
  end;

  procedure PaintBottom3DMargin(Rect: TRect);
  begin
    if RectVisible(Canvas.Handle, Rect) then
      PaintScrollBtnFrameEx(Canvas.Handle, Rect, False, BF_LEFT or BF_TOP or BF_RIGHT);
  end;

begin
  { надо ли рисовать плоскую сетку }
  if Fixed.Flat then
  begin
    { опрелеяем количество линий сетки }
    StrokeCount := 0;
    if gsHorzLine in GridStyle then
    begin
      StrokeCount := VisSize.Row;
      if gsListViewLike in GridStyle then StrokeCount := GetGridHeight div Rows.Height;
    end;
    { а есть ли сетка }
    if StrokeCount > 0 then
    begin
      { опрелеяем количество точек сетки }
      PointCount := StrokeCount * 2;
      { выделяем память под линии }
      StrokeList := AllocMem(StrokeCount * SizeOf(Integer));
      Points := AllocMem(PointCount * SizeOf(TPoint));
      { инициализация массива количества точек полилиний }
      FillDWord(StrokeList^, StrokeCount, 2);
      Rect := GetIndicatorFixedRect;
      { точки горизонтальных линий }
      if gsHorzLine in GridStyle then
      begin
        L := Rect.Left;
        R := Rect.Right;
        Y := GetRowRect(VisOrigin.Row).Top;
        C := VisSize.Row;
        if gsListViewLike in GridStyle then C := GetGridHeight div Rows.Height;
        for I := 0 to C - 1 do
        begin
          Y := Y + Rows.Height;
          Index := I * 4;
          Points^[Index + 0] := L;
          Points^[Index + 1] := Y - 2;
          Points^[Index + 2] := R - 1;
          Points^[Index + 3] := Y - 2;
        end;
      end;
      { а двойные или одинарные линии }
      if Fixed.GridColor then
        { рисуем одинарную полоску }
        with Canvas do
        begin
          { сдвигаем линии (они расчитаны для первой двойной линии) }
          ShiftGridPoints(1, 1);
          { сетка }
          if not (gsDotLines in GridStyle) then
          begin
            Pen.Color := GetGridLineColor(Color);
            Pen.Width := GridLineWidth;
            PolyPolyLine(Handle, Points^, StrokeList^, StrokeCount);
          end
          else
            PaintDotGridLines(Points, PointCount);
        end
      else
        { рисуем двойную полоску }
        with Canvas do
        begin
          { темные линии }
          Pen.Color := clBtnShadow;
          Pen.Width := 1;
          PolyPolyLine(Handle, Points^, StrokeList^, StrokeCount);
          { сдвигаем линии }
          ShiftGridPoints(1, 1);
          { светлые линии }
          Pen.Color := clBtnHighlight;
          PolyPolyLine(Handle, Points^, StrokeList^, StrokeCount);
        end;
      { освобождаем память }
      FreeMem(Points);
      FreeMem(StrokeList);
    end;
  end
  { надо ли рисовать 3D ячейки }
  else if gsHorzLine in GridStyle then
  begin
    Rect := GetIndicatorFixedRect;
    if not (gsListViewLike in GridStyle) then Rect.Bottom := GetRowRect(VisOrigin.Row + VisSize.Row).Top;
    { 3D ячейки }
    Paint3DCells(Rect);
    { оставшееся место }
    if IsFixedVisible and (not (gsListViewLike in GridStyle)) then
    begin
      Rect.Top := Rect.Bottom;
      Rect.Bottom := GetFixedRect.Bottom;
      PaintBottom3DMargin(Rect);
    end;
  end
  else
  { просто 3D рамка вокруг индикатора }
  begin
    Rect := GetIndicatorFixedRect;
    { рамка снизу }
    if not IsFixedVisible then
    begin
      Rect.Bottom := GetRowRect(VisOrigin.Row + VisSize.Row).Top;
      PaintScrollBtnFrame(Canvas.Handle, Rect, False);
    end
    else
      PaintBottom3DMargin(Rect);
  end;
end;

procedure TCustomDBGridView.PaintIndicatorHeader;
var
  Rect: TRect;
begin
  with Canvas do
  begin
    { прямоугольник псевдо-секции заголовка над индикатором }
    Rect := GetIndicatorHeaderRect;
    { заливаем индикатор }
    Brush.Color := Header.Color;
    Font := Header.Font;
    FillRect(Rect);
    { определяем, что рисовать - кнопку или полоски }
    if Header.Flat then
    begin
      { если цвет заголовка и таблицы совпадает - рисуем одинарную линию }
      if Header.GridColor then
      begin
        Pen.Color := GetGridLineColor(Color);
        Pen.Width := GridLineWidth;
        { полоска справа }
        MoveTo(Rect.Right, Rect.Top);
        LineTo(Rect.Right, Rect.Bottom);
        { полоска снизу }
        MoveTo(Rect.Left, Rect.Bottom - 1);
        LineTo(Rect.Right, Rect.Bottom - 1);
      end
      else
      begin
        Pen.Width := 1;
        { полоска справа }
        Pen.Color := clBtnShadow;
        MoveTo(Rect.Right - 2, Rect.Top);
        LineTo(Rect.Right - 2, Rect.Bottom - 2);
        Pen.Color := clBtnHighlight;
        MoveTo(Rect.Right - 1, Rect.Top);
        LineTo(Rect.Right - 1, Rect.Bottom - 2);
        { полоска снизу }
        Pen.Color := clBtnShadow;
        MoveTo(Rect.Left, Rect.Bottom - 2);
        LineTo(Rect.Right, Rect.Bottom - 2);
        Pen.Color := clBtnHighlight;
        MoveTo(Rect.Left, Rect.Bottom - 1);
        LineTo(Rect.Right, Rect.Bottom - 1);
      end;
    end
    else
      { рисуем рамку кнопки }
      PaintScrollBtnFrame(Handle, Rect, False);
  end;
end;

procedure TCustomDBGridView.PaintIndicatorImage(Rect: TRect; DataRow: Integer);
var
  I, X, Y, W, H: Integer;
  IL: TImageList;
  BKC, BLC: DWORD;
begin
  { получаем картинку индикатора }
  I := GetIndicatorImage(DataRow);
  if I = -1 then Exit;
  { получаем список картинок индикатора }
  IL := FIndicatorImages;
  if IL = nil then IL := FIndicatorsDef;
  { размер картинки }
  W := IL.Width;
  H := IL.Height;
  { положение картинки }
  X := Rect.Right - Rect.Left - W;
  X := Rect.Left + X div 2 - Ord(Fixed.Flat);
  if X + W > Rect.Right then W := Rect.Right - X;
  Y := Rect.Bottom - Rect.Top - H;
  Y := Rect.Top + Y div 2 - Ord(Fixed.Flat);
  if Y + H > Rect.Bottom then H := Rect.Bottom - Y;
  { цвета }
  BKC := ColorToRGB(IL.BkColor);
  BLC := ColorToRGB(IL.BlendColor);
  { рисуем }
  ImageList_DrawEx(IL.Handle, I, Canvas.Handle, X, Y, W, H, BKC, BLC, ILD_TRANSPARENT);
end;

function TCustomDBGridView.IsCellReadOnly(Cell: TGridCell): Boolean;
begin
  { менять содержимое строки редактирования для lookup или не текстовых
    полей нельзя }
  Result := inherited IsCellReadOnly(Cell) or IsReadOnlyField(Columns[Cell.Col].Field);
end;

function TCustomDBGridView.IsFixedVisible: Boolean;
begin
  Result := (Columns.Count > 0) and (Fixed.Count > 0);
end;

procedure TCustomDBGridView.SetEditText(Cell: TGridCell; var Value: string);
begin
  { устанавливать текст можно только в текущую ячейку редактирования }
  if IsCellEqual(Cell, EditCell) and DataLink.Active and
    (not ReadOnly) and (not IsReadOnlyField(EditField)) then
  begin
    inherited;
    { SetEditText вызывается автоматически при смене текущей ячейки или
      по завершению редактирования - обновляем источника данных }
    DataLink.UpdateData;
  end;
end;

procedure TCustomDBGridView.SetEditTextError(E: Exception; var Action: TDBGridSetTextAction);
begin
  if Assigned(FOnSetEditTextError) then FOnSetEditTextError(Self, E, Action);
end;

procedure TCustomDBGridView.Resize;
begin
  UpdateRowCount;
  UpdateScrollPos;
  inherited;
end;

procedure TCustomDBGridView.UpdateData;
var
  Action: TDBGridSetTextAction;
begin
  { устанавливать новое значение поля можно только если вызов идет из
    источника данных и значение поля подлежит изменению }
  if DataLink.Active and (DataLink.InUpdateData <> 0) and (not ReadOnly) and
    (EditField <> nil) and (not IsReadOnlyField(EditField)) and (Edit <> nil) then
  try
    EditField.Text := Edit.Text;
  except
    on E: Exception do
    begin
      Action := taFail;
      SetEditTextError(E, Action);
      if Action = taFail then raise;
      if Action = taAbort then SysUtils.Abort;
    end;
  end;
end;

procedure TCustomDBGridView.ApplyEdit;
begin
  { по завершению редактирования устанавливаем новое значение поля }
  DataLink.UpdateData;
  inherited;
end;

procedure TCustomDBGridView.CancelEdit;
begin
  { при отмене редактирования сбрасываем режим редактирования текущего
    поля источника }
  DataLink.Reset;
  inherited;
end;

function TCustomDBGridView.GetClientRect: TRect;
begin
  Result := inherited GetClientRect;
  { слева от таблицы рисуется индикатор }
  if ShowIndicator then Inc(Result.Left, IndicatorWidth);
end;

function TCustomDBGridView.GetIndicatorHeaderRect: TRect;
begin
  Result := GetHeaderRect;
  Result.Left := GetIndicatorRect.Left;
  Result.Right := GetIndicatorRect.Right;
end;

function TCustomDBGridView.GetIndicatorFixedRect: TRect;
begin
  Result := GetFixedRect;
  Result.Left := GetIndicatorRect.Left;
  Result.Right := GetIndicatorRect.Right;
end;

function TCustomDBGridView.GetIndicatorImage(DataRow: Integer): Integer;
begin
  Result := -1;
  { картинку имеет только текущая строка }
  if DataRow = DataLink.ActiveRecord then
  begin
    Result := 0;
    { смотрим редактирование или вставку записи источника }
    if DataLink.DataSet <> nil then
      case DataLink.DataSet.State of
        dsEdit: Result := 1;
        dsInsert: Result := 2;
      end;
  end;
  { спрашиваем пользователя }
  if Assigned(FOnGetIndicatorImage) then FOnGetIndicatorImage(Self, DataRow, Result); 
end;

function TCustomDBGridView.GetIndicatorRect: TRect;
begin
  Result := GetClientRect;
  Result.Left := 0;
  Result.Right := IndicatorWidth;
end;

function TCustomDBGridView.GetIndicatorImageRect(DataRow: Integer): TRect;
begin
  Result := GetIndicatorRect;
  Result.Top := GetRowTopBottom(DataRow).Top;
  Result.Bottom := GetRowTopBottom(DataRow).Bottom;
end;

procedure TCustomDBGridView.LockLayout;
begin
  LockUpdate;
  Inc(FLayoutLock);
  if FLayoutLock = 1 then Columns.BeginUpdate;
end;

procedure TCustomDBGridView.LockScrool;
begin
  Inc(FScrollLock);
  if FScrollLock = 1 then
  begin
    FScrollCell := CellFocused;
    FScrollSelected := CellSelected;
  end;
end;

procedure TCustomDBGridView.MakeCellVisible(Cell: TGridCell; PartialOK: Boolean);
begin
  { т.к. вертикальные перемещения по таблице осуществляются за счет
    перемещения по записям источника данных, то сделать видимой ячейку,
    находящуюся не на текущей строке, нельзя }
  if Cell.Row = CellFocused.Row then inherited MakeCellVisible(Cell, PartialOK);
end;

procedure TCustomDBGridView.SetCursor(Cell: TGridCell; Selected, Visible: Boolean);
var
  IC: TGridCell;
begin
  IC := CellFocused;
  { если смещение курсора блокировано, то просто запоминаем новое положение }
  if (FScrollLock <> 0) and (FCursorFromDataSet = 0) then
  begin
    FScrollCell := Cell;
    FScrollSelected := Selected;
    Exit;
  end;
  { вертикальные перемещения по таблице осуществляются только при
    перемещении по записям источника данных }
  if FCursorFromDataSet = 0 then Cell.Row := CellFocused.Row;
  { смещаем курсор }
  if IC.Row <> Cell.Row then InvalidateIndicatorImage(Row);
  inherited SetCursor(Cell, Selected, Visible);
  if IC.Row <> Cell.Row then InvalidateIndicatorImage(Row);
end;

procedure TCustomDBGridView.UndoEdit;
begin
  { если поле изменено, то отменяем изменения }
  if DataLink.FModified then DataLink.Reset;
end;

procedure TCustomDBGridView.UnLockLayout(CancelChanges: Boolean);
begin
  if FLayoutLock = 1 then
  begin
    if not CancelChanges then UpdateLayout;
    Columns.EndUpdate;
  end;
  Dec(FLayoutLock);
  UnLockUpdate(False);
end;

procedure TCustomDBGridView.UnLockScrool(CancelScroll: Boolean);
begin
  Dec(FScrollLock);
  { проверяем изменение фокуса }
  if (FScrollLock = 0) and ((not IsCellEqual(FScrollCell, CellFocused)) or
    (FScrollSelected <> CellSelected)) then
  begin
    { устанавливаем фокус на ячейку }
    SetCursor(GridCell(FScrollCell.Col, CellFocused.Row), FScrollSelected, True);
    { сдвигаем источник данных }
    if (not CancelScroll) and (FScrollCell.Row <> CellFocused.Row) then
    begin
      if (not FDataLink.Active) or (FDataLink.DataSet = nil) then Exit;
      FDataLink.MoveBy(FScrollCell.Row - CellFocused.Row);
    end;
  end;
end;

procedure TCustomDBGridView.UpdateCursorPos;
var
  Cell: TGridCell;
begin
  Inc(FCursorFromDataSet);
  try
    { проверяем активность источника }
    if FDataLink.Active then
    begin
      Cell.Col := CellFocused.Col;
      Cell.Row := FDataLink.ActiveRecord;
    end
    else
      Cell := GridCell(0, 0);
    { ставим курсор на текущую запись }
    SetCursor(Cell, CellSelected, True);
  finally
    Dec(FCursorFromDataSet);
  end;
end;

procedure TCustomDBGridView.UpdateLayout;
var
  I: Integer;
  List: TList;
  Column: TDBGridColumn;

{$IFDEF EX_D4_UP}

  procedure GetFields(Fields: TFields);
  var
    I: Integer;
  begin
    for I := 0 to Fields.Count - 1 do
    begin
      List.Add(Fields[I]);
      if Fields[I].DataType in [ftADT, ftArray] then
        GetFields((Fields[I] as TObjectField).Fields);
    end;
  end;

{$ENDIF}

begin
  if ([csLoading, csDestroying] * ComponentState) <> [] then Exit;
  { если используются колонки по молчанию, то пересоздаем их }
  if FDefaultLayout then
  begin
    if FDataLink.Active and (FDataLink.DataSet <> nil) then
    begin
      List := TList.Create;
      try
        { получаем список всех полей источника данных }
{$IFDEF EX_D4_UP}
        GetFields(FDataLink.DataSet.Fields);
{$ELSE}
        with FDataLink.DataSet do
          for I := 0 to FieldCount - 1 do List.Add(Fields[I]);
{$ENDIF}
        { уравниваем количество колонок и количество полей источника
          (конечно, можно просто очистить список колонок и заполнить
          его заново, но тогда вылезают глюки типа AV в Delphi при
          редактировании колонок в Design mode) }
        while (List.Count > 0) and (Columns.Count < List.Count) do Columns.Add;
        while (Columns.Count > 0) and (Columns.Count > List.Count) do Columns[0].Free;
        { сбрасываем поля остальных колонок в значения по умолчанию }
        for I := 0 to List.Count - 1 do
        begin
          Column := Columns[I];
{$IFDEF EX_D4_UP}
          Column.FieldName := TField(List[I]).FullName;
{$ELSE}
          Column.FieldName := TField(List[I]).FieldName;
{$ENDIF}
          Column.Field := nil;
          Column.RestoreDefaults;
          Column.FDefaultColumn := True;
        end;
      finally
        List.Free;
      end;
    end
    else
      Columns.Clear;
    { синхронизируем заголовок }
    Header.FullSynchronizing := True;
    Header.Synchronized := True;
  end
  else
    { сбрасываем ссылку на поле существующих колонок }
    for I := 0 to Columns.Count - 1 do
    begin
      Column := Columns[I];
      Column.Field := nil;
      { если это колонка по умолчанию, то обновляем ее поля }
      if Column.DefaultColumn then
      begin
        Column.RestoreDefaults;
        Column.FDefaultColumn := True;
      end;
    end;
  { подправляем количество фиксированных }
  Fixed.SetCount(Fixed.Count);
  { обновляем количество строк, положение курсора }
  UpdateRowCount;
  UpdateCursorPos;
end;

procedure TCustomDBGridView.UpdateRowCount;

  procedure SetRowsCount(Value: Integer);
  begin
    with TDBGridRows(Rows) do
    begin
      Inc(FRowsFromGrid);
      try
        SetCount(Value);
      finally
        Dec(FRowsFromGrid);
      end;
    end;
  end;

begin
  if DataLink.Active then
  begin
    { размер буфера DataLink устанавливаем равным количеству целиком
      видимых строк }
    FDataLink.BufferCount := GetGridHeight div Rows.Height;
    SetRowsCount(FDataLink.RecordCount);
  end
  else
    SetRowsCount(0);
end;

end.
