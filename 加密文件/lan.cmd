::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH7v+Puk9QDe0yYoaWiuTfbukQ5SU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQK3ydDTgskK3Z89/UqZPy1+Cj0AbJyZiyy5jFZTFXkG6ABz
::dhA7uBVwLU+EWNBFKsXB/ns=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH4+uJ7EgFUYI=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

CLS
echo.
echo.
echo.
echo ��ע�� �����޷����ӷ����� �����޸����ú�ж�غ���
echo.
echo ���ڼ����������
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%|findstr /I "rocketleague\TAGame" >log && goto open
if exist "TAGame" (goto open) else (goto error)

:error
CLS
echo δ��⵽������ˣ������������С������ҳ
pause
exit

:open
echo.
echo   ��ǰ����·��%cd%
echo.
echo   ������
echo.
echo   ��ѡ��װ���Ļ���ж������
echo.
echo   1.��װ
echo.
echo   2.ж��
echo.
echo   0.�˳�
echo.
set /p xz=   ��������Ų��س� : 
if %xz%==1 goto start
if %xz%==2 goto del
if %xz%==0 exit

:start
title ���ڸ������� �벻Ҫ�ر���
CLS
echo.
echo.
echo.
echo ׼���������� ���ڼ���Ҫ�ļ�
if exist "Coalesced_CHN.bin" (goto start2) else (goto error1)
:error1
echo δ��鵽�����ļ�
pause
:start2
if exist "Language.ini" (goto start3) else (goto error2)
:error2
echo δ��鵽�����ļ�
cd
pause
:start3
echo.
echo ������ ���ڸ�������
xcopy /Y "Coalesced_CHN.bin" TAGame\CookedPCConsole
cd "%~dp0"
xcopy /Y "Language.ini" "TAGame"
echo.
echo.
echo.
title �޸�����ˣ�
cd
echo �޸���ɣ�5��󷵻�������
timeout /t 5
cd "%~dp0"
call "RL���� RLTools.cmd"
exit

:del
title ����ж�غ���
echo ����ִ��ж�س�����
del /q TAGame\Language.ini
del /q TAGame\CookedPCConsole\Coalesced_CHN.bin
title ж������ˣ�
echo ж����ɣ��س��򿪻�����ˣ��˳���ֱ�ӹر�
pause>nul
cd.. 
cd Binaries\Win64
RocketLeague.exe