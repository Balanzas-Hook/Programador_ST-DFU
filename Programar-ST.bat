@ECHO OFF
SET index=1
SETLOCAL ENABLEDELAYEDEXPANSION
FOR %%f IN (*.hex) DO (
   SET file!index!=%%f
   ECHO !index! - %%f
   SET /A index=!index!+1
)
SETLOCAL DISABLEDELAYEDEXPANSION
SET /P selection="select file by number: "
SET file%selection% >nul 2>&1
IF ERRORLEVEL 1 (
   ECHO invalid number selected   
   EXIT /B 1
)
CALL :RESOLVE %%file%selection%%%
goto BUCLE
GOTO :EOF

:RESOLVE
SET file_name=%1
goto :EOF

:BUCLE
ECHO ------------------------------------
ECHO PROGRAMANDO %file_name%
ECHO ------------------------------------
pause
dfu-programmer.exe at32uc3c1512 erase
dfu-programmer at32uc3c1512 flash --force --user "%file_name%" --suppress-bootloader-mem
dfu-programmer at32uc3c1512 flash --force "%file_name%" --suppress-bootloader-mem
dfu-programmer at32uc3c1512 launch
goto BUCLE