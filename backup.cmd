@ECHO OFF

REM backupergonline.cmd
REM This script creates a full backup of a joomla website
REM Written by: Rene Kreijveld, Rene Kreijveld Webdevelopment
REM email@renekreijveld.nl

REM Set path to 7-Zip
SETLOCAL
SET PATH=%PATH%;C:\Program Files\7-Zip

REM Gop to root of your joomla website
CD \websiteroot
REM Create MySQL dump
call "c:\scripts\jinfo.cmd" > nul
mysqldump --skip-opt --add-drop-table --create-options --disable-keys --quick --set-charset --user=%juser% --password=%jpassword% %jdb% > %jdb%.sql
REM Create backup
call "c:\scripts\datumtijd.cmd" > nul
7z.exe a -r %jsitename%.zip *.* > nul
REM Cleanup database dump
DEL %jdb%.sql
