@echo off
set PASSWORD_STORE=C:\Users\%USERNAME%\.password-store
if "%1" == "show" (
	if "%2" == "" (
		echo Please enter a password file name: pass show [filename]
	)
	if not "%2" == "" (
		REM ## COPY THE KEY TO THE CLIPBOARD ##
		echo gpg -d %PASSWORD_STORE%\%2
		gpg -d %PASSWORD_STORE%\%2.gpg | clip

		REM ## WAIT 10 SECONDS ## 
		PING 1.1.1.1 -n 1 -w 10000 >NUL
		
		REM ## CLEAR THE CLIPBOARD ##
		echo "" | clip
	)
)
if "%1" == "generate" (
	echo Sorry, password generation is not yet supported
)

if "%1" == "" (
	REM ## SHOW THE PASSWORD STORE DIRECTORY LISTING ##
	tree /f %PASSWORD_STORE%
) 
