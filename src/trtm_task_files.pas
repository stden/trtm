procedure TFormTRTM.SaveTaskFileInHistory( fname : string );
begin
  
end;

function TFormTRTM.GetMemoAsString( memo : TMemo ) : string;
Var
  cnt          : word;
begin
  Result := '';
  if memo.Lines.Count = 0 then Exit;
  for cnt := 0 to memo.Lines.Count-1 do
  begin
    Result := Result + memo.Lines[cnt];
  end;   
end;

procedure TFormTRTM.SaveTaskToRizFile( fname : string );
Var
  TaskRizFile  : TIniFile;
  cnt          : word;
begin
  // + 1. �������� ������;
  // + 2. �������� ������������;
  // !+ 3. �������� ����������(�) ��������(�);
  // !+ 4. �������� ������������ ���������;
  // !+ 5. �������� ���������� ������;
  // !+ 6. �������� ������������ ������;
  // + 7. �������� �������� �������;
  // + 8. �������� ��� �����������;
  // + 9. �������� ��������� (�������)
  // 10. �������� ��������� (?)
  
  TaskRizFile := TIniFile.Create( fname );
  TaskRizFile.WriteString( INI_RIZ_SECTION_MAIN, INI_RIZ_PAR_AUTHOR, EditAuthor.Text );
  TaskRizFile.WriteString( INI_RIZ_SECTION_MAIN, INI_RIZ_PAR_PRJ_NAME, EditProjectName.Text );
  
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_TASK, GetMemoAsString( MemoTask ) );

  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_ADM, GetMemoAsString( MemoAP ) );
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_TECH, MemoTP.Text );
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_PHYS, MemoFP.Text );
  
  // Note! Change it for multiple problems!
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CHANGING, MethodGridContent[ 0, 0 ] );
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_GETTING_W, MethodGridContent[ 0, 1 ] );
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_GOOD_METH, MethodGridContent[ 0, 4 ] );
  TaskRizFile.WriteString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_BAD_METH, MethodGridContent[ 0, 5 ] );

  TaskRizFile.EraseSection( INI_RIZ_SECTION_RESULT );
  TaskRizFile.UpdateFile;
  if MemoResult.Lines.Count <> 0 then
    for cnt := 0 to MemoResult.Lines.Count-1 do
    begin
      TaskRizFile.WriteString( INI_RIZ_SECTION_RESULT, MemoResult.Lines[cnt], '' );
    end;
  //  ( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_RESULT, MemoResult.Text );

  TaskRizFile.Destroy;
end;



procedure TFormTRTM.SaveTaskToPlainTextFile( fname : string );
Var
  TaskTextFile : TextFile;  
begin
  NotRealizedYet;
end;

procedure TFormTRTM.SaveTaskToHtmlFile( fname : string );
Var
  TaskHtmlFile : TextFile;  
begin
  AssignFile( TaskHtmlFile, fname );
  Rewrite( TaskHtmlFile );
  ChartMethodsCharacteristics.SaveToBitmapFile( fname + '.bmp' );
  // write the header
  write( TaskHtmlFile, '<html><head><meta http-equiv="Content-Type"'+
                        ' content="text/html; charset=windows-1251"><title>' +
                        EditProjectName.Text + '</title><body><H1>' + 
                        EditProjectName.Text + 
                        '</H1>' 
       );
  write( TaskHtmlFile, '<H2 align=left>' + TXT_AUTHOR + ': ' + EditAuthor.Text + '</H2>' );
  write( TaskHtmlFile, '<p><strong>' + TXT_TASK + ': ' + '</strong>' + MemoTask.Text + '</p>' );
  write( TaskHtmlFile, '<p align=center><font size=+2><strong>' + TXT_SOLUTION_IDEA + '</strong></font></p>' );
  write( TaskHtmlFile, '<p align=left><font size=+1><i>' + TXT_CONTR + '</i></font></p>' );
  write( TaskHtmlFile, '<p><strong>' + TXT_AC + ': ' + '</strong></p><p align=justify>' + MemoAP.Text + '</p>' );
  write( TaskHtmlFile, '<p><strong>' + TXT_TC + ': ' + '</strong></p><p align=justify>' + MemoTP.Text + '</p>' );
  write( TaskHtmlFile, '<p><strong>' + TXT_PHC + ': ' + '</strong></p><p align=justify>' + MemoFP.Text + '</p>' );
  
  writeln( TaskHtmlFile, '<table width="100%" border="0"><tr><td>' );
  writeln( TaskHtmlFile, TXT_PARAMETERS + ' ' + TXT_CHANGING );
  writeln( TaskHtmlFile, '</td><td>' );
  writeln( TaskHtmlFile, TXT_PARAMETERS + ' ' + TXT_GETTING_WORSE );
  writeln( TaskHtmlFile, '</td><td>' );
  writeln( TaskHtmlFile, TXT_METH_LIST );
  writeln( TaskHtmlFile, '</td><td>' );
  writeln( TaskHtmlFile, TXT_POPULAR_METH );
  writeln( TaskHtmlFile, '</td><td>' );
  writeln( TaskHtmlFile, TXT_GOOD_METH );
  writeln( TaskHtmlFile, '</td><td>' );
  writeln( TaskHtmlFile, TXT_NOT_GOOD_METH );
  writeln( TaskHtmlFile, '</td></tr>' );
  writeln( TaskHtmlFile, '<tr><td>' );
  
  // Note! Change it for multiple problems!
  write( TaskHtmlFile, MethodGridContent[ 0, 0 ] );
  writeln( TaskHtmlFile, '</td><td>' );
  write( TaskHtmlFile, MethodGridContent[ 0, 1 ] );
  writeln( TaskHtmlFile, '</td><td>' );
  write( TaskHtmlFile, MethodGridContent[ 0, 2 ] );
  writeln( TaskHtmlFile, '</td><td>' );
  write( TaskHtmlFile, MethodGridContent[ 0, 3 ] );
  writeln( TaskHtmlFile, '</td><td>' );
  write( TaskHtmlFile, MethodGridContent[ 0, 4 ] );
  writeln( TaskHtmlFile, '</td><td>' );
  write( TaskHtmlFile, MethodGridContent[ 0, 5 ] );
  
  writeln( TaskHtmlFile, '</td></tr></table>' );
  
  writeln( TaskHtmlFile, '<img src="' + ExtractFileName(fname) + '.bmp' + 
                         '" alt="' + TXT_GRAPHICS + '"></img>' );
//  writeln( TaskHtmlFile, '<img src="' + ExtractFileName(fname) + '.bmp' + 
//                         '" width="400" alt="' + TXT_GRAPHICS + '"></img>' );

  writeln( TaskHtmlFile, '<p><strong>' + TXT_SOLUTION + ': ' + '</strong></p><p align=justify>' + MemoResult.Text + '</p>' );
  
  
  //ChartMethodsCharacteristics.SaveToBitmapFile(
  writeln( TaskHtmlFile, '<hr><small><small>' + MSG_ABOUT_HTM + '</small></small>' );
  writeln( TaskHtmlFile, '</body></html>' );
  CloseFile( TaskHtmlFile );
end;

procedure TFormTRTM.SaveTaskToRtfFile( fname : string );
Var
  TaskTextFile : TextFile;  
begin
  NotRealizedYet;
  //RichEditAllMethods.PlainText
end;


procedure TFormTRTM.SaveTaskToFile( mode : word; fname : string );
begin
  case ( mode ) of
    SAVE_FILE_MODE_RIZ :
      begin
        SaveTaskToRizFile( fname );
      end;
    SAVE_FILE_MODE_TXT :
      begin
        SaveTaskToPlainTextFile( fname );
      end;
    SAVE_FILE_MODE_HTM :
      begin
        SaveTaskToHtmlFile( fname );
      end;
    SAVE_FILE_MODE_RTF :
      begin
        SaveTaskToRtfFile( fname );
      end;
  end;
end; 

procedure TFormTRTM.ReadTaskFromFile( fname : string );
Var
  TaskRizFile  : TIniFile;
begin
  // + 1. ��������� ������;
  // + 2. ��������� ������������;
  // !+ 3. ��������� ����������(�) ��������(�);
  // !+ 4. ��������� ������������ ���������;
  // !+ 5. ��������� ���������� ������;
  // !+ 6. ��������� ������������ ������;
  // + 7. ��������� �������� �������;
  // + 8. ��������� ��� �����������;
  // + 9. ��������� ��������� (�������)
  // 10. ��������� ��������� (?)

  TaskRizFile               := TIniFile.Create( fname );
  EditAuthor.Text           := TaskRizFile.ReadString( INI_RIZ_SECTION_MAIN, INI_RIZ_PAR_AUTHOR, EditAuthor.Text );
  EditProjectName.Text      := TaskRizFile.ReadString( INI_RIZ_SECTION_MAIN, INI_RIZ_PAR_PRJ_NAME, EditProjectName.Text );
  MemoTask.Text             := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_TASK, ' ' );
  MemoAP.Text               := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_ADM, ' ' );
  if MemoAP.Text = '' then
    MemoAP.Text := ' ';
  MemoTP.Text               := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_TECH, ' ' );
  if MemoTP.Text = '' then
    MemoTP.Text := ' ';
  MemoFP.Text               := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CONTR_PHYS, ' ' );
  if MemoFP.Text = '' then
    MemoFP.Text := ' ';

  // Note! Change it for multiple problems!
  MethodGridContent[ 0, 0 ] := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_CHANGING, '' );
  MethodGridContent[ 0, 1 ] := AppendWithSpaces( TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_GETTING_W, '' ) );
  MethodGridContent[ 0, 2 ] := '';
  MethodGridContent[ 0, 3 ] := '';
  MethodGridContent[ 0, 4 ] := AppendWithSpaces( TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_GOOD_METH, '' ) );
  MethodGridContent[ 0, 5 ] := AppendWithSpaces( TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_BAD_METH, '' ) );
  GridViewMethods.Refresh;

  MemoResult.Clear;
  TaskRizFile.ReadSection( INI_RIZ_SECTION_RESULT, MemoResult.Lines );
  //MemoResult.Text           := TaskRizFile.ReadString( INI_RIZ_SECTION_TASK, INI_RIZ_PAR_RESULT, '' );
  ButtonEvaluate.Click;
  TaskRizFile.Destroy;
end;







