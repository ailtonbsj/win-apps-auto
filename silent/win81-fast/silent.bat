regedit /s explorer.reg
regedit /s performance.reg
regedit /s disableAntiSpyware.reg
regedit /s update.reg
regedit /s appOnStartMenu.reg

REM Windows Update
net stop wuauserv
net stop bits
net stop dosvc

sc config wuauserv start=disabled
sc config bits start= disabled
sc config dosvc start= disabled

reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ /v NoAutoUpdate /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU\ /v NoAutoUpdate /t REG_DWORD /d 1 /f
