set profile=LabUser

	rem log out all users except that running this script
@echo off
query session > session.txt
for /f "skip=2 tokens=2,3,4" %%i in (session.txt) DO if not "%%i"== "%USERNAME%"  logoff %%j
	
	rem delete local profile
RMDIR /S /Q C:\Users\%profile%
rem net user LabUser13 /del

rem net user LabUser13 LabUser13 /add


del session.txt


	rem log user in- this would be nice to have
	rem shut down




