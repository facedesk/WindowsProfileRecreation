set profile=labuser > log.txt 2>&1

	rem log out all users except that running this script
@echo off
query session > session.txt
for /f "skip=2 tokens=2,3,4" %%i in (session.txt) DO if not "%%i"== "%USERNAME%"  logoff %%j
	
	rem delete local profile
echo  deleting C:\Users\%profile% > log.txt 2>&1
RMDIR /S /Q C:\Users\%profile% > log.txt 2>&1
RMDIR /S /Q C:\Users\TEMP > log.txt 2>&1


net user %profile% /del > log.txt 2>&1
net user %profile% %profile% /add > log.txt 2>&1



del session.txt > log.txt 2>&1


	rem log user in- this would be nice to have
	rem shut down
