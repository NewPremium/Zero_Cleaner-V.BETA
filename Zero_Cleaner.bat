@echo off
PUSHD "%~dp0"
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion
set zc=Zero_Cleaner

:loading
MODE.COM CON COLS=90 LINES=30
title %zc% �ε���. . .
color 1F
echo.  --------------------------------------------------------------------
echo. 
echo.            ������  ������  �����      ����             
echo.                  ��    ��          ��      ��  ��      ��           
echo.                ��      �����    �����    ��      ��           
echo.              ��        ��          ��      ��  ��      ��           
echo.            ������  ������  ��      ��    ����             
echo. 
echo.            ��      ��    ����    ������  ������           
echo.            ���    ��  ��      ��      ��      ��                   
echo.            ��  ��  ��  ������      ��      ������           
echo.            ��    ���  ��      ��      ��      ��                   
echo.            ��      ��  ��      ��      ��      ������           
echo. 
echo.  --------------------------------------------------------------------
echo. 
echo.   [��ø� ��ٷ� �ּ���. . .]
echo.   [�ý��� �˻���. . . . . ]
echo. 
echo. 
echo.   [%zc%]
echo. 
echo.   [V.BETA]
echo. 
echo.   Ŭ���� ����� ������� �����մϴ�
echo. 
echo. 
echo. �� Zeronate 2018
echo. �� Newpremium 2017 ~ 2018
timeout/t 3 /nobreak>nul
if not exist "system\cleanercheck\zerocleaner" (goto check)
bcdedit > nul || (goto noroot)
if not exist "system\pro\browser_chromeprofile+nc.db" (goto nofile)
if not exist "system\pro\processkill_browser+nc.db" (goto nofile)
if not exist "system\pro\processkill_fakesystemprocess+nc.db" (goto nofile)
if not exist "system\grep\grep.exe" (goto nofile)
if not exist "system\messagebox\MessageBox.exe" (goto nofile)
if not exist "system\messagebox\ReadMe.txt" (goto nofile)
if not exist "system\tasks\taskkill.exe" (goto nofile)
if not exist "system\tasks\tasklist.exe" (goto nofile)
if not exist "system\IEhistory\regdelete.exe" (goto nofile)
echo ^<meta http-equiv="refresh" content="0;url=http://blog.naver.com/ajb3296" /^> >Newpremium.html

SETLOCAL ENABLEDELAYEDEXPANSION
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% ���� Ȯ��^^! /T:4132 /M:%zc% ���α׷��� �����Ͻðڽ��ϱ�^?\n�̷����� ������^(�߿����� ������^)�� �����ڿ��� �����ϴ�^^!\n������ �ִ��� ��ҽ��ϴ�, ������ ������ �� ��� �߰����Ǵ� ��α� ��۷� �˷��ּ���.\n%zc%��(��) BETA �����Դϴ�^^! �̸� �˰� ������ �ּ���\n����� ����^^! ����� �̿� ����^^! �ҽ��ڵ� ���� ����^^!
IF !ERRORLEVEL! EQU 7 (
	ENDLOCAL
	SET ERRCODE=999
	GOTO off
) ELSE (
	ENDLOCAL
)
if not exist "%SYSTEMDRIVE%\%zc%_log" do (
MKDIR "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
)
:startlog
if not exist "%SYSTEMDRIVE%\%zc%_log\log1.txt" (goto log1)
if not exist "%SYSTEMDRIVE%\%zc%_log\log2.txt" (goto log2)
if not exist "%SYSTEMDRIVE%\%zc%_log\log3.txt" (goto log3)
if not exist "%SYSTEMDRIVE%\%zc%_log\log4.txt" (goto log4)
if not exist "%SYSTEMDRIVE%\%zc%_log\log5.txt" (goto log5)
if not exist "%SYSTEMDRIVE%\%zc%_log\log6.txt" (goto log6)
if not exist "%SYSTEMDRIVE%\%zc%_log\log7.txt" (goto log7)
if not exist "%SYSTEMDRIVE%\%zc%_log\log8.txt" (goto log8)
if not exist "%SYSTEMDRIVE%\%zc%_log\log9.txt" (goto log9)
if not exist "%SYSTEMDRIVE%\%zc%_log\log10.txt" (goto log10)
goto nolog
:log1
set log=log1.txt
goto main1
:log2
set log=log2.txt
goto main1
:log3
set log=log3.txt
goto main1
:log4
set log=log4.txt
goto main1
:log5
set log=log5.txt
goto main1
:log6
set log=log6.txt
goto main1
:log7
set log=log7.txt
goto main1
:log8
set log=log8.txt
goto main1
:log9
set log=log9.txt
goto main1
:log10
set log=log10.txt
goto main1
:nolog
SETLOCAL ENABLEDELAYEDEXPANSION
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% LOG ���� ������ /T:4132 /M:�α������� ���� á���ϴ�^^!\n�α������� �ʱ�ȭ �ұ��^?\n�α������� %SYSTEMDRIVE%\%zc%_log  �� �ֽ��ϴ�\n�α״� �ִ� 10������ ����˴ϴ�^^!
IF !ERRORLEVEL! EQU 7 (
	ENDLOCAL
	SET ERRCODE=999
	GOTO off
) ELSE (
	ENDLOCAL
)
del /q /s /f "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
rd /s /q "%SYSTEMDRIVE%\%zc%_log" >Nul 2>Nul
goto startlog

:main1
echo %zc% V.BETA>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% �������� >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ������¥ : %date% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% �����ð� : %time% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �α������� �ִ� 10������ ���尡���մϴ� >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ������������ ������^(�߿����� ������^)�� �����ڿ��� �����ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
title ����
cls
echo. 
echo. ���ͳ� ĳ�� �� �ӽ������� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ�
set /p afile=�����ϼ��� :  
cls
ECHO.  
ECHO. �������� �����?
ECHO. 
ECHO. 1. ��
ECHO. 2. �ƴϿ�
set /p trash=�����ϼ��� : 
cls
echo. 
echo. Windows �α׸� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ�
set /p windowslog=�����ϼ��� : 
cls
echo. 
echo. �ʿ���ų� �Ǽ��� Windows ������Ʈ�� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p windowsupdate=�����ϼ��� : 
cls
echo. 
echo. �������α׷��� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p dstartprogram=�����ϼ��� : 
cls
echo. 
echo. �ʿ���� ���μ��� �� ���񽺸� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p dprosess=�����ϼ��� : 
goto main

:main

:afile
::�ӽ����� ����
if %afile% == 2 (goto dprosess)
if %afile% == �ƴϿ� (goto dprosess)
if %afile% == no (goto dprosess)

echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ӽ����� �� ������ ĳ�� ���ſ� ���� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ӽ����� ���ſ� �����Ͻø� ���ͳ� �˻���ϵ� ���� ���ŵ˴ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%

cls
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ���ͳ� ������ ĳ�û���>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. ���ͳ� ������ ĳ�û���
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Google Chrome ������ ĳ�� ������. . . >>%SYSTEMDRIVE%\%zc%_log\%log%
title Google Chrome ������ ĳ�� ������. . .
echo. Google Chrome ������ ĳ�� ������. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data" (goto nochrome)
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
del /q /s /f "%ChromeDir%" >Nul 2>Nul
rd /s /q "%ChromeDir%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
goto firefox
:nochrome
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Google Chrome �������� �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Google Chrome �������� �������� �ʽ��ϴ�^^!
timeout/t 1 /nobreak>nul
goto firefox
:firefox
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Mozilla Firefox ������ ĳ�û�����. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Mozilla Firefox ������ ĳ�û�����. . .
title Mozilla Firefox ������ ĳ�û�����. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles" (goto nofirefox)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%" >Nul 2>Nul
rd /s /q "%DataDir%"
for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto opera
:nofirefox
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Mozilla Firefox �������� �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Mozilla Firefox �������� �������� �ʽ��ϴ�^^!
timeout/t 1 /nobreak>nul
:opera
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Opera ������ ĳ�û�����. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Opera ������ ĳ�û�����. . .
title Opera ������ ĳ�û�����. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Opera\Opera" (goto noopera)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Opera\Opera
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Opera\Opera
del /q /s /f "%DataDir%" >Nul 2>Nul
rd /s /q "%DataDir%"
del /q /s /f "%DataDir2%" >Nul 2>Nul
rd /s /q "%DataDir2%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto safari
:noopera
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Opera �������� �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Opera �������� �������� �ʽ��ϴ�^^!
timeout/t 1 /nobreak>nul
:safari
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Apple Safari ������ ĳ�û�����. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Apple Safari ������ ĳ�û�����. . .
title Apple Safari ������ ĳ�û�����. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Applec~1\Safari" (goto nosafari)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Applec~1\Safari
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Applec~1\Safari
del /q /s /f "%DataDir%\History" >Nul 2>Nul
rd /s /q "%DataDir%\History"
del /q /s /f "%DataDir%\Cache.db" >Nul 2>Nul
del /q /s /f "%DataDir%\WebpageIcons.db" >Nul 2>Nul
del /q /s /f "%DataDir2%" >Nul 2>Nul
rd /s /q "%DataDir2%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto ie
:nosafari
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Apple Safari �������� �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Apple Safari �������� �������� �ʽ��ϴ�^^!
timeout/t 1 /nobreak>nul
:ie
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Microsoft Internet Explorer ������ ĳ�û�����. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Microsoft Internet Explorer ������ ĳ�û�����. . .
title Microsoft Internet Explorer ������ ĳ�û�����. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Microsoft\Intern~1" (goto noie)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Microsoft\Intern~1
del /q /s /f "%DataDir%" >Nul 2>Nul
rd /s /q "%DataDir%" >Nul 2>Nul
set History=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\History
del /q /s /f "%History%" >Nul 2>Nul
rd /s /q "%History%" >Nul 2>Nul
set IETemp=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Tempor~1
del /q /s /f "%IETemp%" >Nul 2>Nul
rd /s /q "%IETemp%" >Nul 2>Nul
set Cookies=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Cookies
del /q /s /f "%Cookies%" >Nul 2>Nul
rd /s /q "%Cookies%" >Nul 2>Nul
system\IEhistory\regdelete.exe HKEY_CURRENT_USER "Software\Microsoft\Internet Explorer\TypedURLs" >Nul 2>Nul
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto flash
:noie
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Microsoft Internet Explorer �������� �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Microsoft Internet Explorer �������� �������� �ʽ��ϴ�^^!
timeout/t 1 /nobreak>nul
:flash
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Flash Player ĳ�û�����. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Flash Player ĳ�û�����. . .
title Flash Player ĳ�û�����. . .
if not exist "C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1" (goto noflashplayer)
set FlashCookies=C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1
del /q /s /f "%FlashCookies%" >Nul 2>Nul
rd /s /q "%FlashCookies%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ������ ĳ�� ���� �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
timeout/t 1 /nobreak>nul
goto dd
:noflashplayer
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Flash Player ��(��) �������� �ʽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Flash Player ��(��) �������� �ʽ��ϴ�^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ������ ĳ�� ���� �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
timeout/t 1 /nobreak>nul
:dd
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ӽ����� ������. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title �ӽ����� ������. . .
echo. 
echo. �ӽ����� ������. . .

FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\Temp\" 2^>Nul') DO (
	RD /Q /S "%SYSTEMROOT%\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%TEMP%\" 2^>Nul') DO (
	RD /Q /S "%TEMP%\%%A" >Nul 2>Nul
)
DEL /F /Q /S /A "%SYSTEMROOT%\Temp" >Nul 2>Nul
DEL /F /Q /S /A "%TEMP%" >Nul 2>Nul
IF EXIST "%SYSTEMROOT%\System32\InetCpl.cpl" (
	RUNDLL32.EXE InetCpl.cpl,ClearMyTracksByProcess 4 >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\System32\Temp\" 2^>Nul') DO (
	RMDIR /S /Q "%SYSTEMROOT%\System32\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\SysWOW64\Temp\" 2^>Nul') DO (
	RMDIR /S /Q "%SYSTEMROOT%\SysWOW64\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%TEMP%\" 2^>Nul') DO (
	RMDIR /S /Q "%TEMP%\%%A" >Nul 2>Nul
)
del /f /s /q "%systemdrive%\*.tmp" >Nul 2>Nul
del /f /s /q "%systemdrive%\*._mp" >Nul 2>Nul
del /f /s /q "%systemdrive%\*.gid" >Nul 2>Nul
del /f /s /q "%systemdrive%\*.chk" >Nul 2>Nul
del /f /s /q "%systemdrive%\*.old" >Nul 2>Nul
del /f /s /q "%systemdrive%\recycled\*.*" >Nul 2>Nul
del /f /s /q "%windir%\*.bak" >Nul 2>Nul
del /f /s /q "%windir%\prefetch\*.*" >Nul 2>Nul
rd /s /q "%windir%\temp & md %windir%\temp" >Nul 2>Nul
del /f /q "%userprofile%\cookies\*.*" >Nul 2>Nul
del /f /q "%userprofile%\recent\*.*" >Nul 2>Nul
del /f /s /q ��%userprofile%\Local Settings\Temporary Internet Files\*.*�� >Nul 2>Nul
del /f /s /q ��%userprofile%\Local Settings\Temp\*.*�� >Nul 2>Nul
del /f /s /q ��%userprofile%\recent\*.*�� >Nul 2>Nul
DEL /F /Q /S /A "%APPDATA%\Temp" >Nul 2>Nul
DEL /F /Q /A "%APPDATA%\*.TMP" >Nul 2>Nul
DEL /F /Q /A "%LOCALAPPDATA%\*.TMP" >Nul 2>Nul
DEL /F /Q /A "%LOCALLOWAPPDATA%\*.TMP" >Nul 2>Nul


FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\Temp\" 2^>Nul') DO (
	RMDIR /S /Q "%SYSTEMROOT%\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\System32\Temp\" 2^>Nul') DO (
	RMDIR /S /Q "%SYSTEMROOT%\System32\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%SYSTEMROOT%\SysWOW64\Temp\" 2^>Nul') DO (
	RMDIR /S /Q "%SYSTEMROOT%\SysWOW64\Temp\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%TEMP%\" 2^>Nul') DO (
	RMDIR /S /Q "%TEMP%\%%A" >Nul 2>Nul
)

DEL /F /Q /S /A "%APPDATA%\Adobe\Flash Player" >Nul 2>Nul
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Chromium\User Data\" 2^>Nul^|system\GREP\GREP.EXE -Fixf system\pro\BROWSER_CHROMEPROFILE+NC.DB 2^>Nul') DO (
	DEL /F /Q /A "%LOCALAPPDATA%\Chromium\User Data\%%A\Application Cache\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Chromium\User Data\%%A\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Chromium\User Data\%%A\Service Worker\ScriptCache\*" >Nul 2>Nul
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Chromium\User Data\%%A\Service Worker\CacheStorage\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Chromium\User Data\%%A\Service Worker\CacheStorage\%%B" >Nul 2>Nul
	)
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Chromium\User Data\%%A\Service Worker\ScriptCache\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Chromium\User Data\%%A\Service Worker\ScriptCache\%%B" >Nul 2>Nul
	)
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Google\Chrome\User Data\" 2^>Nul^|system\GREP\GREP.EXE -Fixf system\pro\BROWSER_CHROMEPROFILE+NC.DB 2^>Nul') DO (
	DEL /F /Q /A "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Application Cache\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Service Worker\ScriptCache\*" >Nul 2>Nul
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Service Worker\CacheStorage\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Service Worker\CacheStorage\%%B" >Nul 2>Nul
	)
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Service Worker\ScriptCache\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Google\Chrome\User Data\%%A\Service Worker\ScriptCache\%%B" >Nul 2>Nul
	)
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Naver\Naver Whale\User Data\" 2^>Nul^|system\GREP\GREP.EXE -Fixf system\pro\BROWSER_CHROMEPROFILE+NC.DB 2^>Nul') DO (
	DEL /F /Q /A "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Application Cache\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Service Worker\ScriptCache\*" >Nul 2>Nul
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Service Worker\CacheStorage\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Service Worker\CacheStorage\%%B" >Nul 2>Nul
	)
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Service Worker\ScriptCache\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\Naver\Naver Whale\User Data\%%A\Service Worker\ScriptCache\%%B" >Nul 2>Nul
	)
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\SwingBrowser\User Data\" 2^>Nul^|system\GREP\GREP.EXE -Fixf system\pro\BROWSER_CHROMEPROFILE+NC.DB 2^>Nul') DO (
	DEL /F /Q /A "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Application Cache\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Cache\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Service Worker\ScriptCache\*" >Nul 2>Nul
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Service Worker\CacheStorage\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Service Worker\CacheStorage\%%B" >Nul 2>Nul
	)
	FOR /F "DELIMS=" %%B IN ('DIR /B /AD "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Service Worker\ScriptCache\" 2^>Nul') DO (
		RMDIR /S /Q "%LOCALAPPDATA%\SwingBrowser\User Data\%%A\Service Worker\ScriptCache\%%B" >Nul 2>Nul
	)
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\" 2^>Nul') DO (
	DEL /F /Q /A "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\%%A\Cache\Entries\*" >Nul 2>Nul
	DEL /F /Q /A "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\%%A\Cache2\Entries\*" >Nul 2>Nul
)
IF EXIST "%LOCALAPPDATA%\Steam\htmlcache\" (
	DEL /F /Q /S /A "%LOCALAPPDATA%\Steam\htmlcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES%\Steam\appcache\httpcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES%\Steam\appcache\httpcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES%\Steam\config\htmlcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES%\Steam\config\htmlcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES%\Steam\config\overlayhtmlcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES%\Steam\config\overlayhtmlcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES(x86)%\Steam\appcache\httpcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES(x86)%\Steam\appcache\httpcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES(x86)%\Steam\config\htmlcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES(x86)%\Steam\config\htmlcache" >Nul 2>Nul
)
IF EXIST "%PROGRAMFILES(x86)%\Steam\config\overlayhtmlcache\" (
	DEL /F /Q /S /A "%PROGRAMFILES(x86)%\Steam\config\overlayhtmlcache" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Microsoft\Windows\INetCache\Content.IE5\" 2^>Nul') DO (
	RMDIR /S /Q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\Content.IE5\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Microsoft\Windows\INetCache\Low\Content.IE5\" 2^>Nul') DO (
	RMDIR /S /Q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\Content.IE5\Low\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\Content.IE5\" 2^>Nul') DO (
	RMDIR /S /Q "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\Content.IE5\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\Low\Content.IE5\" 2^>Nul') DO (
	RMDIR /S /Q "%LOCALAPPDATA%\Microsoft\Windows\Temporary Internet Files\Low\Content.IE5\%%A" >Nul 2>Nul
)
FOR /F "DELIMS=" %%A IN ('DIR /B /AD "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cache\" 2^>Nul') DO (
	RMDIR /S /Q "%LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cache\%%A" >Nul 2>Nul
)
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 3 /nobreak>nul
goto dprosess

::�ʿ���� ���μ����� ����
:dprosess

if %dprosess% == 2 (goto trash)
if %dprosess% == �ƴϿ� (goto trash)
if %dprosess% == no (goto trash)
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ���μ����� ���� ���ῡ ���� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ���μ����� ���񽺸� ������. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title �ʿ���� ���μ����� ���񽺸� ������. . .
echo. 
echo. �ʿ���� ���μ����� ���񽺸� ������. . .

FOR /F "DELIMS=" %%A IN (SYSTEM\PRO\PROCESSKILL_FAKESYSTEMPROCESS+NC.DB) DO (
	IF /I NOT "%%A" == "SYSTEM FILES IS FAIL" (
		TOOLS\TASKS\TASKKILL.EXE /IM "%%A" >Nul 2>Nul
		TOOLS\TASKS\TASKKILL.EXE /IM "%%A" >Nul 2>Nul
		TOOLS\TASKS\TASKKILL.EXE /IM "%%A" >Nul 2>Nul
		TOOLS\TASKS\TASKKILL.EXE /IM "%%A" >Nul 2>Nul
		TOOLS\TASKS\TASKKILL.EXE /IM "%%A" >Nul 2>Nul
	)
)
FOR /F "DELIMS=" %%A IN (SYSTEM\PRO\PROCESSKILL_BROWSER+NC.DB) DO (
	IF /I NOT "%%A" == "SYSTEM FILES IS FAIL" (
		TOOLS\TASKS\TASKKILL.EXE /F /IM "%%A" >Nul 2>Nul
	)
)
	system\TASKS\TASKKILL.EXE /IM "DOPUS.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "DOPUSRT.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "EXPLORER++.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "FAR.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "FLYEXPLORER.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "FREECOMMANDER.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "MASTER COMMANDER.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "MULTICOMMANDER.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "NEXUSFILE.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "ONECOMMANDERV2.EXE" >NUL 2>NUL
	system\TASKS\TASKKILL.EXE /IM "TOTALCMD.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "UNCOM.EXE" >Nul 2>Nul
    system\TASKS\TASKKILL.EXE /IM "GoogleUpdate.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "wmpnetwk.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "PDVD11Serv.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "OSPPSVC.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "taskhost.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "TortoiseHgOverlayServer.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "IMEDICTUPDATE.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "mDNSResponder.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "PresentationFontCache.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "splwow64.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "sppsvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "WmiPrvSE.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "nPStarterSVC.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "npnj5Agent.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "npmonz.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "npenkMain5.npn" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "npkcmsvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "npkfxsvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "nossvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "nosstarter.npe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "CKAgent.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "I3GEX.exe" >Nul 2>Nul 
    system\TASKS\TASKKILL.EXE /IM "SCSKSender.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "SNBTAAAA.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "EZKeytecRun.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "WLIDSVCM.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "TSVNCache.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "AYWscUpdater.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "WLIDSVC.EXE" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "ImageSAFERSvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "ImageSAFERStart_x86.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "ImageSAFERStart_x64.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "veraport.exe" >Nul 2>Nul
    system\TASKS\TASKKILL.EXE /IM "AnySign4PC.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "I3GMainSvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "I3GProc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "dllhost.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "taskeng.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "TrustedInstaller.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "MsMpEng.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "qruxaaaa.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "isbew64.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "eausvc.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "FreeAgentService.exe" >Nul 2>Nul
	system\TASKS\TASKKILL.EXE /IM "AppleMobileDeviceService.exe" >Nul 2>Nul

for %%Y in (
	"TUCtlSystem",
	"Image Protection",
	"IMGSF50_Svc",
	"Innosvc7",
	"Innosvc",
	"I3GMainSvc",
	"npggsvc",
) do (
	sc query %%Y > nul 2> nul
	if !errorlevel! == 0 (
		set /a cnt1 = !cnt1! + 1
		echo [!cnt1!]. %%Y
		sc stop %%Y  > nul 2> nul
		sc delete %%Y  > nul 2> nul
		ping -t 127.0.0.1 -n 1 >nul
	)
)
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ���񽺸� �����Ͽ����ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ���μ����� �����Ͽ����ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. �ʿ���� ���񽺸� �����Ͽ����ϴ�^^!
echo. �ʿ���� ���μ����� �����Ͽ����ϴ�^^!
timeout/t 2 /nobreak>nul
goto trash

::$RECYCLE.BIN ���� ����
:trash

if %trash% == 2 (goto wineventlog)
if %trash% == �ƴϿ� (goto wineventlog)
if %trash% == no (goto wineventlog)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �������� ���µ��� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo $RECYCLE.BIN ����(������) ���� ��. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title $RECYCLE.BIN ����(������) ���� ��. . .
echo. 
echo. $RECYCLE.BIN ����(������) ���� ��. . .
for %%a in (c d e f g h i j k L m n o p q r s t u v w x y z) do (
if exist %%a:\$RECYCLE.BIN for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\$RECYCLE.BIN\"`) do rd /q/s "%%a:\$RECYCLE.BIN\%%~b"
if exist %%a:\RECYCLER for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\RECYCLER\"`) do rd /q/s "%%a:\RECYCLER\%%~b"
)
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto wineventlog

::Windows �̺�Ʈ�α� ����
:wineventlog

if %windowslog% == 2 (goto windowsupdate)
if %windowslog% == �ƴϿ� (goto windowsupdate)
if %windowslog% == no (goto windowsupdate)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows �̺�Ʈ�α� �����ϴµ��� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows �̺�Ʈ�α� ������. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title Windows �̺�Ʈ�α� ������. . .
echo. 
echo. Windows �̺�Ʈ�α� ������. . .
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) do (
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows �αװ� �����ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title Windows �αװ� �����ϴ�^^!
echo. 
echo. Windows �αװ� �����ϴ�^^!
goto windowsupdate
)
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
:do_clear
title �α�������. . . %1
echo. �α�������. . .
echo  Windows �̺�Ʈ�α� ���� - %1 >>%SYSTEMDRIVE%\%zc%_log\%log%
wevtutil.exe cl %1
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto windowsupdate

::�ʿ���� ������ ������Ʈ ����

:windowsupdate

if %windowsupdate% == 2 (goto startprogram)
if %windowsupdate% == �ƴϿ� (goto startprogram)
if %windowsupdate% == no (goto startprogram)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ������ ������Ʈ�� �����ϴµ��� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �ʿ���� ������ ������Ʈ ������. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title �ʿ���� ������ ������Ʈ ������. . .
echo. 
echo. �ʿ���� ������ ������Ʈ ������. . .

::��������
wusa /uninstall /quiet /norestart /KB:298279 
::Office ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:949810 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:971033 
::��������
wusa /uninstall /quiet /norestart /KB:976902 
::��������
wusa /uninstall /quiet /norestart /KB:2718704 
::�׷��� ���丷���� ������ ��
wusa /uninstall /quiet /norestart /KB:2803821 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2868038 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2868626 
::Windows10 ���׷��̵� ����
wusa /uninstall /quiet /norestart /KB:2952664 
::���ȭ ȭ�� ǥ�� �� ��ȣ
wusa /uninstall /quiet /norestart /KB:2970228 
::���� RT, ���� 8, ���� ���� 2012�� 2014�� 8�� �Ѿ�
wusa /uninstall /quiet /norestart /KB:2975331 
::���� RT 8.1, ���� ���� 2012 R2�� 2014�� 8�� �Ѿ�
wusa /uninstall /quiet /norestart /KB:2975719 
::�Ǽ� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2976897 
::��罺ũ�� ����
wusa /uninstall /quiet /norestart /KB:2982791 
::�Ǽ� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2984615 
::Windows10 ���׷��̵� �˸�
wusa /uninstall /quiet /norestart /KB:3021917 
::���� ���� ����
wusa /uninstall /quiet /norestart /KB:3022345 
::Windows10 ���׷��̵� �˸�
wusa /uninstall /quiet /norestart /KB:3035583 
::KB3022345���. ����� ����, ��Ȳ, ���� ����
wusa /uninstall /quiet /norestart /KB:3068708 
::����� ���� ���� ����
wusa /uninstall /quiet /norestart /KB:3075249 
::����� ����, ��Ȳ, ���� ����
wusa /uninstall /quiet /norestart /KB:3080149 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:3097877 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:3101746 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:3109094  
::���� ����
wusa /uninstall /quiet /norestart /KB:3112343 
::Windows10 ���׷��̵� �˸�2
wusa /uninstall /quiet /norestart /KB:3150513 
::���� ����
wusa /uninstall /quiet /norestart /KB:4012219 
::���� ����
wusa /uninstall /quiet /norestart /KB:4012218 
::Windows 10 ���׷��̵� ����
wusa /uninstall /quiet /norestart /KB:3170735
::Windows 10 ���׷��̵� �˸�-����� ��üȭ������
wusa /uninstall /quiet /norestart /KB:3173040 
::������ ����� ������Ʈ
wusa /uninstall /quiet /norestart /KB:915597 
::����������� ������ ������, ��Ʈ�ٿ� ��ġ
wusa /uninstall /quiet /norestart /KB:4056892 
wusa /uninstall /quiet /norestart /KB:4056891 
wusa /uninstall /quiet /norestart /KB:4056890 
wusa /uninstall /quiet /norestart /KB:4056898 
wusa /uninstall /quiet /norestart /KB:4056897 

echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto startprogram

::�������α׷� ����
:startprogram
cls

if %dstartprogram% == 2 (goto finish)
if %dstartprogram% == �ƴϿ� (goto finish)
if %dstartprogram% == no (goto finish)

echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ���۸޴�-�������α׷� ���� ��������� �����ϴµ��� �����ϼ̽��ϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ���۸޴�-�������α׷� ���� ������� ������. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title ���۸޴�-�������α׷� ���� ������� ������. . .
echo. 
echo. ���۸޴�-�������α׷� ���� ������� ������. . .
del "%allusersprofile%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
del "%appdata%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo �Ϸ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title �Ϸ�^^!
echo. 
echo. �Ϸ�^^!
timeout/t 1 /nobreak>nul
goto finish

:nofile
COLOR 4F
cls
title ���� �ý��� �ջ�
echo. 
echo. ���� �ý����� �ջ�Ǿ����ϴ�^^!
echo. 
echo. %zc% ��(��) �缳ġ �ϼ���.
echo. 
echo. ENTERŰ�� �����ø� ����˴ϴ�.
pause>nul
exit

:noroot
COLOR 4F
SETLOCAL ENABLEDELAYEDEXPANSION
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% ������ ���� Ȯ��^^! /T:4132 /M:%zc%�� ������ �������� ������� �ʾҽ��ϴ�^^!\n%zc%������ ������ �������� �����Ͽ� �ּ���^^!\n������ ������ �־����� ���� ��� ���α׷� ���۵��� �Ͼ �� �ֽ��ϴ�.\n�� �Ǵ� �ƴϿ�Ű ���� �ƹ�Ű�� �ϳ��� �����ø� %zc%�� ����˴ϴ�^^!
IF !ERRORLEVEL! EQU 7 (
	ENDLOCAL
	SET ERRCODE=999
	system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul
) ELSE (
	ENDLOCAL
)
system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul

:check
COLOR 4F
cls
title ���������� �ùٸ��� ���������� �ּ���.
echo.
echo. ���� ������ �ùٸ��� ���� �� �������ֽñ� �ٶ��ϴ�.
echo.
echo. ENTERŰ�� �����ø� ����˴ϴ�.
PAUSE>NUL
exit

:finish
cls
title %zc% ��(��) �����ϰ� �����ƽ��ϴ�^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ------------------------------  FINISH  ---------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ���� >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ���ᳯ¥ : %date% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ����ð� : %time% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ��(��) �����ϰ� �����ƽ��ϴ�^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% ������ ������� �����մϴ�.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. 
echo. %zc% ���ᳯ¥ : %date%
echo. %zc% ����ð� : %time%
echo. 
echo %zc% ��(��) �����ϰ� �����ƽ��ϴ�^^!
echo %zc% ������ ������� �����մϴ�^^!
echo. 
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
start %SYSTEMDRIVE%\%zc%_log\%log%
pause>nul
system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul

:off
cls
title ���α׷� ����.
echo. 
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
echo. 
pause>nul
system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul