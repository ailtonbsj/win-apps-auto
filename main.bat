set workDir=%cd%
set workDrive=%cd:~0,2%

echo "Installing WinRAR"
call unzip.bat "%temp%" "%workDir%\WinRAR 5.71 [win64].zip"
c:
cd "%temp%\WinRAR 5.71 [win64]"
call silent.bat
%workDrive%
cd "%workDir%"
rmdir /s /q "%temp%\WinRAR 5.71 [win64]\"

echo "Installing on Win10"
if "%1" == "Win10" (
    call installProgram "win10Fix"
    call installProgram.bat "Acrobat Reader DC [win10]"
)

echo "Installing on Win7 SP1"
if "%1" == "Win7" (
    call installProgram.bat "Acrobat Reader 11 [win7]"
    call installProgram.bat "Framework .NET 4.0 [win7]"
)

echo "Installing Generics"
call installProgram.bat "VLC Media Player 3.0.7 [win64]"
call installProgram.bat "GIMP 2.10.14 [win64]"
call installProgram.bat "K-Lite Codec Pack 15.0.4 [win]"
call installProgram.bat "LibreOffice 6.1.6 [win64]"
call installProgram.bat "Windows Movie Maker 2012 [win]"
call installProgram.bat "Inkscape 0.92 [win64]"
call installProgram.bat "Visual Studio Code 1.40.1 [win64]"
call installProgram.bat "CCleaner 5.63 [win64]"
call installProgram.bat "ImgBurn 2.5.8 [win]"
call installProgram.bat "Java SE Runtime Environment 8 [win64]"
call installProgram.bat "Java Development Kit 11 [win64]"
call installProgram.bat "PhotoScape 3.7 [win]"
call installProgram.bat "Google Chrome 79.0 [win64]"
call installProgram.bat "Firefox 71.0 [win64]"
call installProgram.bat "WPS Office 11.2 [win64]"
call installProgram.bat "AnyDesk 5.4.2 [win]"
call installProgram.bat "Transmission 2.94 [win64]"
call installProgram.bat "4k Slideshow Maker [win64]"
call installProgram.bat "FormatFactory 4.3 [win]"
call installProgram.bat "Audacity 2.3.3 [win]"
call installProgram.bat "PDFSam 4.0.5 [win64]"
call installProgram.bat "WinCDEmu 4.1 [win64]"
call installProgram.bat "Kaspersky Free 20.0.14 [win64]"
call installProgram.bat "CopySpider 1.6.0 [win]"

echo "Finalizado. Voce DEVE reiniciar a maquina agora."