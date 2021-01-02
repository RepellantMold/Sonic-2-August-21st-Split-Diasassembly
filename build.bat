@echo off
echo Making s2built.prev.bin...
IF EXIST s2built.bin move /Y s2built.bin s2built.prev.bin >NUL
echo Done.
cls
echo Building the ROM...
asm68k /c /q /p /o l+ /o ae- S2210892.asm, s2built.bin, DEBUG.OUT, s2.lst >error.log
IF NOT EXIST s2built.bin goto LABLERR
echo Build successful!
rompad.exe s1built.bin 255 0
goto LABLDONE
:LABLERR
echo Build failed, look below for why.
type error.log
:LABLDONE
pause