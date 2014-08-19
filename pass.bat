@echo off
set PASSWORD_STORE=C:\Users\%USERNAME%\.password-store
if not "%1" == "" (
	REM ## COPY THE KEY TO THE CLIPBOARD ##
	echo gpg -d %PASSWORD_STORE%\%1
	gpg -d %PASSWORD_STORE%\%1.gpg | clip

	REM ## WAIT 30 SECONDS ## 
	PING 1.1.1.1 -n 1 -w 30000 >NUL
	
	REM ## CLEAR THE CLIPBOARD ##
	echo "" | clip
)
if not defined 1 (
	REM ## SHOW THE PASSWORD STORE DIRECTORY LISTING ##
	tree /f %PASSWORD_STORE%
) 
