@echo off
PUSHD "%~dp0"
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion
set zc=Zero_Cleaner

:loading
MODE.COM CON COLS=90 LINES=30
title %zc% 로딩중. . .
color 1F
echo.  --------------------------------------------------------------------
echo. 
echo.            ■■■■■  ■■■■■  ■■■■      ■■■             
echo.                  ■    ■          ■      ■  ■      ■           
echo.                ■      ■■■■    ■■■■    ■      ■           
echo.              ■        ■          ■      ■  ■      ■           
echo.            ■■■■■  ■■■■■  ■      ■    ■■■             
echo. 
echo.            ■      ■    ■■■    ■■■■■  ■■■■■           
echo.            ■■    ■  ■      ■      ■      ■                   
echo.            ■  ■  ■  ■■■■■      ■      ■■■■■           
echo.            ■    ■■  ■      ■      ■      ■                   
echo.            ■      ■  ■      ■      ■      ■■■■■           
echo. 
echo.  --------------------------------------------------------------------
echo. 
echo.   [잠시만 기다려 주세요. . .]
echo.   [시스템 검사중. . . . . ]
echo. 
echo. 
echo.   [%zc%]
echo. 
echo.   [V.BETA]
echo. 
echo.   클리너 사용후 재부팅을 권장합니다
echo. 
echo. 
echo. ⓒ Zeronate 2018
echo. ⓒ Newpremium 2017 ~ 2018
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
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% 실행 확인^^! /T:4132 /M:%zc% 프로그램을 실행하시겠습니까^?\n이로인한 불이익^(중요파일 삭제등^)은 개발자에게 없습니다^^!\n오류는 최대한 잡았습니다, 나머지 오류및 새 기능 추가문의는 블로그 댓글로 알려주세요.\n%zc%은(는) BETA 버전입니다^^! 이를 알고 실행해 주세요\n재배포 금지^^! 상업적 이용 금지^^! 소스코드 수정 금지^^!
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
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% LOG 폴더 가득참 /T:4132 /M:로그폴더가 가득 찼습니다^^!\n로그폴더를 초기화 할까요^?\n로그폴더는 %SYSTEMDRIVE%\%zc%_log  에 있습니다\n로그는 최대 10개까지 저장됩니다^^!
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
echo %zc% 가동시작 >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 가동날짜 : %date% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 가동시각 : %time% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 로그파일은 최대 10개까지 저장가능합니다 >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 실행으로인한 불이익^(중요파일 삭제등^)은 개발자에게 없습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
title 선택
cls
echo. 
echo. 인터넷 캐시 및 임시파일을 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오
set /p afile=선택하세요 :  
cls
ECHO.  
ECHO. 휴지통을 비울까요?
ECHO. 
ECHO. 1. 예
ECHO. 2. 아니오
set /p trash=선택하세요 : 
cls
echo. 
echo. Windows 로그를 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오
set /p windowslog=선택하세요 : 
cls
echo. 
echo. 필요없거나 악성인 Windows 업데이트를 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p windowsupdate=선택하세요 : 
cls
echo. 
echo. 시작프로그램을 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p dstartprogram=선택하세요 : 
cls
echo. 
echo. 필요없는 프로세스 및 서비스를 종료할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p dprosess=선택하세요 : 
goto main

:main

:afile
::임시파일 제거
if %afile% == 2 (goto dprosess)
if %afile% == 아니오 (goto dprosess)
if %afile% == no (goto dprosess)

echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 임시파일 및 브라우저 캐시 제거에 대해 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 임시파일 제거에 동의하시면 인터넷 검색기록도 같이 제거됩니다.>>%SYSTEMDRIVE%\%zc%_log\%log%

cls
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 인터넷 브라우저 캐시삭제>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. 인터넷 브라우저 캐시삭제
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Google Chrome 브라우저 캐시 삭제중. . . >>%SYSTEMDRIVE%\%zc%_log\%log%
title Google Chrome 브라우저 캐시 삭제중. . .
echo. Google Chrome 브라우저 캐시 삭제중. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data" (goto nochrome)
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
del /q /s /f "%ChromeDir%" >Nul 2>Nul
rd /s /q "%ChromeDir%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
goto firefox
:nochrome
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Google Chrome 브라우저가 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Google Chrome 브라우저가 존재하지 않습니다^^!
timeout/t 1 /nobreak>nul
goto firefox
:firefox
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Mozilla Firefox 브라우저 캐시삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Mozilla Firefox 브라우저 캐시삭제중. . .
title Mozilla Firefox 브라우저 캐시삭제중. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles" (goto nofirefox)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%" >Nul 2>Nul
rd /s /q "%DataDir%"
for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto opera
:nofirefox
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Mozilla Firefox 브라우저가 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Mozilla Firefox 브라우저가 존재하지 않습니다^^!
timeout/t 1 /nobreak>nul
:opera
echo.
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Opera 브라우저 캐시삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Opera 브라우저 캐시삭제중. . .
title Opera 브라우저 캐시삭제중. . .
if not exist "C:\Users\%USERNAME%\AppData\Local\Opera\Opera" (goto noopera)
set DataDir=C:\Users\%USERNAME%\AppData\Local\Opera\Opera
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Opera\Opera
del /q /s /f "%DataDir%" >Nul 2>Nul
rd /s /q "%DataDir%"
del /q /s /f "%DataDir2%" >Nul 2>Nul
rd /s /q "%DataDir2%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto safari
:noopera
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Opera 브라우저가 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Opera 브라우저가 존재하지 않습니다^^!
timeout/t 1 /nobreak>nul
:safari
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Apple Safari 브라우저 캐시삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Apple Safari 브라우저 캐시삭제중. . .
title Apple Safari 브라우저 캐시삭제중. . .
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
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto ie
:nosafari
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Apple Safari 브라우저가 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Apple Safari 브라우저가 존재하지 않습니다^^!
timeout/t 1 /nobreak>nul
:ie
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Microsoft Internet Explorer 브라우저 캐시삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Microsoft Internet Explorer 브라우저 캐시삭제중. . .
title Microsoft Internet Explorer 브라우저 캐시삭제중. . .
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
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto flash
:noie
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Microsoft Internet Explorer 브라우저가 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Microsoft Internet Explorer 브라우저가 존재하지 않습니다^^!
timeout/t 1 /nobreak>nul
:flash
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Flash Player 캐시삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Flash Player 캐시삭제중. . .
title Flash Player 캐시삭제중. . .
if not exist "C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1" (goto noflashplayer)
set FlashCookies=C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1
del /q /s /f "%FlashCookies%" >Nul 2>Nul
rd /s /q "%FlashCookies%"
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 브라우저 캐시 삭제 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
timeout/t 1 /nobreak>nul
goto dd
:noflashplayer
echo. 
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Flash Player 이(가) 존재하지 않습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. Flash Player 이(가) 존재하지 않습니다^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 브라우저 캐시 삭제 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
timeout/t 1 /nobreak>nul
:dd
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 임시파일 제거중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title 임시파일 제거중. . .
echo. 
echo. 임시파일 제거중. . .

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
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*” >Nul 2>Nul
del /f /s /q “%userprofile%\Local Settings\Temp\*.*” >Nul 2>Nul
del /f /s /q “%userprofile%\recent\*.*” >Nul 2>Nul
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
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 3 /nobreak>nul
goto dprosess

::필요없는 프로세스를 종료
:dprosess

if %dprosess% == 2 (goto trash)
if %dprosess% == 아니오 (goto trash)
if %dprosess% == no (goto trash)
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 필요없는 프로세스와 서비스 종료에 대해 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 필요없는 프로세스및 서비스를 종료중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title 필요없는 프로세스및 서비스를 종료중. . .
echo. 
echo. 필요없는 프로세스및 서비스를 종료중. . .

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
echo 필요없는 서비스를 종료하였습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 필요없는 프로세스를 종료하였습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. 필요없는 서비스를 종료하였습니다^^!
echo. 필요없는 프로세스를 종료하였습니다^^!
timeout/t 2 /nobreak>nul
goto trash

::$RECYCLE.BIN 내부 비우기
:trash

if %trash% == 2 (goto wineventlog)
if %trash% == 아니오 (goto wineventlog)
if %trash% == no (goto wineventlog)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 휴지통을 비우는데에 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo $RECYCLE.BIN 내부(휴지통) 비우는 중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title $RECYCLE.BIN 내부(휴지통) 비우는 중. . .
echo. 
echo. $RECYCLE.BIN 내부(휴지통) 비우는 중. . .
for %%a in (c d e f g h i j k L m n o p q r s t u v w x y z) do (
if exist %%a:\$RECYCLE.BIN for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\$RECYCLE.BIN\"`) do rd /q/s "%%a:\$RECYCLE.BIN\%%~b"
if exist %%a:\RECYCLER for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\RECYCLER\"`) do rd /q/s "%%a:\RECYCLER\%%~b"
)
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto wineventlog

::Windows 이벤트로그 삭제
:wineventlog

if %windowslog% == 2 (goto windowsupdate)
if %windowslog% == 아니오 (goto windowsupdate)
if %windowslog% == no (goto windowsupdate)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows 이벤트로그 삭제하는데에 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows 이벤트로그 삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title Windows 이벤트로그 삭제중. . .
echo. 
echo. Windows 이벤트로그 삭제중. . .
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) do (
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo Windows 로그가 없습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title Windows 로그가 없습니다^^!
echo. 
echo. Windows 로그가 없습니다^^!
goto windowsupdate
)
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
:do_clear
title 로그정리중. . . %1
echo. 로그정리중. . .
echo  Windows 이벤트로그 제거 - %1 >>%SYSTEMDRIVE%\%zc%_log\%log%
wevtutil.exe cl %1
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto windowsupdate

::필요없는 윈도우 업데이트 삭제

:windowsupdate

if %windowsupdate% == 2 (goto startprogram)
if %windowsupdate% == 아니오 (goto startprogram)
if %windowsupdate% == no (goto startprogram)

cls
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 필요없는 윈도우 업데이트를 삭제하는데에 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 필요없는 윈도우 업데이트 삭제중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title 필요없는 윈도우 업데이트 삭제중. . .
echo. 
echo. 필요없는 윈도우 업데이트 삭제중. . .

::인증관련
wusa /uninstall /quiet /norestart /KB:298279 
::Office 정품 알림
wusa /uninstall /quiet /norestart /KB:949810 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:971033 
::인증관련
wusa /uninstall /quiet /norestart /KB:976902 
::인증관련
wusa /uninstall /quiet /norestart /KB:2718704 
::그래픽 반토막으로 나오게 함
wusa /uninstall /quiet /norestart /KB:2803821 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:2868038 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:2868626 
::Windows10 업그레이드 관련
wusa /uninstall /quiet /norestart /KB:2952664 
::루블화 화폐 표시 새 기호
wusa /uninstall /quiet /norestart /KB:2970228 
::윈도 RT, 윈도 8, 윈도 서버 2012용 2014년 8월 롤업
wusa /uninstall /quiet /norestart /KB:2975331 
::윈도 RT 8.1, 윈도 서버 2012 R2용 2014년 8월 롤업
wusa /uninstall /quiet /norestart /KB:2975719 
::악성 업데이트
wusa /uninstall /quiet /norestart /KB:2976897 
::블루스크린 유발
wusa /uninstall /quiet /norestart /KB:2982791 
::악성 업데이트
wusa /uninstall /quiet /norestart /KB:2984615 
::Windows10 업그레이드 알림
wusa /uninstall /quiet /norestart /KB:3021917 
::진단 추적 서비스
wusa /uninstall /quiet /norestart /KB:3022345 
::Windows10 업그레이드 알림
wusa /uninstall /quiet /norestart /KB:3035583 
::KB3022345대용. 사용자 진단, 현황, 추적 서비스
wusa /uninstall /quiet /norestart /KB:3068708 
::사용자 계정 정보 전송
wusa /uninstall /quiet /norestart /KB:3075249 
::사용자 진단, 현황, 추적 서비스
wusa /uninstall /quiet /norestart /KB:3080149 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:3097877 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:3101746 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:3109094  
::인증 관련
wusa /uninstall /quiet /norestart /KB:3112343 
::Windows10 업그레이드 알림2
wusa /uninstall /quiet /norestart /KB:3150513 
::오류 유발
wusa /uninstall /quiet /norestart /KB:4012219 
::오류 유발
wusa /uninstall /quiet /norestart /KB:4012218 
::Windows 10 업그레이드 관련
wusa /uninstall /quiet /norestart /KB:3170735
::Windows 10 업그레이드 알림-종료시 전체화면으로
wusa /uninstall /quiet /norestart /KB:3173040 
::윈도우 디펜더 업데이트
wusa /uninstall /quiet /norestart /KB:915597 
::재부팅현상을 가져온 스펙터, 멜트다운 패치
wusa /uninstall /quiet /norestart /KB:4056892 
wusa /uninstall /quiet /norestart /KB:4056891 
wusa /uninstall /quiet /norestart /KB:4056890 
wusa /uninstall /quiet /norestart /KB:4056898 
wusa /uninstall /quiet /norestart /KB:4056897 

echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto startprogram

::시작프로그램 삭제
:startprogram
cls

if %dstartprogram% == 2 (goto finish)
if %dstartprogram% == 아니오 (goto finish)
if %dstartprogram% == no (goto finish)

echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 시작메뉴-시작프로그램 하위 모든파일을 제거하는데에 동의하셨습니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 시작메뉴-시작프로그램 하위 모든파일 제거중. . .>>%SYSTEMDRIVE%\%zc%_log\%log%
title 시작메뉴-시작프로그램 하위 모든파일 제거중. . .
echo. 
echo. 시작메뉴-시작프로그램 하위 모든파일 제거중. . .
del "%allusersprofile%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
del "%appdata%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo 완료^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
title 완료^^!
echo. 
echo. 완료^^!
timeout/t 1 /nobreak>nul
goto finish

:nofile
COLOR 4F
cls
title 파일 시스템 손상
echo. 
echo. 파일 시스템이 손상되었습니다^^!
echo. 
echo. %zc% 을(를) 재설치 하세요.
echo. 
echo. ENTER키를 누르시면 종료됩니다.
pause>nul
exit

:noroot
COLOR 4F
SETLOCAL ENABLEDELAYEDEXPANSION
system\MESSAGEBOX\MESSAGEBOX.EXE /C:%zc% 관리자 권한 확인^^! /T:4132 /M:%zc%가 관리자 권한으로 실행되지 않았습니다^^!\n%zc%종료후 관리자 권한으로 실행하여 주세요^^!\n관리자 권한이 주어지지 않을 경우 프로그램 오작동이 일어날 수 있습니다.\n예 또는 아니오키 둘중 아무키나 하나를 누르시면 %zc%가 종료됩니다^^!
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
title 압축파일을 올바르게 압축해제해 주세요.
echo.
echo. 압축 파일을 올바르게 해제 후 실행해주시기 바랍니다.
echo.
echo. ENTER키를 누르시면 종료됩니다.
PAUSE>NUL
exit

:finish
cls
title %zc% 을(를) 안전하게 끝마쳤습니다^^!
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo ------------------------------  FINISH  ---------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 종료 >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 종료날짜 : %date% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 종료시각 : %time% >>%SYSTEMDRIVE%\%zc%_log\%log%
echo -------------------------------------------------------------------- >>%SYSTEMDRIVE%\%zc%_log\%log%
echo. >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 을(를) 안전하게 끝마쳤습니다^^! >>%SYSTEMDRIVE%\%zc%_log\%log%
echo %zc% 종료후 재부팅을 권장합니다.>>%SYSTEMDRIVE%\%zc%_log\%log%
echo. 
echo. %zc% 종료날짜 : %date%
echo. %zc% 종료시각 : %time%
echo. 
echo %zc% 을(를) 안전하게 끝마쳤습니다^^!
echo %zc% 종료후 재부팅을 권장합니다^^!
echo. 
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
start %SYSTEMDRIVE%\%zc%_log\%log%
pause>nul
system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul

:off
cls
title 프로그램 종료.
echo. 
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
echo. 
pause>nul
system\TASKS\TASKKILL.EXE /F /IM "CMD.EXE" >Nul 2>Nul