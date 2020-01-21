WPSOffice_11.2.0.9107.exe /S

regedit /s multimode.reg

del /q "%USERPROFILE%\Desktop\WPS Office.lnk"

set deskDir="%USERPROFILE%\Desktop\"
copy "WPS Writer.lnk" %deskDir%
copy "WPS Spreadsheets.lnk" %deskDir%
copy "WPS Presentation.lnk" %deskDir%
copy "WPS PDF.lnk" %deskDir%

set wpsMenu="%APPDATA%\Microsoft\Windows\Start Menu\Programs\WPS Office"
copy "WPS Writer.lnk" %wpsMenu%
copy "WPS Spreadsheets.lnk" %wpsMenu%
copy "WPS Presentation.lnk" %wpsMenu%
copy "WPS PDF.lnk" %wpsMenu%
