::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH4P6Pp18hWO04d8HS2bvu
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH+vqDo1kYGucnfe8=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title �°汾����
color 0e
set ver=2.6.0
set f12=7z.exe
set f13=7z.dll
set f15=aria2c.exe
md logs
aria2c http://down.mcylyr.cn/rl/newver
copy  "%~dp0"\newver "%~dp0"\logs\newver
del "%~dp0"\newver
aria2c http://down.mcylyr.cn/rl/oldver
copy  "%~dp0"\oldver "%~dp0"\logs\oldver
del "%~dp0"\oldver
CLS
cd /d %~dp0
for /f "tokens=1* delims= " %%i in (logs\newver) do (set softnewver=%%i)
cd /d %~dp0
for /f "tokens=1* delims= " %%i in (logs\oldver) do (set softoldver=%%i)
:kaishi
if exist "%f15%" (goto new1) else (goto leimuerror)

:leimuerror
title Ӧ����
CLS
echo.
echo.
echo   ��⵽������������Ƿ�ǰ��������������������
echo.
echo   1.�ǣ���ת����������
echo.
echo   2.���˳�
echo.
set /p xz=��������ź�س� :
if %xz%==1 start http://rl.mcylyr.cn
if %xz%==2 exit

:new1
cd /d %~dp0
if exist "%f12%" (goto update) else (goto downloadmust)
if exist "%f13%" (goto update) else (goto downloadmust)
:downloadmust
echo.
echo ����������������ļ�
echo.
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/7z.exe
aria2c http://down.mcylyr.cn/rl/packet/7z.dll
goto new1

:update
CLS
if %ver% GTR %softoldver% goto back
goto update2

:update2
if %softnewver% GTR %ver% goto start
goto updatenew

:updatenew
CLS
title �°汾����
echo.
echo ��ǰ�汾 %ver%
echo.
echo.
echo.
echo �ò��Ÿ���,����������ع���
pause
goto starttools

:start
aria2c http://down.mcylyr.cn/rl/newverinfo
CLS
echo.
echo.
echo ��⵽����°汾�������Զ����°汾
echo.
type "%~dp0"newverinfo
echo.
echo.
aria2c http://down.mcylyr.cn/rl/tool/tools.7z
7z x tools.7z -aoa -y
cd "%~dp0"
del tools.7z
echo.
del newverinfo
set /p xz= ������ɣ�������yes�����°湤��
if %xz%==yes goto starttools

:starttools
"RLtools.exe"
exit

:back
aria2c http://down.mcylyr.cn/rl/newverinfo
CLS
echo.
echo.
echo ��⵽�����Ҫ�����������Զ��س�
echo.
type "%~dp0"newverinfo
echo.
echo.
aria2c http://down.mcylyr.cn/rl/tool/tools.7z
7z x tools.7z -aoa -y
cd "%~dp0"
del tools.7z
echo.
del newverinfo
set /p xz= ��ɣ�������yes���빤��
if %xz%==yes goto starttools
