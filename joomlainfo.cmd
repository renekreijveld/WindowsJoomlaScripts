@ECHO OFF

REM Retrieve Joomla info
call "c:\scripts\jinfo.cmd" > nul

REM Output data
ECHO Sitename = %jsitename%
ECHO Host     = %jhost%
ECHO Database = %jdb%
ECHO User     = %juser%
ECHO Password = %jpassword%
ECHO Prefix   = %jprefix%