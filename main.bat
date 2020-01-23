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

    REM APPS

    if "%1" == "Win7" (
        call installProgram.bat "framework-.net-4.0"
    )

    if "%1" == "Win7SP1" (
        call installProgram.bat "framework-.net-4.0"
    )

    call installProgram.bat "java-development-kit-8_x86"
    call installProgram.bat "4k-slideshow-maker-1.8.1_x86"
    call installProgram.bat "anydesk-5.4"
    call installProgram.bat "ccleaner-5.6"
    call installProgram.bat "firefox-72.0.2_x86"
    call installProgram.bat "format-factory-4.3"
    call installProgram.bat "google-chrome-79.0_x86"
    call installProgram.bat "imgburn-2.5"
    call installProgram.bat "inkscape-0.92.4_x86"
    call installProgram.bat "pdfsam-3.3.7_x86"
    call installProgram.bat "photoscape-3.7"
    call installProgram.bat "transmission-2.94_x86"
    call installProgram.bat "visual-studio-code-1.41_x86"
    call installProgram.bat "vlc-media-player-3.0.8_x86"
    call installProgram.bat "k-lite-codec-pack-15.0"
    call installProgram.bat "wincdemu-4.1"
    call installProgram.bat "wps-office-11.2"
    call installProgram.bat "copyspider-1.6"
    call installProgram.bat "gimp-2.10"
    
    if "%1" == "Win7" (
        call installProgram.bat "acrobat-reader-11.0.0"
        call installProgram.bat "win7-fast"
    )

    if "%1" == "Win7SP1" (
        call installProgram.bat "acrobat-reader-dc"
        call installProgram.bat "audacity-2.3"
        call installProgram.bat "libreoffice-6.2.8_x86"
        call installProgram.bat "windows-movie-maker-2012"
        call installProgram.bat "kaspersky-free-20.0_x86"
        call installProgram.bat "win7-fast"
    )
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

    REM APPS

    if "%1" == "Win7" (
        call installProgram.bat "framework-.net-4.0"
    )

    if "%1" == "Win7SP1" (
        call installProgram.bat "framework-.net-4.0"
    )

    call installProgram.bat "java-se-runtime-environment-8_x64"
    call installProgram.bat "java-development-kit-11_x64"
    call installProgram.bat "4k-slideshow-maker-1.8.1_x64"
    call installProgram.bat "anydesk-5.4"
    call installProgram.bat "ccleaner-5.6"
    call installProgram.bat "firefox-72.0.2_x64"
    call installProgram.bat "format-factory-4.3"
    call installProgram.bat "google-chrome-79.0_x64"
    call installProgram.bat "imgburn-2.5"
    call installProgram.bat "inkscape-0.92.4_x64"
    call installProgram.bat "pdfsam-4.0.5_x64"
    call installProgram.bat "photoscape-3.7"
    call installProgram.bat "transmission-2.94_x64"
    call installProgram.bat "visual-studio-code-1.41_x64"
    call installProgram.bat "vlc-media-player-3.0.8_x64"
    call installProgram.bat "k-lite-codec-pack-15.0"
    call installProgram.bat "wincdemu-4.1"
    call installProgram.bat "wps-office-11.2"
    call installProgram.bat "copyspider-1.6"
    call installProgram.bat "gimp-2.10"

    if "%1" == "Win7" (
        call installProgram.bat "acrobat-reader-11.0.0"
        call installProgram.bat "win7-fast"
    )

    if "%1" == "Win7SP1" (
        call installProgram.bat "acrobat-reader-dc"
        call installProgram.bat "audacity-2.3"
        call installProgram.bat "libreoffice-6.2.8_x64"
        call installProgram.bat "windows-movie-maker-2012"
        call installProgram.bat "kaspersky-free-20.0_x64"
        call installProgram.bat "win7-fast"
    )

    if "%1" == "Win8" (
        call installProgram.bat "acrobat-reader-dc"
        call installProgram.bat "audacity-2.3"
        call installProgram.bat "libreoffice-6.2.8_x64"
        call installProgram.bat "windows-movie-maker-2012"
        call installProgram.bat "kaspersky-free-20.0_x64"
        call installProgram.bat "win81-fast"
    )

    if "%1" == "Win10" (
        call installProgram.bat "acrobat-reader-dc"
        call installProgram.bat "audacity-2.3"
        call installProgram.bat "libreoffice-6.2.8_x64"
        call installProgram.bat "windows-movie-maker-2012"
        call installProgram.bat "kaspersky-free-20.0_x64"
        call installProgram.bat "win10-fast_x64"
    )
)

echo "Finalizado. Voce DEVE reiniciar a maquina agora."