@echo off

for /f "tokens=1-8 delims=.:/-, " %%i in ('echo exit^|cmd /q /k"prompt $D $T"') do (
	for /f "tokens=2-4 delims=/-,() skip=1" %%a in ('echo.^|date') do (
		set dow=%%i
		set mm=%%j
		set dd=%%k
		set yy=%%l
		set hh=%%m
		set min=%%n
		set sec=%%o
		set hsec=%%p
	)
)

if %hh%==0 set hh=00
if %hh%==1 set hh=01
if %hh%==2 set hh=02
if %hh%==3 set hh=03
if %hh%==4 set hh=04
if %hh%==5 set hh=05
if %hh%==6 set hh=06
if %hh%==7 set hh=07
if %hh%==8 set hh=08
if %hh%==9 set hh=09

set timeStamp=%yy%%mm%%dd%-%hh%%min%%sec%
set timeStampLong=%yy%-%mm%-%dd% %hh%:%min%:%sec%