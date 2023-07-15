@echo off
chcp 65001
cls

pushd %~dp0

set "SystemDir=%~d0\.."
set "FontDir=%~dp0"

:copyFonts
set "WinFontDir=%SystemDir%\Windows\Fonts\"
echo current font dir is : %FontDir%
echo copy to : %WinFontDir%
xcopy "%FontDir%*.ttc" "%WinFontDir%" /y /g /i

pause