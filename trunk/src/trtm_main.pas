unit trtm_main;

interface

uses trtm_types, trtm_table, sysutils;



type
  TTRTMProblem = class(TObject)
    private
      fproblem   : TTRTM_Object_Analysis;

      function    FindMethods ( obj_num : word; obj : word; bad : word; Var met : TPTRTM_Methods_Cell ): integer;
      function    MarkUsedMethods : integer;
      function    ShowAllMethods : string;
      function    ShowPopularMethods : string;
      function    ShowPopularMethodsContent : string;
    public
      constructor Create;
      destructor  Destroy; override;
      procedure   Clean;
      function    ProcessTask( obj : word; bobj : TTRTM_Objects_Set ) : integer;
    published
      property    AllMethods     : string read ShowAllMethods;
      property    PopularMethods : string read ShowPopularMethods;
      property    PopularMethodsContent : string read ShowPopularMethodsContent;
      property    Problem        : TTRTM_Object_Analysis read fproblem;
    end;

implementation

constructor TTRTMProblem.Create;
begin
  Clean;
end;

destructor  TTRTMProblem.Destroy;
begin
  Clean;
end;

//*******************************************************************************
//  ProcessTask
//
//*******************************************************************************
function TTRTMProblem.ProcessTask( obj : word; bobj : TTRTM_Objects_Set ) : integer;
Var
  cnt,
  len  : word;
  res  : integer;
  met  : TTRTM_Methods_Cell;
  pmet : TPTRTM_Methods_Cell;
  metn : word;
begin
  Clean;
  fproblem.obj_id   := obj;
  fproblem.all      := nil;
  fproblem.bobj_ids := nil;
  len               := length( bobj );

  SetLength( fproblem.bobj_ids, len );
  Result := -1;
  if len = 0 then
    Exit;
  pmet := @met;

  // Copy all modified properties to the fproblem.bobj_ids[] array
  // and fill fproblem.all[][1..4] with methods.
  for cnt := 0 to len-1 do
  begin
    fproblem.bobj_ids[cnt] := bobj[cnt];
    res := FindMethods( 0, obj, bobj[cnt], pmet );
    if ( res = 0 ) then
    begin
      SetLength( fproblem.all, length( fproblem.all ) + 1 );
      for metn := 1 to MAX_METHODS_PER_CELL do
      begin
        fproblem.all[cnt][metn] := met[metn];
      end;
    end;
  end;
  MarkUsedMethods;
end; // ProcessTask

//*******************************************************************************
//  FindMethods - 04/14/2005 12:25
//
//*******************************************************************************
function TTRTMProblem.FindMethods ( obj_num : word; obj : word; bad : word; Var met : TPTRTM_Methods_Cell ): integer;
Var
  cnt : word;
begin
  for cnt := 1 to MAX_METHODS_PER_CELL do
    met[cnt] := trtm_main_table[ obj ].sol[ bad ][cnt];
  Result := 0;
end; // FindMethods

//*******************************************************************************
//  MarkUsedMethods - 04/14/2005 1:04
// Parameters:
//
// Result:
//
// Notes:
//
//*******************************************************************************
function TTRTMProblem.MarkUsedMethods : integer;
Var
  len,
  metn,
  cnt : word;
begin
  Result := 0;

  len := length( fproblem.all );
  if ( len = 0 ) then
  begin
    Exit;
  end;
  for cnt := 0 to len-1 do
  begin
    for metn := 1 to MAX_METHODS_PER_CELL do
    begin
      if ( fproblem.all[cnt][metn] <> 0 ) then
        inc(fproblem.unique[fproblem.all[cnt][metn]]);
    end;
  end;
  Result := 0;
end; // MarkUsedMethods

function TTRTMProblem.ShowAllMethods : string;
Var
  cnt,
  bcnt,
  blen       : word;
  need_comma : boolean;
begin
  Result     := '';
  need_comma := False;
  blen       := length( fproblem.all );
  if blen = 0 then
    Exit;
  for bcnt := 0 to blen-1 do
  begin
    Result     := Result + '(' + IntToStr(fproblem.bobj_ids[bcnt]) + ')';
    for cnt := 1 to MAX_METHODS_PER_CELL do
    begin
      if fproblem.all[bcnt][cnt] > 0 then
      begin
        if need_comma then
          Result := Result + ', '
        else
          need_comma := True;
        Result := Result + IntToStr( fproblem.all[bcnt][cnt] );
      end;
    end;
    Result     := Result + '; ';
    need_comma := False;
  end;
end;

// Этот метод возвращает список и расшифровку всех
// методов, которые встречаются хотя-бы 1 раз.
function TTRTMProblem.ShowPopularMethodsContent : string;
Var
  cnt : word;
begin
  Result := '';
  if fproblem.all = nil then
    Exit;
  for cnt := 1 to MAX_METHODS do
  begin
    if ( fproblem.unique[cnt] >= 1 ) then
    begin
      if Result <> '' then
        Result := Result + #13#10 + #13#10;
      Result := Result + IntToStr(cnt) + '. ' + trtm_methods_txt[cnt].mname + #13#10 +  trtm_methods_txt[cnt].mexample1;
    end;
  end;
end;

// Этот метод возвращает список всех
// методов, которые встречаются более 1 раза!!!
function TTRTMProblem.ShowPopularMethods : string;
Var
  cnt : word;
begin
  Result := '';
  if fproblem.all = nil then
    Exit;
  for cnt := 1 to MAX_METHODS do
  begin
    if ( fproblem.unique[cnt] > 1 ) then
    begin
      if Result <> '' then
        Result := Result + ', ' + IntToStr( cnt )
      else
        Result := IntToStr( cnt );
    end;
  end;
end;

procedure TTRTMProblem.Clean;
Var
  cnt : word;
begin
  // release the memory taken for problems and methods
  fproblem.all      := nil;
  fproblem.bobj_ids := nil;
  // clear popularity of methods
  for cnt := 1 to MAX_METHODS do
    fproblem.unique[cnt] := 0;
end;

end.










