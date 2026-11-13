REM Open file for trtm project
IF EXIST c:\edit\mew\mew32.exe GOTO DISC_C
IF EXIST d:\edit\mew\mew32.exe GOTO DISC_D
IF EXIST e:\edit\mew\mew32.exe GOTO DISC_E
:DISC_C
 start c:\edit\mew\mew32.exe /SN"trtm - Delphi 4" /NOSPLASH
 GOTO exit
:DISC_D
 start d:\edit\mew\mew32.exe /SN"trtm - Delphi 4" /NOSPLASH
 GOTO exit
:DISC_E
 start e:\edit\mew\mew32.exe /SN"trtm - Delphi 4" /NOSPLASH
:exit

