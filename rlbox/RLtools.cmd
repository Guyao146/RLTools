::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJFaQ/EciFBdbSwu+MGS9CfsV6+eb
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZkMaH2Q=
::ZQ05rAF9IBncCkqN+0xwdVsGAlzMbws=
::ZQ05rAF9IAHYFVzEqQK3ydDTgskK3Z89/UqZEzVyFg8BXqCYhA26r0peP2Pu
::eg0/rx1wNQPfEVWB+kM9LVsJDINj9+x0yz39HG8AEG98f8TksWTDlQoLNTFZ5WX2PSU=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWNBFKsXB/ns=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEfYPur+qCLA==
::ZQ0/vhVqMQ3MEVWAtB9wodqKy/VUXA==
::Zg8zqx1/OA3MEVWAtB9wodqKy/VUXA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH3caTrUIRR6w6YIq7
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

:restart
chcp 20936
@echo off
color 0e
set ver=3.0.0
set uamd=2021.12.20
set auth=����
set appname=������˹��ʷ�С����
set admin=��ʹ�ù���ԱȨ������
set CD="%~dp0"
set cd2=cd
set f1=systeminfo
set f2=hosts
set f3=DxDiag.txt
set f6=vc.exe
set f7=net.exe
set f8=new
set f12=7z.exe
set f13=7z.dll
set f14=version.txt
set f15=aria2c.exe
title %appname% %ver% - %auth% %admin%
md logs
md bin
cd bin
md Expand
md Special
cd /d %~dp0
cd logs
del ad
del newver
del uam
cd logs
cd /d %~dp0
echo. %ver%>logs\ver
echo. ����־�ɻ�����˹��ʷ����������ɣ��������ų������ã����ϴ����������������ʹ��>logs\softlogs
echo. [%date% - %time%] ����汾>>logs\softlogs
echo. %ver%>>logs\softlogs
echo. [%date% - %time%] aria2c����汾>>logs\softlogs
aria2c -v >>logs\softlogs
if exist "%f15%" (goto leimu) else (goto leimuerror)

:leimuerror
echo. [%date% - %time%] ��⵽Ӧ����>>logs\softlogs
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
echo.
echo   �������Ų���������
echo.
echo   ��Ҫ��ѹ�����������ļ�������ѹ��ͬһ�ļ�����
echo.
echo   �ļ����а���RLtools.exe update.exe aria2c.exe������Ҫ�ļ�
echo.
echo   �������������������ȴ��������������ʾ������ϵ����
echo.
set /p xz=��������ź�س� :
if %xz%==1 start http://rl.mcylyr.cn
if %xz%==2 exit

:leimu
cd /d %~dp0
echo. [%date% - %time%] UAC�ж��߼�>>logs\softlogs
CLS
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
if "%errorlevel%" NEQ 0 (goto UACPrompt) else (goto uactrue)

:UACPrompt
cd /d %~dp0
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto uactrue","","runas",1)(window.close)&&exit
goto uacfalse

:uactrue
cd /d %~dp0
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� �������ȡ����ԱȨ�޳ɹ�����лʹ�û�����˹��ʷ�С���ߣ��汾%ver% 2
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� ����������ά�ַ����������ưɣ�����Ҫ���� 2
echo. [%date% - %time%] ��ʾ�����ɹ�>>logs\softlogs
cd /d %~dp0
echo. [%date% - %time%] UACͨ��>>logs\softlogs
goto new1
 
:uacfalse
echo. [%date% - %time%] UAC��ȡ����Աʧ��>>logs\softlogs
cd /d %~dp0
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� �������ȡ����ԱȨ��ʧ�ܣ����Ҽ�ʹ�ù���ԱȨ������ 2
cd /d %~dp0
exit

:new1
cd /d %~dp0
if exist "%f12%" (goto new2) else (goto downloadmust)
:new2
cd /d %~dp0
if exist "%f13%" (goto new3) else (goto downloadmust)
:new3
cd /d %~dp0
if exist "bin\Special\RL��������ʾ��.exe" (goto new4) else (goto downloadmust)
:new4
cd /d %~dp0
if exist "bin\Special\logo.ico" (goto usertrue) else (goto downloadmust)
:downloadmust
echo. �������п�>>logs\softlogs
echo.
echo ���������������
echo.
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/ReadLog.exe -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/7z.exe -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/7z.dll -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/RLtoolstips.exe -d \bin\Special -l .\logs\softlogs
cd bin\Special
rename RLtoolstips.exe RL��������ʾ��.exe
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/logo.ico -d \bin\Special -l .\logs\softlogs
echo. [%date% - %time%] ���п����سɹ�>>logs\softlogs
goto leimu

:usererror
CLS
echo.
echo.
echo ��Ǹ��������ͬ���û�Э�飬��5�������Զ��˳�
echo.
echo ����ʹ����ɾ��logs�ļ����µ�false�ļ������´򿪳������ͬ��
echo.
timeout /t 5
exit

:usertrue
aria2c http://down.mcylyr.cn/rl/uamd -d .\logs --allow-overwrite=true
aria2c http://down.mcylyr.cn/rl/uam -d .\logs --allow-overwrite=true
echo. [%date% - %time%] �û�Э��������>>logs\softlogs
cd /d %~dp0
if exist "logs\true" (goto open) else (goto usertrue2)
:usertrue2
cd /d %~dp0
if exist "logs\false" (goto usererror) else (goto usertrue3)
:usertrue3
CLS
cd /d %~dp0
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� ����������ʾ�û�Э�飬���ܻ����п��٣�ͬ��󼴿ɿ�ʼʹ�� 2
title �û�Э��
echo. [%date% - %time%] �û�Э����ʾ�ɹ�>>logs\softlogs
cd /d %~dp0
echo.
echo.
echo   Э���������logs�ļ����ڵ�uam�ļ��У����ظ��鿴
echo.
echo   ����Э�����ʱ�� %nuamd%
echo.
type logs\uam
echo.
set /p xz=
cd /d %~dp0
if %xz%==y echo.>>logs\true
if %xz%==y goto new1
if %xz%==n echo.>>logs\false
if %xz%==n goto usererror

:open
echo. ��ȡ�°汾�����¹����>>logs\softlogs
echo. [%date% - %time%] �°汾�빫���������>>logs\softlogs
CLS
ipconfig /flushdns
aria2c http://down.mcylyr.cn/rl/info -d .\logs -l .\logs\softlogs --allow-overwrite=true
aria2c http://down.mcylyr.cn/rl/ver/newver -d .\logs -l .\logs\softlogs --allow-overwrite=true
aria2c http://down.mcylyr.cn/rl/ver/oldver -d .\logs -l .\logs\softlogs --allow-overwrite=true
cd /d %~dp0
for /f "tokens=1* delims= " %%i in (logs\newver) do (set softnewver=%%i)
cd /d %~dp0
for /f "tokens=1* delims= " %%i in (logs\oldver) do (set softoldver=%%i)

:newver2
if %ver% GTR %softoldver% goto newupdate2
goto newver3

:newver3
if %softnewver% GTR %ver% goto newupdate2
goto open2

:newupdate2
start update.exe
goto open2
exit

:open2
echo. [%date% - %time%] ��ʼ��>>logs\softlogs
cd /d %~dp0
CLS
echo.
echo ���ڳ�ʼ���в�����°汾��
echo.
CLS
type "%~dp0"logs\info
echo.
ping rl.mcylyr.cn|findstr /i /c:"�Ҳ�������">>logs/softlogs && echo. [%date% - %time%] ����Ҳ�������>>logs\softlogs && goto errornet
goto new

:errornet
echo. [%date% - %time%] �޷�������������>>logs\softlogs
echo.
echo �޷����ӵ�������
echo.
echo �����ǹ�����ͣ�����/����δ����/������������
echo.
echo �����������QQȺ�����Ƿ�����������˻�ûǮ���ѹ���
echo.
echo ��������˳�
pause
exit

:new
cd /d %~dp0
if exist "logs\%f8%" (goto chinese) else (goto 1)

:1
CLS
set path_=%Path%
setx "PATH" "%path_%;%~dp0;%rltools%" /m
echo. %errorlevel% >>logs\softlogs
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\������˹��ʷ�������.lnk""):b.TargetPath=""%~dp0RLtools.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
title ����ָ�����������
echo. [%date% - %time%] �����������ʾ>>logs\softlogs
echo.
echo   ��⵽���ǵ�һ�δ�/���±�������Ƿ���Ҫ�������
echo.
echo   1.��Ҫ
echo.
echo   2.����
echo.
set /p xz=   ��������Ų��س� : 
cd /d %~dp0
if %xz%==1 echo.>>logs\new
if %xz%==1 start http://rl.mcylyr.cn/help.html
if %xz%==2 echo.>>logs\new
if %xz%==2 goto chinese
pause>nul
goto new

:chinese
TIMEOUT /T 1 /NOBREAK
title %appname% %eng% %ver% - %auth% %admin%
aria2c http://down.mcylyr.cn/rl/ad -d .\logs -l .\logs\softlogs --allow-overwrite=true
echo. [%date% - %time%] ��ȡ��ҳ�����������ҳ�ɹ� >>logs\softlogs
CLS
color 0e
echo.
echo.
echo     %appname% %ver%
echo.
echo     1.һ������������˹��ʷ�
echo.
echo     2.�޸�hosts������epic��RL
echo.
echo     3.��������
echo.
echo     4.���������빤����߼�����
echo.
echo     5.��������
echo.
echo     6.���뱾��ĿGithubҳ��
echo.
echo     7.�Ķ��û�Э��
echo.
echo     0.�˳�
echo.
type "%~dp0"logs\ad
echo.
echo.
set /p xz=   ��������Ų��س� : 
if %xz%==1 goto rlstart
if %xz%==2 goto 3
if %xz%==3 goto other
if %xz%==4 goto toolsinfo
if %xz%==5 start http://www.mcylyr.cn/donate.html&goto chinese
if %xz%==6 start https://github.com/Guyao146/RLTools&goto chinese
if %xz%==6 start https://api.mcylyr.cn/h5/servicesagreement.html&goto chinese
if %xz%==time goto ad
if %xz%==test goto test
if %xz%==0 exit
goto chinese

:toolsinfo
title ����������߼�����
CLS
echo.
echo.
echo   ����������߼�����
echo.
echo   ��ǰ�������·�� %cd%
echo.
echo   ���ע�����·�� %rltools%
echo.
echo   ������˹��ʷ��������ɹ��������ұ�д����Ӫ
echo.
echo   1.��ѯ�����������ر���л
echo.
echo   2.����QQȺ/��ϵ%auth%/����%auth%/�����˺�
echo.
echo   3.���������ȫ�����沢�˳�
echo.
echo   4.�򿪹����ҹ���
echo.
echo   5.�򿪹��������
echo.
echo   6.������������˽Э��ͬ��
echo.
echo   7.�������ɹ������ݷ�ʽ
echo.
echo   0.������ҳ
echo.
set /p xz=   ��������Ų��س� : 
if %xz%==1 goto donate
if %xz%==2 goto join
if %xz%==3 del logs\*.* /q /s&goto exit
if %xz%==4 start http://mcylyr.cn
if %xz%==5 start http://rl.mcylyr.cn
if %xz%==6 goto usererrortrue
if %xz%==7 goto fastway
if %xz%==tools goto toolsmode
if %xz%==0 goto chinese
pause>nul
goto chinese

:fastway
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\������˹��ʷ�������.lnk""):b.TargetPath=""%~dp0RLtools.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto toolsinfo

:usererrortrue
echo. [%date% - %time%] �û�������˽Э��ͬ��>>logs\softlogs
title ������������˽Э��ͬ��
CLS
echo.
echo.
echo   �����Ҫ�����û�Э���ͬ����
echo.
set /p xz=   ����Y���� ����N������ҳ : 
if %xz%==y del logs\true /q /s
if %xz%==y echo.>>logs\false
if %xz%==y goto Chinese

:reloadnet
echo. [%date% - %time%] �û�ִ�������������>>logs\softlogs
title ��������
CLS
echo. [%date% - %time%] ˢ��DNS>>logs\softlogs
echo ��ʼִ�е�һ�� ˢ��DNS
ipconfig /flushdns
ipconfig /flushdns
ipconfig /flushdns
echo ˢ�³ɹ�
echo.
echo 3������
timeout 3
echo.
echo. [%date% - %time%] ˢ�»���>>logs\softlogs
echo ��ʼִ�еڶ��� ˢ�»���
ipconfig /flushdns
echo.
echo ˢ�³ɹ�
echo.
echo 3������
timeout 3
echo.
echo. [%date% - %time%] ��ȡ��������>>logs\softlogs
echo ��ʼִ�е����� ��ȡ����
ipconfig /all
ipconfig /release
ipconfig /renew
echo.
echo ��ȡ�ɹ�
echo.
echo 3������
timeout 3
echo.
echo. [%date% - %time%] ����������...>>logs\softlogs
echo ��ʼִ�е��Ĳ� ��������
ipconfig /all
echo.
timeout 5
echo.
echo �������
echo.
echo. [%date% - %time%] ˢ������>>logs\softlogs
echo ��ʼִ�е��岽 ˢ������
echo.
ipconfig /release
ipconfig /renew
echo.
echo. [%date% - %time%] �����������>>logs\softlogs
echo ˢ����ɣ��뾡�����ܰ�
echo.
echo ��������˳�
pause>nul

:join
start http://rl.mcylyr.cn/QQgroup.html
goto chinese

:donate
title �����������ر���л
CLS
start http://rl.mcylyr.cn/donate.html
pause>nul
goto chinese

:closerl
echo. [%date% - %time%] һ���޸����رջ�����˹��ʷ��޸�Steam��Epic���������еĴ���>>logs\softlogs
title һ���޸����رչرջ�����˹��ʷ��޸�Steam��Epic���������еĴ���
CLS
taskkill /f /im "RocketLeague.exe"
echo.
echo �رճɹ�����ѡ�������汾
echo.
echo 1.EPIC��
echo.
echo 2.Steam��
echo.
echo 0.������ҳ
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch
if %xz%==2 start steam://rungameid/252950
if %xz%==0 goto chinese
goto closerl

:ad
start http://rl.mcylyr.cn/ad.html
goto chinese

:epicinstall
echo. [%date% - %time%] �û�ִ�а�װEpic����>>logs\softlogs
title ��װepic
CLS
echo.
echo.
echo ��ѡ������Դ
echo.
echo 1.EPIC����
echo.
echo 2.ӣ����Ȼ����Դ
echo.
echo 0.������ҳ
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto epic1
if %xz%==2 goto epic2
if %xz%==0 goto chinese

:epic1
title ��������epic�ͻ��� - EPIC����
echo.
echo ��������epic�ͻ��� - EPIC����
aria2c https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi -d \bin -l .\logs\softlogs -s64 -x16
CLS
echo.
echo ���ڴ�epic�ͻ���
start bin\EpicInstaller.msi
echo.
echo ��װ��ɣ���������ٶȺ����������Ը�hosts���ԣ�3��󷵻���ҳ
echo. [%date% - %time%] Epic��װ���>>logs\softlogs
timeout /t 3
goto chinese

:epic2
title ��������epic�ͻ��� - EPIC����
echo.  
echo ��������epic�ͻ��� - ӣ����Ȼ����Դ
aria2c http://down.mcylyr.cn/rl/packet/EpicInstaller.msi -d \bin -l .\logs\softlogs -s64 -x16
CLS
echo.
echo ���ڴ�epic�ͻ���
start bin\EpicInstaller.msi
echo.
echo ��װ��ɣ���������ٶȺ����������Ը�hosts���ԣ�3��󷵻���ҳ
echo. [%date% - %time%] Epic��װ���>>logs\softlogs
timeout /t 3
goto chinese

:other
CLS
title ��������
echo.
echo   ��������
echo.
echo.
echo   1.�鿴������˹��ʷ�¼���ļ�
echo.
echo   2.��ϵ��Բ�������־
echo.
echo   3.�����޸����������Epic�ͻ������л���
echo.
echo   4.һ���رջ�����˹��ʷ��޸�Steam��Epic���������еĴ���
echo.
echo   5.���� ���� �޸� ��װ��� BakkesMod
echo.
echo   6.���� ��װ epic�ͻ���
echo.
echo   0.�������˵�
echo.
echo.
set /p xz=��������Ų��س� :
if %xz%==1 explorer "%Userprofile%\Documents\My Games\Rocket League\TAGame\Demos"
if %xz%==2 goto log
if %xz%==3 goto repair
if %xz%==4 goto closerl
if %xz%==5 goto mod
if %xz%==6 goto epicinstall
if %xz%==0 goto chinese
pause>nul
goto chinese

:rlstart
echo. [%date% - %time%] һ������RL>>logs\softlogs
CLS
title һ������RL
echo.
echo.
echo ��ѡ��������Ϸ�汾
echo.
echo 1.EPIC��
echo.
echo 2.Steam��
echo.
echo 0.������ҳ
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch & goto startexit
if %xz%==2 start steam://rungameid/252950 & goto startexit
if %xz%==0 goto chinese
:startexit
echo.
echo.
echo ������ϣ��Ե�Ƭ�̣�ף��Ϸ��죬�����Զ���ת����ҳ
timeout /t 5
goto chinese

:CHN
echo. [%date% - %time%] �޸������ļ�>>logs\softlogs
echo.
echo.
echo ���ڼ�������ļ��Ƿ�����
echo.
cd /d %~dp0
if exist "bin\Bin1\%f9%" (goto CHN2) else (goto CHNdown)
:CHN2
if exist "bin\Bin1\Bin2\%f10%" (goto CHN3) else (goto CHNdown)
:CHN3
if exist "bin\Bin1\Bin2\%f11%" (goto CHN4) else (goto CHNdown)&
:CHN4
CLS
echo.
echo  �����ϣ�
echo.
echo  ����·��������TAGame�ļ������ڵ��ļ���
echo.
set /p rl=���������������ڵ�·��:
md "%rl%\Bin2"
xcopy /Y bin\Bin1\Bin2 "%rl%"
xcopy /Y bin\Bin1\lan.exe "%rl%"
call "%rl%\lan.exe"
pause
:CHNdown
CLS
echo.
echo ��Ǹ��δ��⵽�����ļ���5����Զ���ʼ����
echo.
timeout /t 5
cd bin
md Bin1
cd Bin1
md Bin2
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/Coalesced_CHN.bin -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/Language.ini -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/lan.exe -l .\logs\softlogs
copy  "%~dp0"\Coalesced_CHN.bin "%~dp0"\bin\Bin1\Bin2
copy  "%~dp0"\Language.ini "%~dp0"\bin\Bin1\Bin2
copy  "%~dp0"\lan.exe "%~dp0"\bin\Bin1
del "%~dp0"\lan.exe
del "%~dp0"\Language.ini
del "%~dp0"\Coalesced_CHN.bin
goto CHN

:mod
CLS
title BakkesMod����������
echo.
echo.
echo     BakkesMod����������
echo.
echo     1.�״ΰ�װBakkesmod��ѡ�ң�
echo.
echo     2.BakkesModԭ��������ҳ��
echo.
echo     3.BakkesMod����������Դ ����:fytn
echo.
echo     4.BakkesMod��������
echo.
echo     5.��֪ԭ���ߵĶ���
echo.
echo     6.�޸�Bakkesmod��������
echo.
echo     7.��װBakkesmod���
echo.
echo     8.�Զ�����Bakkesmod���°汾
echo.
echo     9.Bakkesmod���������װ
echo.
echo     0.�������˵�
echo.
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto bminstall
if %xz%==2 start https://bakkesmod.com/
if %xz%==3 start https://sakuragu.lanzoui.com/b01zvumje
if %xz%==4 start https://bakkesmod.fandom.com/wiki/Troubleshooting
if %xz%==5 goto readme
if %xz%==6 goto bmrepair
if %xz%==7 start http://rl.mcylyr.cn/plugins/index.html
if %xz%==8 goto bmupdate
if %xz%==9 goto bmplugins
if %xz%==0 goto chinese
goto chinese

:bmplugins
CLS
echo. [%date% - %time%] ��װBakkesmod���...>>logs\softlogs
title ��װBakkesmod���
echo.
echo.
echo  ��������ҳ����ʾ�Ĳ����ţ�������Զ���װ�˲��
echo. 
set /p bmpg=��������Ų��س� : 
"%Appdata%"\bakkesmod\bakkesmod\plugininstaller.exe bakkesmod://install/%bmpg%
echo �ѳ��Ժ���Bakkesmod�����װ��������Ҳ����ļ������ʹ���޸�����
echo.
echo �����Plugin will be installed next time you launch the game!��������Bakkesmod����Ϸʱ�ٴγ��԰�װ
echo.
echo ������������������ϵ����
pause>nul
goto mod

:bminstall
echo. [%date% - %time%] �״ΰ�װBakkesmod...>>logs\softlogs
title �״ΰ�װBakkesmod
CLS
aria2c http://down.mcylyr.cn/rl/packet/BakkesModSetup.exe -d \bin -l .\logs\softlogs
CLS
"%~dp0"bin\BakkesModSetup.exe
echo ��װ���
goto mod

:bmrepair
echo. [%date% - %time%] �����޸�Bakkesmod������֢>>logs\softlogs
title �����޸�Bakkesmod������֢
CLS
echo.
echo.
echo  ���ڼ�� Bin/Expand�е��޸��ļ��Ƿ���ȫ
echo.
cd /d %~dp0
echo  ���ڼ��VC���п��Ƿ����
echo.
if exist "bin\Expand\%f6%" (goto checknet2) else (goto repairerror3)
:checknet2
cd /d %~dp0
echo  ���ڼ��Net���п��Ƿ����
if exist "bin\Expand\%f7%" (goto startrepair3) else (goto repairerror4)
:startrepair3
echo.
echo ���ڳ��Թر�EPIC�ͻ���
taskkill /f /im epicgameslauncher.exe
echo.
echo ���ڳ��Թر�Steam�ͻ���
taskkill /f /im Steam.exe
echo.
echo ���ڳ��Թرջ������
taskkill /f /im rocketleague.exe
echo.
echo ��������VC���п��޸�
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo ��������Net���п��޸�
cd /d %~dp0
bin\Expand\net.exe
echo.
echo VC��Net���п����޸���ɣ�����׼���޸�Bakkesmod�����ļ�
echo. [%date% - %time%] VC��Net���п����޸���ɣ�����׼���޸�Bakkesmod�����ļ�>>logs\softlogs
goto bmupdate

:bmupdate
echo. [%date% - %time%] �޸�Bakkesmod>>logs\softlogs
cd /d %~dp0
echo  ���ڼ��Bakkesmod�޸�/���°��Ƿ����
if exist "bin\Expand\bakkesmod.zip" (goto bmupdate2) else (goto repairerror5)
:bmupdate2
cd /d %~dp0
echo �����ϣ������޸�/����
echo.
cd %Appdata%\bakkesmod
md %Appdata%\bakkesmod\bakkesmod
cd /d %~dp0
copy  "%~dp0"bin\Expand\bakkesmod.zip %Appdata%\bakkesmod\bakkesmod\bakkesmod.zip
cd %Appdata%\bakkesmod\bakkesmod
7z x %Appdata%\bakkesmod\bakkesmod\bakkesmod.zip -o%Appdata%\bakkesmod\bakkesmod -aoa -y
del %Appdata%\bakkesmod\bakkesmod\bakkesmod.zip
timeout /t 3
echo.
echo.
echo �޸�/������ϣ������´�Bakkesmod����Ƿ��޸�/���³ɹ�
echo. [%date% - %time%] �޸�Bakkesmod���>>logs\softlogs
pause>nul
goto mod

:repairerror3
CLS
echo.
echo ��Ǹ��δ��⵽VC���п��޸�����5����Զ���ʼ����vc.exe���п�
echo.
timeout /t 5
cd bin
md Bin1
cd /d %~dp0
aria2c.exe http://down.mcylyr.cn/rl/runtime/vc.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
goto bmrepair

:repairerror4
CLS
echo.
echo ��Ǹ��δ��⵽Net���п��޸�����5����Զ���ʼ����net.exe���п�
echo.
timeout /t 5
cd bin
md Bin1
cd /d %~dp0
aria2c.exe http://down.mcylyr.cn/rl/runtime/net.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
goto bminstall

:repairerror5
CLS
echo.
echo ��Ǹ��δ��⵽Bakkesmod�޸��ļ���5����Զ���ʼ����
echo.
timeout /t 5
cd bin
md Bin1
cd /d %~dp0
aria2c.exe http://down.mcylyr.cn/rl/packet/bakkesmod.zip -d .\bin\Expand -l .\logs\softlogs
goto bmupdate

:readme
CLS
echo.
echo.
echo.
echo Bakkesmod��������Դ
echo.
echo ����������Bakkesmodԭ������Դ
echo.
echo ת��û�еõ����ߵ���Ȩ����Ϊ�Ҳ�֪����������ϵ
echo.
echo �������߿�������ϵ�ң����ҷ��ʼ�SakuraGuWork@outlook.com
echo.
echo ���Ƿǳ�����ԭ���ߵİ�Ȩ
echo.
echo ����㲻ͬ�⣬����ҷ��ʼ�ɾ������Դ
echo.
echo ���ǽ�����ɾ����Ʒ
echo.
echo Bakkesmod Chinese Download Source
echo.
echo Please give priority to Bakkesmod original author download source
echo.
echo The reprint has not been authorized by the author, because I don't know where to contact
echo.
echo please contact me after the author sees, email me SakuraGu146@outlook.com
echo.
echo We attach great importance to the copyright of the original author
echo.
echo If you don't agree, please send me an email to remove the download source
echo.
echo We will delete works as soon as possible
pause>nul
goto chinese

:repair
title �����޸����������Epic�ͻ������л���
CLS
echo.
echo.
echo.
echo  ���ڼ�� Bin/Expand�е��޸��ļ��Ƿ���ȫ
echo.
cd /d %~dp0
echo  ���ڼ��VC���п��Ƿ����
echo.
if exist "bin\Expand\%f6%" (goto checknet) else (goto repairerror1)
:checknet
cd /d %~dp0
echo  ���ڼ��Net���п��Ƿ����
if exist "bin\Expand\%f7%" (goto startrepair) else (goto repairerror2)

:startrepair
CLS
echo.
echo ��ѡ���޸�����
echo.
echo 1.EPIC�ͻ���
echo.
echo 2.������˿ͻ���
echo.
echo 0.������ҳ
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto repairepic
if %xz%==2 goto repairrl
if %xz%==0 goto chinese
goto startrepair

:repairepic
echo.
echo ���ڳ��Թر�EPIC�ͻ���
taskkill /f /im epicgameslauncher.exe
echo.
echo ��������VC���п��޸�
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo ��������Net���п��޸�
cd /d %~dp0
bin\Expand\net.exe
echo.
echo ���ڳ�������EPIC�ͻ���
start com.epicgames.launcher://
goto 
:repairrl
echo.
echo ���ڳ��Թر�EPIC�ͻ���
taskkill /f /im epicgameslauncher.exe
echo.
echo ���ڳ��Թر�Steam�ͻ���
taskkill /f /im Steam.exe
echo.
echo ���ڳ��Թرջ������
taskkill /f /im rocketleague.exe
echo.
echo ��������VC���п��޸�
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo ��������Net���п��޸�
cd /d %~dp0
bin\Expand\net.exe
CLS
echo.
echo ��ѡ�������汾
echo.
echo 1.EPIC��
echo.
echo 2.Steam��
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch
if %xz%==2 start steam://rungameid/252950
echo.
echo.
echo �޸���ϣ������Ȼ����ʧ����ر�ɱ���������
echo.
echo �������ȷ����3����������ԣ��뱣��õ�ǰ�������
echo.
pause>nul
TIMEOUT /T 3 /NOBREAK
shutdown /r -t 0

:repairerror1
CLS
echo.
echo ��Ǹ��δ��⵽VC���п��޸�����5����Զ���ʼ����vc.exe���п�
echo.
timeout /t 5
cd /d %~dp0
aria2c https://down.mcylyr.cn/rl/runtime/vc.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
goto repair

:repairerror2
CLS
echo.
echo ��Ǹ��δ��⵽Net���п��޸�����5����Զ���ʼ����net.exe���п�
echo.
timeout /t 5
cd /d %~dp0
aria2c https://down.mcylyr.cn/rl/runtime/net.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
pause
goto repair

:exit
title �˳�
echo.
echo.
echo.
echo �����ؼ��������ٻ�������Ƿ��Լ�����Ϸ�е�����Ͻ�REGIONSѡ�����������ķ�����
echo.
echo ����������������ҷ��� �����ʼ�/QQ/Discord �ȷ�ʽ��ϵ�� ���˼������������ϵĻ�������������
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ�ã�10��󷵻���ҳ
echo.
timeout /t 10
goto chinese

:3
title ȷ������
CLS
echo.
echo.
echo.
echo   �����޸�hosts֮ǰ�����������
echo.
echo   1.���׹ر����м�����
echo.
echo   2.���׹ر�����ɱ�����
echo.
echo   �������ָ������������ܾ����ʣ��ļ���ռ�õ����
echo.
echo   ȷ������������������������һ��
echo.
pause>nul
title �޸�hosts������epic��RL
CLS
echo.
echo.
echo   �޸�hosts������epic��RL
echo.
echo   1.�Ƽ�����������Ping���޸�hosts
echo.
echo   2.��������������Ping���޸�hosts
echo.
echo   3.��hosts�ļ���
echo.
echo   4.�ָ����ݵ�hosts
echo.
echo   5.�򿪱���hosts�ļ���
echo.
echo   6.ˢ�����绺��
echo.
echo   0.�������˵�
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto ping
if %xz%==2 goto ping2
if %xz%==3 start %systemroot%/system32/drivers/etc
if %xz%==4 goto rec
if %xz%==5 start %systemroot%/system32/drivers/etc/hostsback
if %xz%==6 ipconfig /flushdns&goto chinese
if %xz%==0 goto chinese
pause>nul
goto 3

:logerrordx
CLS
echo DxDiag.txt��־û�ҵ���������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto chinese

:logerrorsysteminfo
CLS
echo systeminfo��־����ʧ�ܣ�������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto chinese

:logerrorhosts
CLS
echo hosts��־����ʧ�ܣ�������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto chinese

:test
CLS
title ����ģʽ
echo.
echo.
echo    ���������ģʽ
echo.
echo    1. ���ȫ����־
echo.
echo    2. ����Ϸ��־�ļ���
echo.
echo    3. ���·��׷����־
echo.
echo    4. ���ping�޸�hosts (���Ƽ�����������˽���Щ������)
echo.
echo    5. ˢ�����������뻺�� (���ʺϼ����û�ʹ�ã�С�ײ�Ҫ�Ҵ򿪣����ܻ����1-3���ӣ�ˢ�����ǰ��Ҫ�ر�)
echo.
echo    6. ��ʵʱ��־��س���
echo.
echo    7. ��������������
echo.
echo    0. �������˵�
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto log
if %xz%==2 explorer "%USERPROFILE%/Documents/My Games/Rocket League/TAGame/Logs"
if %xz%==3 goto luyou
if %xz%==4 goto noping
if %xz%==5 goto reloadnet
if %xz%==6 goto toollogs
if %xz%==7 goto restart
if %xz%==0 goto chinese
goto test

:toollogs
SETLOCAL
set whatlog=%~dp0\logs\softlogs
start %~dp0bin\ReadLog.exe
ENDLOCAL
goto test

:luyou
echo �������ɱ�����host������Ϣ
echo.>logs\luyou
echo.������host������Ϣ>>logs\luyou
echo.>>logs\luyou
echo 1.������>>logs\systeminfo
tracert 45.82.78.113>>logs\luyou
echo.>>logs\luyou
echo 2.�ձ�������>>logs\systeminfo
tracert 124.108.22.138 >>logs\luyou
echo.>>logs\luyou
echo.
echo ok
echo.
pause>nul
goto toolsmode

:log
CLS
title ϵͳ�����
cd /d %~dp0
echo.
echo.����־�ɻ�����˹��ʷ����������ɣ��������ų������ã����ϴ����������������ʹ��>logs\systeminfo
echo.
echo Ԥ��ȫ����Ҫ1-10���ӣ������ĵȴ�
echo.
echo ����  [#---------] 5%
echo ��������ʱ����Ϣ
echo.��ǰ����������ʱ��>>logs\systeminfo
SETLOCAL
set whatlog=%~dp0\logs\systeminfo
start %~dp0bin\ReadLog.exe
ENDLOCAL
date /t>>logs\systeminfo
time /t>>logs\systeminfo
echo.
echo ok
echo.
 
echo ����  [##--------] 10%
echo �������������Ϣ
echo.>>logs\systeminfo
echo.��־��RL���ʷ����������� �汾 %ver%>>logs\systeminfo
echo.����·�� %~dp0>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [###-------] 20%
echo ��������ϵͳ��Ϣ
echo.>>logs\systeminfo
echo.ϵͳ��Ϣ>>logs\systeminfo
echo.>>logs\systeminfo
systeminfo>>logs\systeminfo
echo.>>logs\systeminfo
echo ���ڸ���RL��Ϸ��־
md %CD%/logs/rllogs
xcopy -y "%USERPROFILE%/Documents/My Games/Rocket League/TAGame/Logs" "%CD%/logs/rllogs"
echo.
echo ok
echo.

echo �������ɴ洢��Ϣ
echo.>>logs\systeminfo
echo.Ӳ����Ϣ>>logs\systeminfo
echo ����  [####------] 30%
echo.>>logs\systeminfo
wmic diskdrive>>logs\systeminfo
echo.>>logs\systeminfo
echo.�洢�ռ���Ϣ>>logs\systeminfo
echo ����  [####------] 35%
echo.>>logs\systeminfo
Wmic logicaldisk>>logs\systeminfo
echo.>>logs\systeminfo
echo.�����ڴ���Ϣ>>logs\systeminfo
echo ����  [####------] 40%
echo.>>logs\systeminfo
wmic memorychip>>logs\systeminfo
echo.>>logs\systeminfo
echo ����  [#####-----] 45%
wmic volume>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [######----] 50%
echo �������ɱ���������Ϣ
echo.>>logs\systeminfo
echo.����������Ϣ>>logs\systeminfo
echo.>>logs\systeminfo
ipconfig/all>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [#######---] 70%
echo ��������ip��Ϣ
echo.
echo ������⿨ס��������������ϳ���
echo.>>logs\systeminfo
echo.����ip>>logs\systeminfo
echo.>>logs\systeminfo
curl ipv4.icanhazip.com>>logs\systeminfo
curl ifconfig.io>>logs\systeminfo
curl httpbin.org/ip>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [########--] 80%
echo ��������hosts��Ϣ
echo.>>logs\systeminfo
echo.hosts��Ϣ>>logs\systeminfo
echo.>>logs\systeminfo
copy C:\Windows\System32\drivers\etc\hosts "%~dp0"\logs\hosts
type "%~dp0"\logs\hosts >> "%~dp0"\logs\systeminfo
cd /d %~dp0
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [#########-] 90%
echo �����������粨�����
echo.>>logs\systeminfo
echo.ping��־>>logs\systeminfo
echo.>>logs\systeminfo
ping www.baidu.com>>logs\systeminfo
ping dh.mcylyr.cn>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [#########-] 95%
echo �������ɽ�����Ϣ
echo.>>logs\systeminfo
echo.������Ϣ>>logs\systeminfo
echo.>>logs\systeminfo
tasklist /svc>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [##########] 100%
echo ��������DirectX��Ϣ
echo.>>logs\systeminfo
echo ���ڽ������Ĵ����е���·���  ����������Ϣ  ��logs�ļ����У����Ҳ�Ҫ������
echo.
echo ���������Dx��⹤��
pause
dxdiag
echo.
echo ���ڼ���Ƿ����ɳɹ�
if exist "logs\%f1%" (goto hosts) else (goto logerrorsysteminfo)
echo ok
echo.
:hosts
if exist "logs\%f2%" (goto dx) else (goto logerrorhosts)
echo ok
echo.
:dx
if exist "logs\%f3%" (goto logok) else (goto logerrordx)
echo ok
echo.

:logok
CLS
7z a -t7z logs.7z logs
rename logs.7z rltools-%date%-%time%.7z
findstr /i /g:"logs\systeminfo" /c:"api.epicgames.dev" && goto neterror && goto logping
:logping
type "%~dp0"logs\systeminfo|findstr /i �Ҳ������� && goto pingerror
goto logjiasuqi
:logvirus
findstr /i /g:"logs\systeminfo" "360 ���Թܼ� tencent tengxun diannaoguanjia hipsmain HipsTray" && goto pingerror && goto logjiasuqi
:logjiasuqi
type "%~dp0"logs\systeminfo|findstr /i "qimiao liuxing qiyou lanpao tengxun tencent xiangchang fengyun ���� ���� ���� �㳦 ���� ���� ��Ѷ" && goto jiasuqierror && goto logokgo

:neterror
CLS
echo.
echo ����AI�����жϣ�������δ�޸�hosts���»������/Epic�޷���������ʹ�ù��������޸�hosts���ܺ�����
echo.
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ����
echo.
pause
goto Chinese

:pingerror
CLS
echo.
echo ����AI�����жϣ������ǵ������������⵼���޷���������ʹ��360/���޵�����޸����������
echo.
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ����
echo.
pause
goto Chinese

:neterror
CLS
echo.
echo ����AI�����жϣ�������360/���Թܼҵ�ɱ��������»������/Epic�޷��������볹�׹ر�ɱ�������ʹ�ù��������޸�hosts���ܺ�����
echo.
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ����
echo.
pause
goto Chinese

:jiasuqierror
CLS
echo.
echo ����AI�����жϣ������ǿ�������������hosts�����ε��»������/Epic�޷��������볹�׹رռ�������ʹ�ù��������޸�hosts���ܺ�����
echo.
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ����
echo.
pause
goto Chinese

:logokgo
CLS
echo.
echo AIδ�жϳ����⣬����ϵ����
echo.
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ
echo.
pause
goto Chinese

:rec
CLS
title �ָ�ԭhosts��
echo.
echo.
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hostsback\hosts %windir%\System32\drivers\etc\hosts
echo.
ipconfig /flushdns
echo.
echo ��û�г��־ܾ�������Ϊ�ָ��ɹ�
echo.
echo %auth% %autheng%��л���ʹ�ã�5��󷵻���ҳ
timeout /t 5
goto chinese

:noping
CLS
title ���ping�޸�hosts
echo.
echo.
echo   ���ping�޸�hosts
echo.
echo.
echo   1.�ձ�����������
echo.
echo   2.������ɼ�2��
echo.
echo   3.������ɼ�3��
echo.
echo   4.������ɼ�4��
echo.
echo   5.���������ܷ�����
echo.
echo   6.���ַ�����
echo.
echo   7.̩�����ȷ�����
echo.
echo   8.����ŦԼ������
echo.
echo   9.������ɼ������
echo.
echo   0.�������˵�
echo.
set /p xz=�������ֲ��س���ʼ�޸� :
if %xz%==1 goto us
if %xz%==2 goto us3
if %xz%==3 goto us4
if %xz%==4 goto us5
if %xz%==5 goto us6
if %xz%==6 goto bl
if %xz%==7 goto tg
if %xz%==8 goto us7
if %xz%==9 goto us2
if %xz%==0 goto chinese
pause>nul
goto exit

:ping
CLS
title ���Է������ӳ��У��Ƽ���������
echo.
echo.
echo ����ʱ�� Test Time>logs/ping.txt
echo ��������Լ1-5���� ��������״�����������ٶ� ����ʱ�벻Ҫ�򿪼�����
echo.
echo.
date /t>>logs/ping.txt
time /t>>logs/ping.txt
echo.
echo.
REM echo ���ڲ��� �ӻ���ר��-â���ձ�����������
REM echo 1.�ӻ���ר��-â���ձ�����������>>logs/ping.txt
REM ping 8.210.120.68|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
REM echo ���ڲ��� �ӻ���ר��-������۷�-xTom CMI����ֱ������
REM echo 2.�ӻ���ר��-������۷�-xTom CMI����ֱ������>>logs/ping.txt
ping 45.128.210.230|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
echo �����ʽ��㣬������������½���رգ����������ϸ���Ը�����������
echo.
echo ���ڲ��� �ձ�����������
echo 1.�ձ�����������>>logs/ping.txt
ping 124.108.22.138|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
REM echo ���ڲ��� �ӻ���ר��-�����ձ�2��-BBTEC�����������
REM echo 4.�ӻ���ר��-�����ձ���-BBTEC�����������>>logs/ping.txt
REM ping 45.117.103.145|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
echo ������ת��ѡ�����������
echo.
timeout /t 3
goto server

:server
CLS
title ������ӳ����ѡ�������
echo.
echo.
echo.
echo ��ǰ�������ӳ�״��
echo.
type logs\ping.txt
echo.
echo.
echo ��ѡ���ʺ��Լ��������·��100��ʧ��Ϊ���Ӳ��Ϸ�������ping�߲�������Ϸ���ӳٸ�
echo.
echo.
set /p xz=�������ֲ��س���ʼ�޸� :
if %xz%==1 goto us

:ping2
CLS
title ���Է������ӳ��У�������������
echo.
echo.
echo ����ʱ��>logs/ping.txt
echo ��������Լ1-5���� ��������״�����������ٶ� ����ʱ�벻Ҫ�򿪼�����
echo.
date /t>>logs/ping.txt
time /t>>logs/ping.txt
echo 1.������ɼ�2��>>logs/ping.txt
echo ���ڲ��� ������ɼ�2��
ping 23.150.32.111|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 2.������ɼ�3��>>logs/ping.txt
echo ���ڲ��� ������ɼ�3��
ping 172.247.39.11|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 3.������ɼ�4��>>logs/ping.txt
echo ���ڲ��� ������ɼ�4��
ping 172.247.32.195|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 4.���������ܷ�����>>logs/ping.txt
echo ���ڲ��� ���������ܷ�����
ping 192.80.189.190|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 5.���ַ�����>>logs/ping.txt
echo ���ڲ��� ���ַ�����
ping 188.116.219.30|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 6.̩�����ȷ�����>>logs/ping.txt
echo ���ڲ��� ̩�����ȷ�����
ping 61.91.161.217|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 7.����ŦԼ������>>logs/ping.txt
echo ���ڲ��� ����ŦԼ������
ping 172.245.126.217|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 8.������ɼ������>>logs/ping.txt
echo ���ڲ��� ������ɼ������
ping 103.86.70.254|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo ������ת��ѡ�����������
echo.
timeout /t 3
goto server2

:server2
CLS
title ������ӳ����ѡ�������
echo.
echo.
echo.
echo ��ǰ�������ӳ�״��
echo.
type logs\ping.txt
echo.
echo.
echo ��ѡ���ʺ��Լ��������·��100��ʧ��Ϊ���Ӳ��Ϸ�������ping�߲�������Ϸ���ӳٸ�
echo.
echo.
echo �������ֲ��س���ʼ�޸� :
echo.
set /p xz=
if %xz%==1 goto us3
if %xz%==2 goto us4
if %xz%==3 goto us5
if %xz%==4 goto us6
if %xz%==5 goto bl
if %xz%==6 goto tg
if %xz%==7 goto us7
pause>nul

:us
CLS
title �����޸�hosts �ձ�����������
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 ocsp.int-x3.letsencrypt.org >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 config.psynet.gg >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 124.108.22.138 connect.epicgames.dev >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us2
CLS
title �����޸�hosts ������ɼ������ 
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 103.86.70.254 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us3
CLS
title �����޸�hosts ������ɼ�2��
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 23.150.32.111 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us4
CLS
title �����޸�hosts ������ɼ�3��
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.39.11 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us5
CLS
title �����޸�hosts ������ɼ�4��
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.247.32.195 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us6
CLS
title �����޸�hosts ���������ܷ�����
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 192.80.189.190 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:bl
CLS
title �����޸�hosts ���ַ�����
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 188.116.219.30 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:tg
CLS
title �����޸�hosts ̩�����ȷ�����
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 61.91.161.217 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
echo.
echo ������δ���־ܾ����ʼ�Ϊ�޸ĳɹ�
echo.
echo %auth%��л���ʹ��
timeout /t 3
goto exit

:us7
CLS
title �����޸�hosts ����ŦԼ������
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 172.245.126.217 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns >logs/hostserror
timeout /t 3
goto exit

:mg1
CLS
title �����޸�hosts �ӻ���ר��-â���ձ�����������

:gy3
CLS
title �����޸�hosts �ӻ���ר��-�����ձ�2��-BBTEC�����������
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #��host�ɹ���RL�������ṩ��������Ӱ��host����ʹ��  > C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 updater.bakkesmod.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars4.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars5.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars6.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars7.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars8.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 gist.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 marketplace-screenshots.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 repository-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 www.steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 steamcdn-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 cdn.akamai.steamstatic.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 origin-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 static3.cdn.ubi.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 steam-chat.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 raw.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github-releases.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 assets-cdn.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github.githubassets.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 codeload.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 pages.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 help.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 docs.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 services.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 resources.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 developer.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 partner.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 desktop.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 support.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 education.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 enterprise.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 lab.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 classroom.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 central.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 desktop.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 guides.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 www.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 *.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 store-images.s-microsoft.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 images-eds.xboxlive.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api1.origin.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 skyapi.onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 ocsp.int-x3.letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 unrealengine.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit

:gy4
CLS
title �����޸�hosts �ӻ���ר��-��������˹��-���������ǻ���

:gy5
CLS
title �����޸�hosts �ӻ���ר��-����������-��ɼ����

:gy6
CLS
title �����޸�hosts �ӻ���ר��-�����ձ�2��-BBTEC�����������
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #��host�ɹ���RL�������ṩ��������Ӱ��host����ʹ��  > C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 static-assets-prod.unrealengine.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 datarouter.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.145 events.launchdarkly.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit

:gy7
CLS
title �����޸�hosts �ӻ���ר��-������۷�-xTom CMI����ֱ������
echo ���ڶ�hosts�ļ����н�Ȩ
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo ���ڱ���ԭhosts�ļ�
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo ����д��hosts�ļ�
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #��host�ɹ���RL�������ṩ��������Ӱ��host����ʹ��  > C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.128.210.230 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit