echo off
setlocal
call config.bat

set saveName=%1

:: number of the save
:: 0 -> save 1
:: 1 -> save 2
:: 2 -> save 3
set saveNumber=%2

set saveToCreate=%saveFolder%\%saveName%

mkdir %saveToCreate%

:: Copied files will overwrite the old one
robocopy %ln2Saves% %saveToCreate% *_%saveNumber%_*.sav

