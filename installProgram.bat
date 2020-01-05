rem Subroutine to install programs
set workDir=%cd%

call "C:\Program Files\WinRAR\UnRAR.exe" x "%~1.rar" %temp%
cd "%temp%\%~1"
echo "Installing %1 ..."
call silent.bat
cd "%workDir%"
rmdir /s /q "%temp%\%~1\"

echo "Installed %1 !"