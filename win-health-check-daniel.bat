@ECHO OFF
ECHO ============================
ECHO Checking integrity of the files
ECHO ============================
SFC /SCANNOW
ECHO.
ECHO ============================
ECHO Checking integrity of Windows image
ECHO ============================
DISM /Online /Cleanup-Image /ScanHealth
ECHO.
ECHO ============================
ECHO Defragmenting hard drive C:
ECHO ============================
defrag c: /u /v
ECHO.
PAUSE