
procedure TFormTRTM.ExportTRTMTableToPlaintTextFile( fname : string );
Var
  TableTextFile : TextFile;  
  cntrow,
  cntcol,
  cntcel        : word;
begin
  AssignFile( TableTextFile, fname );
  Rewrite( TableTextFile );
  // write the header
  write( TableTextFile, '¹' + #9 ); // skip the first column - it's for desc.
  // write getting worse numbers
  write( TableTextFile, ' ' );      // blank because of desc. cell
  write( TableTextFile, #9 );
  for cntrow := 1 to MAX_ID do
  begin
    write( TableTextFile, cntrow );    
    write( TableTextFile, #9 );
  end;  
  writeln( TableTextFile, '' );
  write( TableTextFile, ' ' );
  write( TableTextFile, #9 );
  // new row: descriptions
  write( TableTextFile, TXT_CHANGING + '/' + TXT_GETTING_WORSE );
  write( TableTextFile, #9 );
  // write getting worse objects
  for cntrow := 1 to MAX_ID do
  begin
    write( TableTextFile, trtm_main_table[cntrow].desc );
    write( TableTextFile, #9 );
  end;
  writeln( TableTextFile, '' );
  // write main table. start from a new row.
  for cntrow := 1 to MAX_ID do
  begin
    write( TableTextFile, cntrow );
    write( TableTextFile, #9 );
    write( TableTextFile, trtm_main_table[cntrow].desc );
    write( TableTextFile, #9 );
    for cntcol := 1 to MAX_ID  do
    begin
      if trtm_main_table[cntrow].sol[cntcol][1] = 0 then
      begin
        // empty cell
        write( TableTextFile, '-' );
      end else 
      begin
        for cntcel := 1 to MAX_METHODS_PER_CELL do
        begin
          if trtm_main_table[cntrow].sol[cntcol][cntcel] = 0 then
            break;
          write( TableTextFile, trtm_main_table[cntrow].sol[cntcol][cntcel] );
          write( TableTextFile, ' ' );
        end;
      end;
      write( TableTextFile, #9 );
    end;
    writeln( TableTextFile, '' );
  end;
  CloseFile( TableTextFile );
end;

procedure TFormTRTM.ExportTRTMTableToHtmlFile( fname : string );
Var
  TableHtmlFile : TextFile;  
  cntrow,
  cntcol,
  cntcel        : word;
begin
  AssignFile( TableHtmlFile, fname );
  Rewrite( TableHtmlFile );
  // write the header
  write( TableHtmlFile, '<html><head><meta http-equiv="Content-Type"'+
                        ' content="text/html; charset=windows-1251"><title>' +
                        TXT_TABLE_NAME + '</title><body><H1>' + 
                        TXT_TABLE_NAME + 
                        '</H1>' 
       );
  write( TableHtmlFile, '<table border=2><tr><td>' );
  write( TableHtmlFile, '¹' ); // skip the first column - it's for desc.
  write( TableHtmlFile, '</td><td>' );
  // write getting worse numbers
  write( TableHtmlFile, ' ' );      // blank because of desc. cell
  write( TableHtmlFile, '</td><td>' );
  for cntrow := 1 to MAX_ID do
  begin
    write( TableHtmlFile, cntrow );    
   write( TableHtmlFile, '</td><td>' );
  end;  
  writeln( TableHtmlFile, '</td></tr><tr><td>' );
  write( TableHtmlFile, ' ' );
  write( TableHtmlFile, '</td><td>' );
  // new row: descriptions
  write( TableHtmlFile, TXT_CHANGING + '/' + TXT_GETTING_WORSE );
  write( TableHtmlFile, '</td><td>' );
  // write getting worse objects
  for cntrow := 1 to MAX_ID do
  begin
    write( TableHtmlFile, trtm_main_table[cntrow].desc );
    write( TableHtmlFile, '</td><td>' );
  end;
  writeln( TableHtmlFile, '</td></tr><tr><td>' );
  // write main table. start from a new row.
  for cntrow := 1 to MAX_ID do
  begin
    write( TableHtmlFile, cntrow );
    write( TableHtmlFile, '</td><td>' );
    write( TableHtmlFile, trtm_main_table[cntrow].desc );
    write( TableHtmlFile, '</td><td>' );
    for cntcol := 1 to MAX_ID  do
    begin
      if trtm_main_table[cntrow].sol[cntcol][1] = 0 then
      begin
        // empty cell
        write( TableHtmlFile, '-' );
      end else 
      begin
        for cntcel := 1 to MAX_METHODS_PER_CELL do
        begin
          if trtm_main_table[cntrow].sol[cntcol][cntcel] = 0 then
            break;
          write( TableHtmlFile, trtm_main_table[cntrow].sol[cntcol][cntcel] );
          write( TableHtmlFile, ' ' );
        end;
      end;
      write( TableHtmlFile, '</td><td>' );
    end;
    writeln( TableHtmlFile, '</td></tr><tr><td>' );    
  end;
  writeln( TableHtmlFile, '</td></tr>' );
  writeln( TableHtmlFile, '</table>' );
  writeln( TableHtmlFile, '<small>' + MSG_ABOUT_HTM + '</small>' );
  writeln( TableHtmlFile, '</body></html>' );
  CloseFile( TableHtmlFile );
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
