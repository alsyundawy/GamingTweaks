@echo off
:: Run the script with admin rights
:: Use Everything (VoidTools) instead.
cd %windir%\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy
takeown /f SearchApp.exe
icacls SearchUI.exe /grant *S-1-5-32-544:F
taskkill /f /im SearchApp.exe
rename SearchApp.exe SearchApp.bak


:: Reverse (undo)
:: cd %windir%\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy
:: rename SearchApp.bak Searchapp.exe
