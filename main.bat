set workDir=%cd%
set workDrive=%cd:~0,2%

echo "Installing WinRAR"
call unzip.bat "%temp%" "%workDir%\apps\winrar-5.71_x64.zip"
copy "silent\winrar-5.71_x64.bat" "%temp%\winrar-5.71_x64\"
c:
cd "%temp%\winrar-5.71_x64"
call winrar-5.71_x64.bat
%workDrive%
cd "%workDir%"
rmdir /s /q "%temp%\winrar-5.71_x64\"

echo "Installing on Win10"
if "%1" == "Win10" (
    call installProgram "win10-fast_x64"
    call installProgram.bat "acrobat-reader-dc_x64"
)

echo "Installing on Win7 SP1"
if "%1" == "Win7" (
    call installProgram.bat "acrobat-reader-11_x64"
    REM call installProgram.bat "Framework .NET 4.0 [win7]"
)

echo "Installing Generics"
call installProgram.bat "vlc-media-player-3.0_x64"
call installProgram.bat "gimp-2.10_x64"
REM call installProgram.bat "K-Lite Codec Pack 15.0.4 [win]"
REM call installProgram.bat "LibreOffice 6.1.6 [win64]"
REM call installProgram.bat "Windows Movie Maker 2012 [win]"
REM call installProgram.bat "Inkscape 0.92 [win64]"
REM call installProgram.bat "Visual Studio Code 1.40.1 [win64]"
REM call installProgram.bat "CCleaner 5.63 [win64]"
REM call installProgram.bat "ImgBurn 2.5.8 [win]"
REM call installProgram.bat "Java SE Runtime Environment 8 [win64]"
REM call installProgram.bat "Java Development Kit 11 [win64]"
REM call installProgram.bat "PhotoScape 3.7 [win]"
REM call installProgram.bat "Google Chrome 79.0 [win64]"
REM call installProgram.bat "Firefox 71.0 [win64]"
REM call installProgram.bat "WPS Office 11.2 [win64]"
call installProgram.bat "anydesk-5.4_x64"
REM call installProgram.bat "Transmission 2.94 [win64]"
call installProgram.bat "4k-slideshow-maker_x64"
REM call installProgram.bat "FormatFactory 4.3 [win]"
call installProgram.bat "audacity-2.3_x64"
REM call installProgram.bat "PDFSam 4.0.5 [win64]"
REM call installProgram.bat "WinCDEmu 4.1 [win64]"
REM call installProgram.bat "Kaspersky Free 20.0.14 [win64]"
REM call installProgram.bat "CopySpider 1.6.0 [win]"

echo "Finalizado. Voce DEVE reiniciar a maquina agora."