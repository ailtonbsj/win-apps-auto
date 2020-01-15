vlc-3.0.7.1-win64.exe /S

set deskDir="%appdata%\vlc"
if not exist %deskDir% mkdir %deskDir%
copy vlcrc %deskDir%
