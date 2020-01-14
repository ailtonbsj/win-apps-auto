jdk-11.0.5_windows-x64_bin.exe /s

set javaBin=jdk-11.0.5
set javaPat=C:\Program Files\Java\%javaBin%

echo %PATH% | findstr "%javaBin%" | find /c /v "" > %TEMP%\totalLines
set /p lin=<%TEMP%\totalLines
if "%lin%"=="0" (
    setx /m PATH "%javaPat%\bin;%PATH%"
)