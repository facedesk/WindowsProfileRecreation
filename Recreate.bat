set profile=labuser

	rem log out all users except that running this script
@echo off
query session > session.txt
for /f "skip=2 tokens=2,3,4" %%i in (session.txt) DO if not "%%i"== "%USERNAME%"  logoff %%j
	
	rem delete local profile
echo  deleting C:\Users\%profile%
RMDIR /S /Q C:\Users\%profile%
RMDIR /S /Q C:\Users\TEMP


net user %profile% /del
net user %profile% %profile% /add



del session.txt


	rem log user in- this would be nice to have
	rem shut down
