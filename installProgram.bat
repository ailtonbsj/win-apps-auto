rem Subroutine to install programs
set workDir=%cd%
set workDrive=%cd:~0,2%

call "C:\Program Files\WinRAR\UnRAR.exe" x ".\apps\%~1.rar" %temp%
copy "silent\%~1.bat" %temp%\%~1\
c:
cd "%temp%\%~1"
echo "Installing %1 ..."
call %~1.bat
%workDrive%
cd "%workDir%"
rmdir /s /q "%temp%\%~1\"

echo "Installed %1 !"