set workDir=%cd%
set workDrive=%cd:~0,2%

echo "Installing WinRAR x86"
if "%2" == "x86" (
    call unzip.bat "%temp%" "%workDir%\apps\winrar-5.80_x86.zip"
    copy "silent\winrar-5.80_x86" "%temp%\winrar-5.80_x86"
    c:
    cd "%temp%\winrar-5.80_x86"
    call silent.bat
    %workDrive%
    cd "%workDir%"
    rmdir /s /q "%temp%\winrar-5.80_x86\"
)

echo "Installing WinRAR x64"
if "%2" == "x64" (
    call unzip.bat "%temp%" "%workDir%\apps\winrar-5.80_x64.zip"
    copy "silent\winrar-5.80_x64" "%temp%\winrar-5.80_x64"
    c:
    cd "%temp%\winrar-5.80_x64"
    call silent.bat
    %workDrive%
    cd "%workDir%"
    rmdir /s /q "%temp%\winrar-5.80_x64\"
)

echo "Installing on Win10"
if "%1" == "Win10" (
    call installProgram.bat "acrobat-reader-dc"
    call installProgram "win10-fast_x64"
    call installProgram.bat "libreoffice-6.1_x64"
    call installProgram.bat "audacity-2.3"
)

echo "Installing on Win7 SP1 x64"
if "%1" == "Win7SP1x64" (
    call installProgram.bat "acrobat-reader-dc"
    call installProgram "win7-fast"
    call installProgram.bat "framework-.net-4.0"
    call installProgram.bat "libreoffice-6.1_x64"
    call installProgram.bat "audacity-2.3"
)

echo "Installing on Win7 x64"
if "%1" == "Win7x64" (
    call installProgram.bat "acrobat-reader-11_x64"
    call installProgram "win7-fast"
    call installProgram.bat "framework-.net-4.0"
)

echo "Installing Generics"
call installProgram.bat "vlc-media-player-3.0_x64"
call installProgram.bat "gimp-2.10"
call installProgram.bat "k-lite-codec-pack-15.0"
call installProgram.bat "windows-movie-maker-2012"
call installProgram.bat "inkscape-0.9_x64"
call installProgram.bat "visual-studio-code-1.40_x64"
call installProgram.bat "ccleaner-5.6"
call installProgram.bat "imgburn-2.5"
call installProgram.bat "java-se-runtime-environment-8_x64"
call installProgram.bat "java-development-kit-11_x64"
call installProgram.bat "photoscape-3.7"
call installProgram.bat "google-chrome-79.0_x64"
call installProgram.bat "firefox-71.0_x64"
call installProgram.bat "wps-office-11.2"
call installProgram.bat "anydesk-5.4"
call installProgram.bat "transmission-2.9_x64"
call installProgram.bat "4k-slideshow-maker_x64"
call installProgram.bat "format-factory-4.3"
call installProgram.bat "pdfsam-4.0_x64"
call installProgram.bat "wincdemu-4.1"
call installProgram.bat "copyspider-1.6_x64"

if "%2" == "x86" (
    call installProgram.bat "kaspersky-free-20.0_x86"
)

if "%2" == "x64" (
    call installProgram.bat "kaspersky-free-20.0_x64"
)

echo "Finalizado. Voce DEVE reiniciar a maquina agora."