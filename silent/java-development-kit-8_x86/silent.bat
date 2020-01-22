jdk-8u241-windows-i586.exe /s

set javaBin=jdk1.8.0_241
set javaPat=C:\Program Files\Java\%javaBin%

echo %PATH% | findstr "%javaBin%" | find /c /v "" > %TEMP%\totalLines
set /p lin=<%TEMP%\totalLines
if "%lin%"=="0" (
    setx /m PATH "%javaPat%\bin;%PATH%"
)