rem Subroutine to install programs
set workDir=%cd%
set workDrive=%cd:~0,2%

call "C:\Program Files\WinRAR\UnRAR.exe" x "%~1.rar" %temp%
c:
cd "%temp%\%~1"
echo "Installing %1 ..."
call silent.bat
%workDrive%
cd "%workDir%"
rmdir /s /q "%temp%\%~1\"

echo "Installed %1 !"