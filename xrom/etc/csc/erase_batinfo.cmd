@ECHO OFF
REM Version:   V01
REM Date:                 20190114
REM ============== setting ==============
CLS

call:erase
pause
EXIT 0

rem goto END
REM ============== flash() ==============
:erase 
ECHO "fastboot erase batinfo"
fastboot erase batinfo
echo errorlevel="%ERRORLEVEL%"
IF "%ERRORLEVEL%" == "0" (
         ECHO "Success: fastboot erase batinfo %FILE% , EXIT!"
         ECHO "Device reboot!"
         fastboot reboot
         GOTO:EOF
)

ECHO "FAILED: fastboot erase batinfo %FILE% failure, EXIT!"
GOTO:EOF
:END
