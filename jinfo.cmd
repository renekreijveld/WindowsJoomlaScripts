@ECHO OFF

REM Retrieve Sitename
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$sitename =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET jsitename=%%A
	)
)

REM Retrieve Host
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$host =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET jhost=%%A
	)
)

REM Retrieve DB User
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$user =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET juser=%%A
	)
)

REM Retrieve DB Password
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$password =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET jpassword=%%A
	)
)

REM Retrieve DB
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$db =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET jdb=%%A
	)
)

REM Retrieve DB prefix
FOR /F "tokens=4" %%G IN ('FINDSTR /C:"$dbprefix =" configuration.php') DO (
	FOR /F "tokens=1 delims='" %%A IN ('echo %%G') DO (
		SET jprefix=%%A
	)
)