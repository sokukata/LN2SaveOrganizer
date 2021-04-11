echo off
setlocal
call config.bat


:: name of the folder
set saveName=%1

set saveToUse=%saveFolder%\%saveName%

:: Copied files will overwrite the old one
robocopy %saveToUse% %ln2Saves% *.sav

echo.
echo The following files have been copied from '%saveName%' saves folder:
echo.
for %%i in (%saveToUse%\*) do echo %%~ni

:: number between underscore in both file give you the save overwrited, be sure to load good save in game
:: _0_ -> save 1
:: _1_ -> save 2
:: _2_ -> save 3