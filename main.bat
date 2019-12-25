set workDir=%cd%

rem Installing WinRAR
call unzip.bat "%workDir%" "%workDir%\WinRAR 5.71 [win64].zip"
cd "%workDir%\WinRAR 5.71 [win64]"
call silent.bat
cd "%workDir%"
rmdir /s /q "%workDir%\WinRAR 5.71 [win64]\"

rem Installing on Win10
if "%1" == "Win10" (
    call :installProgram "Acrobat Reader DC [win10]"
)

rem Installing on Win7
if "%1" == "Win7" (
    call :installProgram "Acrobat Reader 11 [win7]"
    call :installProgram "Framework .NET 4.0 [win7]"
)

rem Installing Generics
call :installProgram "VLC Media Player 3.0.7 [win64]"
call :installProgram "GIMP 2.10.14 [win64]"
call :installProgram "K-Lite Codec Pack 15.0.4 [win]"
call :installProgram "LibreOffice 6.1.6 [win64]"
call :installProgram "Windows Movie Maker 2012 [win]"
call :installProgram "Inkscape 0.92 [win64]"
call :installProgram "Visual Studio Code 1.40.1 [win64]"
call :installProgram "CCleaner 5.63 [win64]"
call :installProgram "ImgBurn 2.5.8 [win]"
call :installProgram "FormatFactory 4.3 [win]"
goto:eof

rem Subroutine to install programs
:installProgram
call "C:\Program Files\WinRAR\UnRAR.exe" x "%~1.rar"
cd "%workDir%\%~1"
call silent.bat
cd "%workDir%"
rmdir /s /q "%workDir%\%~1\"
exit /b
