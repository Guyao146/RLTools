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
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJiZk8aHWQ=
::ZQ05rAF9IBncCkqN+0xwdVsGAlDMbQs=
::ZQ05rAF9IAHYFVzEqQK3ydDTgskK3Z89/UqZEzVyFg8BXqCYhA26r0peP2Pu
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWNBFKsXB/ns=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBxBVBGDAE+/Fb4I5/jH3caTrUIRR6w6YIq7
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0e
set ver=2.6.0
set rltools=%rltools%
set uamd=2021.12.20
set auth=����
set appname=������˹��ʷ�С����
set admin=��ʹ�ù���ԱȨ������
set CD="%~dp0"
set cd2=cd
set f1=systeminfo
set f2=hosts
set f3=DxDiag.txt
set f4=eng
set f5=chn
set f6=vc.exe
set f7=net.exe
set f8=new
set f9=lan.exe
set f10=Coalesced_CHN.bin
set f11=Language.ini
set f12=7z.exe
set f13=7z.dll
set f14=version.txt
set f15=aria2c.exe
title %appname% %eng% %ver% - %auth% %admin%
md logs
md bin
cd bin
md Expand
md Special
cd /d %~dp0
echo. %uamd%>logs\uamd
echo. %ver%>logs\ver
echo. ����־�ɻ�����˹��ʷ����������ɣ��������ų������ã����ϴ����������������ʹ��>logs\softlogs
echo. ������汾��>>logs\softlogs
date /t>>logs\softlogs
time /t>>logs\softlogs
echo. %ver%>>logs\softlogs
if exist "%f15%" (goto leimu) else (goto leimuerror)

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

:leimu
cd /d %~dp0
echo. leimu>>logs\softlogs
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
cd /d %~dp0
echo. UACͨ��>>logs\softlogs
goto new1
 
:uacfalse
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
echo ������������������п�
echo.
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/7z.exe
aria2c http://down.mcylyr.cn/rl/packet/7z.dll
aria2c http://down.mcylyr.cn/rl/packet/RLtoolstips.exe
rename RLtoolstips.exe RL��������ʾ��.exe
copy  "%~dp0"\RL��������ʾ��.exe "%~dp0"\bin\Special\RL��������ʾ��.exe
del "%~dp0"\RL��������ʾ��.exe
aria2c http://down.mcylyr.cn/rl/packet/logo.ico
copy  "%~dp0"\logo.ico "%~dp0"\bin\Special\logo.ico
del "%~dp0"\logo.ico
echo. ���п����سɹ� >>logs\softlogs
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
##aria2c http://down.mcylyr.cn/rl/nuamd
##copy  "%~dp0"\nuamd "%~dp0"\logs\nuamd
##del "%~dp0"\nuamd
##for /f "tokens=1* delims= " %%i in ("%~dp0logs\uamd") do (set uamd=%%i)
##for /f "tokens=1* delims= " %%i in ("%~dp0logs\nuamd") do (set nuamd=%%i)
##if %uamd% LSS %nuamd% goto usertrue
aria2c http://down.mcylyr.cn/rl/uam
copy  "%~dp0"\uam "%~dp0"\logs\uam
del "%~dp0"\uam
cd /d %~dp0
if exist "logs\true" (goto open) else (goto usertrue2)
:usertrue2
cd /d %~dp0
if exist "logs\false" (goto usererror) else (goto usertrue3)
:usertrue3
cd /d %~dp0
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� ����������ʾ�û�Э�飬���ܻ����п��٣�ͬ��󼴿ɿ�ʼʹ�� 2
title �û�Э��
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
CLS
ipconfig /flushdns
aria2c http://down.mcylyr.cn/rl/info
copy  "%~dp0"\info "%~dp0"\logs\info
del "%~dp0"\info
aria2c http://down.mcylyr.cn/rl/newver
copy  "%~dp0"\newver "%~dp0"\logs\newver
del "%~dp0"\newver
aria2c http://down.mcylyr.cn/rl/oldver
copy  "%~dp0"\oldver "%~dp0"\logs\oldver
del "%~dp0"\oldver
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
pause

:newupdate2
start update.exe
exit

:open2
echo. ��ʼ��>>logs\softlogs
cd /d %~dp0
mshta vbscript:createobject("wscript.shell").run("""iexplore""http://rl.mcylyr.cn/num.html","2",ture)(window.close)
CLS
echo.
echo ���ڳ�ʼ���в�����°汾��
echo.
CLS
type "%~dp0"logs\info
echo.
ping rl.mcylyr.cn|findstr /i /c:"�Ҳ�������">logs/test2 && goto errornet
goto new

:errornet
echo. �޷����ӷ�����>>logs\softlogs
echo �޷����ӵ�������
echo.
echo �����ǹ�����ͣ����������δ����
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
title ����ָ�����������
echo.
echo   ��⵽���ǵ�һ�δ򿪱�������Ƿ���Ҫ�������
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
title %appname% %eng% %ver% - %auth% %admin%
aria2c http://down.mcylyr.cn/rl/ad
copy  "%~dp0"\ad "%~dp0"\logs\ad
del "%~dp0"\ad
echo. ��ȡ��ҳ�����������ҳ�ɹ� >>logs\softlogs
CLS
color 0e
echo.
echo.
echo   %appname% %ver%
echo.
echo   1.һ������������˹��ʷ�
echo.
echo   2.�޸�hosts������epic��RL
echo.
echo   3.��������
echo.
echo   4.���������빤����
echo.
echo   0.�˳�
echo.
type "%~dp0"logs\ad
echo.
echo.
set /p xz=   ��������Ų��س� : 
if %xz%==1 goto rlstart
if %xz%==2 goto 3
if %xz%==3 goto other
if %xz%==4 goto toolsinfo
if %xz%==time goto ad
if %xz%==test goto test
if %xz%==0 goto exit
goto chinese

:toolsinfo
title ��������
CLS
echo.
echo.
echo   ��������
echo.
echo   ��ǰ�������·�� %cd%
echo.
echo   ���ע�����·�� %rltools%
echo.
echo   ������˹��ʷ��������ɹ��������ұ�д����Ӫ
echo.
echo   ʮ�ָ�лâ���ṩ�Ľ�������������
echo.
echo   ���������������ߴ���������������ϵĹ��ܻ�ǳ��ķѷ������Ĵ���
echo.
echo   �������Ļ�����������
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
echo   0.������ҳ
echo.
set /p xz=   ��������Ų��س� : 
if %xz%==1 goto donate
if %xz%==2 goto join
if %xz%==3 del logs\*.* /q /s&goto exit
if %xz%==4 start http://mcylyr.cn
if %xz%==5 start http://rl.mcylyr.cn
if %xz%==6 goto usererrortrue
if %xz%==0 goto chinese
pause>nul
goto chinese

:usererrortrue
title ������������˽Э��ͬ��
CLS
echo.
echo.
echo   �����Ҫ������������˽Э��ͬ����
echo.
set /p xz=   ����Y���� ����N������ҳ�󲢻س� : 
if %xz%==y del logs\true /q /s
if %xz%==y echo.>>logs\false
if %xz%==y goto usererror
if %xz%==n echo.>>logs\false
if %xz%==n goto usererror

:reloadnet
title ��������
CLS
echo ��ʼִ�е�һ�� ˢ��DNS
ipconfig /flushdns
ipconfig /flushdns
ipconfig /flushdns
echo ˢ�³ɹ�
echo.
echo 3������
timeout 3
echo.
echo ��ʼִ�еڶ��� ˢ�»���
ipconfig /flushdns
echo.
echo ˢ�³ɹ�
echo.
echo 3������
timeout 3
echo.
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
echo ��ʼִ�е��Ĳ� ��������
ipconfig /all
echo.
timeout 5
echo.
echo �������
echo/
echo ��ʼִ�е��岽 ˢ������
echo.
ipconfig /release
ipconfig /renew
echo.
echo ˢ����ɣ��뾡�����ܰ�
echo. ��������ɹ� >>logs\softlogs
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
title һ���رջ�����˹��ʷ��޸�Steam��Epic���������еĴ���
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
title ��װepic
CLS
echo.
echo.
echo ��������epic�ͻ���
aria2c http://down.rlzhp.cn:1000/rl/tool/EpicInstaller.msi
copy  "%~dp0"\EpicInstaller.msi "%~dp0"\bin\EpicInstaller.msi
del "%~dp0"\EpicInstaller.msi
CLS
echo.
echo ���ڴ�epic�ͻ���
start bin\EpicInstaller.msi
echo.
echo ��װ��ɣ���������ٶȺ����������Ը�hosts���ԣ�5��󷵻���ҳ
timeout /t 5
goto chinese

:other
CLS
title ��������
echo.
echo.
echo   1.�鿴������˹��ʷ�¼���ļ�
echo.
echo   2.�޸���Ϸ��������Ϊ����
echo.
echo   3.��ϵ��Բ�������־
echo.
echo   4.�����޸����������Epic�ͻ������л���
echo.
echo   5.��ѯ�ٿ�(����������)
echo.
echo   6.һ���رջ�����˹��ʷ��޸�Steam��Epic���������еĴ���
echo.
echo   7.���� ���� �޸� ��װ��� BakkesMod
echo.
echo   8.���� ��װ epic�ͻ���
echo.
echo   0.�������˵�
echo.
echo.
set /p xz=��������Ų��س� :
if %xz%==1 explorer "%Userprofile%\Documents\My Games\Rocket League\TAGame\Demos"
if %xz%==2 goto CHN
if %xz%==3 goto log
if %xz%==4 goto repair
if %xz%==5 start http://wiki.mcylyr.cn
if %xz%==6 goto closerl
if %xz%==7 goto mod
if %xz%==8 goto epicinstall
if %xz%==0 goto chinese
pause>nul
goto chinese

:rlstart
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
aria2c http://down.mcylyr.cn/rl/packet/Coalesced_CHN.bin
aria2c http://down.mcylyr.cn/rl/packet/Language.ini
aria2c http://down.mcylyr.cn/rl/packet/lan.exe
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
echo.
echo.
echo     1.�״ΰ�װBakkesmod��ѡ�ң�
echo.
echo     2.BakkesModԭ��������ҳ��
echo.
echo     3.BakkesMod��������Դ ����:fytn
echo.
echo     4.BakkesMod ��������
echo.
echo     5.��֪ԭ���ߵĶ���
echo.
echo     6.�޸�Bakkesmod��������
echo.
echo     7.��װBakkesmod���
echo.
echo     0.�������˵�
echo.
echo     ע:Bakkesmod�������������޸�host�������޸�host�����´�Bakkesmod���и���
echo.
echo     Bakkesmod�����ڸ��½�֧�ֹ���host�ձ������
echo.
set /p xz=��������Ų��س� : 
if %xz%==1 goto bminstall
if %xz%==2 start https://bakkesmod.com/
if %xz%==3 start https://sakuragu.lanzoui.com/b01zvumje
if %xz%==4 start https://bakkesmod.fandom.com/wiki/Troubleshooting
if %xz%==5 goto readme
if %xz%==6 goto bmrepair
if %xz%==7 start http://rl.mcylyr.cn/plugins.html
if %xz%==0 goto chinese
goto chinese

:bminstall
title �״ΰ�װBakkesmod
CLS
aria2c http://down.mcylyr.cn/rl/packet/BakkesModSetup.exe
copy  "%~dp0"\BakkesModSetup.exe "%~dp0"\bin\BakkesModSetup.exe
del "%~dp0"\BakkesModSetup.exe
CLS
"%~dp0"bin\BakkesModSetup.exe
echo ��װ���
goto mod

:bmrepair
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
goto updatebm

:repairerror3
CLS
echo.
echo ��Ǹ��δ��⵽VC���п��޸�����5����Զ���ʼ����vc.exe���п�
echo.
timeout /t 5
cd bin
md Bin1
cd /d %~dp0
aria2c http://down.rlzhp.cn:1000/rl/tool/vc.exe
copy  "%~dp0"\vc.exe "%~dp0"\bin\Expand
del "%~dp0"\vc.exe
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
aria2c http://down.rlzhp.cn:1000/rl/tool/net.exe
copy  "%~dp0"\net.exe "%~dp0"\bin\Expand\net.exe
del "%~dp0"\net.exe
goto bminstall

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
echo �������߿�������ϵ�ң����ҷ��ʼ�SakuraGu146@outlook.com
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
goto leimu

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
set /p xz=��������Ų��س� : 
if %xz%==1 goto repairepic
if %xz%==2 goto repairrl
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
echo ������������������ԣ��뱣��õ�ǰ�������
echo.
pause>nul
shutdown /s -t 0

:repairerror1
CLS
echo.
echo ��Ǹ��δ��⵽VC���п��޸�����5����Զ���ʼ����vc.exe���п�
echo.
timeout /t 5
cd /d %~dp0
aria2c http://down.rlzhp.cn:1000/rl/tool/vc.exe
copy  "%~dp0"\vc.exe "%~dp0"\bin\Expand
del "%~dp0"\vc.exe
goto repair

:repairerror1eng
CLS
echo.
echo Sorry, no vc runtime fix detected. Download of vc.exe runtime will start automatically in 5 seconds
echo.
timeout /t 5
cd /d %~dp0
aria2c http://down.rlzhp.cn:1000/rl/tool/vc.exe
copy  "%~dp0"\vc.exe "%~dp0"\bin\Expand\vc.exe
del "%~dp0"\vc.exe
goto repaireng

:repairerror2
CLS
echo.
echo ��Ǹ��δ��⵽Net���п��޸�����5����Զ���ʼ����net.exe���п�
echo.
timeout /t 5
cd /d %~dp0
aria2c http://down.rlzhp.cn:1000/rl/tool/net.exe
copy  "%~dp0"\net.exe "%~dp0"\bin\Expand\net.exe
del "%~dp0"\net.exe
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
echo %auth%��л���ʹ��
echo.
timeout /t 15
exit

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
echo.
echo.
echo   1.�Ƽ�����������Ping���޸�hosts
echo.
echo   2.��������������Ping���޸�hosts
echo.
echo   3.��hosts�ļ��� (���ʺϼ����û�ʹ�ã�С�ײ�Ҫ�Ҵ�)
echo.
echo   4.�ָ����ݵ�hosts
echo.
echo   5.�򿪱���hosts�ļ��� (���ʺϼ����û�ʹ�ã�С�ײ�Ҫ�Ҵ�)
echo.
echo   6.ˢ�����绺�� (���ʺϼ����û�ʹ�ã�С�ײ�Ҫ�Ҵ�)
echo.
echo   7.���ping�޸�hosts(���Ƽ�����������˽���Щ������)
echo.
echo   8.ˢ�����������뻺�� (���ʺϼ����û�ʹ�ã�С�ײ�Ҫ�Ҵ򿪣����ܻ����1-3���ӣ�ˢ�����ǰ��Ҫ�ر�)
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
if %xz%==7 goto noping
if %xz%==8 goto reloadnet
if %xz%==0 goto chinese
pause>nul
goto lau

:logerrordx
CLS
echo DxDiag.txt��־û�ҵ���������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto leimu

:logerrorsysteminfo
CLS
echo systeminfo��־����ʧ�ܣ�������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto leimu

:logerrorhosts
CLS
echo hosts��־����ʧ�ܣ�������
echo.
echo �Ҳ�����������ϵ����
echo.
echo ��������������˵�
pause>nul
goto leimu

:log
CLS
title ϵͳ�����
cd /d %~dp0
echo.

echo ����  [#---------] 10%
echo ��������ʱ����Ϣ
echo.��ǰ����������ʱ��>logs\systeminfo
date /t>>logs\systeminfo
time /t>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [##--------] 20%
echo �������������Ϣ
echo.>>logs\systeminfo
echo.��־��RL���ʷ����������� �汾 %ver%>>logs\systeminfo
echo.����·�� %~dp0>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [###-------] 30%
echo ��������ϵͳ��Ϣ
echo.>>logs\systeminfo
echo.ϵͳ��Ϣ>>logs\systeminfo
echo.>>logs\systeminfo
systeminfo>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo �������ɴ洢��Ϣ
echo.>>logs\systeminfo
echo.Ӳ����Ϣ>>logs\systeminfo
echo ����  [####------] 35%
echo.>>logs\systeminfo
wmic diskdrive>>logs\systeminfo
echo.>>logs\systeminfo
echo.�洢�ռ���Ϣ>>logs\systeminfo
echo ����  [####------] 40%
echo.>>logs\systeminfo
Wmic logicaldisk>>logs\systeminfo
echo.>>logs\systeminfo
echo.�����ڴ���Ϣ>>logs\systeminfo
echo ����  [####------] 45%
echo.>>logs\systeminfo
wmic memorychip>>logs\systeminfo
echo.>>logs\systeminfo
echo ����  [#####-----] 50%
wmic volume>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo ����  [######----] 60%
echo ��������������Ϣ
echo.>>logs\systeminfo
echo.������Ϣ>>logs\systeminfo
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
echo ��������־�ļ���logs�ļ����У���Ҫ�������ϵ��������ҳ������ϵ����
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
echo %auth% %autheng%��л���ʹ�ã���������˳�
pause>nul
exit

:noping
CLS
title ���ping�޸�hosts
echo.
echo.
echo   ���ping�޸�hosts
echo.
echo   1.�ӻ���ר��-â���ձ�����������
echo.
echo   2.�ӻ���ר��-�����ձ�2��-BBTEC�����������
echo.
echo   3.�ձ�����������
echo.
echo   4.������ɼ�2��
echo.
echo   5.������ɼ�3��
echo.
echo   6.������ɼ�4��
echo.
echo   7.���������ܷ�����
echo.
echo   8.���ַ�����
echo.
echo   9.̩�����ȷ�����
echo.
echo   10.����ŦԼ������
echo.
echo   11.������ɼ������
echo.
echo   12.�ӻ���ר��-��������˹��-���������ǻ���
echo.
echo   13�ӻ���ר��-����������ɼ������
echo.
echo   0.�������˵�
echo.
set /p xz=�������ֲ��س���ʼ�޸� :
if %xz%==1 goto mg1
if %xz%==2 goto gy3
if %xz%==3 goto us
if %xz%==4 goto us3
if %xz%==5 goto us4
if %xz%==6 goto us5
if %xz%==7 goto us6
if %xz%==8 goto bl
if %xz%==9 goto tg
if %xz%==10 goto us7
if %xz%==11 goto us2
if %xz%==12 goto gy4
if %xz%==12 goto gy5
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
echo ���ڲ��� �ӻ���ר��-â���ձ�����������
echo 1.�ӻ���ר��-â���ձ�����������>>logs/ping.txt
ping 8.210.120.68|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo ���ڲ��� �ӻ���ר��-�����ձ�2��-BBTEC�����������
echo 2.�ӻ���ר��-�����ձ���-BBTEC�����������>>logs/ping.txt
ping 140.238.35.210|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo ���ڲ��� �ձ�����������
echo 3.�ձ�����������>>logs/ping.txt
ping 140.238.35.210|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo ���ڲ���  �ӻ���ר��-��������˹��-���������ǻ���
echo 4.�ӻ���ר��-��������˹��-���������ǻ���>>logs/ping.txt
ping 45.144.176.220|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo ���ڲ���  �ӻ���ר��-����������ɼ������
echo 5.�ӻ���ר��-����������ɼ������>>logs/ping.txt
ping 64.69.34.208|findstr /I "��� 100% ��ʧ less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
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
if %xz%==1 goto mg1
if %xz%==2 goto gy3
if %xz%==3 goto us
if %xz%==4 goto gy4
if %xz%==5goto gy5

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
echo. 140.238.35.210 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
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
echo.  #��host�ɹ���RL�������ṩ����â���ṩ������֧�֣�������Ӱ��host����ʹ��  > C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 epicgames.dev  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.	  8.209.196.32 pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 github.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 bakkesmod.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 steamcommunity.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.	   8.209.196.32 unrealengine.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 	   8.209.196.32 akamaized.net  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 github.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.	   8.209.196.32 bakkesmod.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 steamcommunity.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 unrealengine.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 akamaized.net  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 githubassets.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 myqcloud.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    8.209.196.32 githubusercontent.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit

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
echo.    45.117.103.229 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 updater.bakkesmod.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars4.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars5.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars6.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars7.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars8.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 gist.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 marketplace-screenshots.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 repository-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 www.steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 steamcdn-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 cdn.akamai.steamstatic.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 origin-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 static3.cdn.ubi.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 steam-chat.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 raw.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github-releases.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 assets-cdn.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github.githubassets.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 codeload.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 pages.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 help.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 docs.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 services.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 resources.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 developer.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 partner.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 desktop.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 support.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 education.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 enterprise.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 lab.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 classroom.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 central.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 desktop.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 guides.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 www.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 *.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 store-images.s-microsoft.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 images-eds.xboxlive.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api1.origin.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 skyapi.onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 ocsp.int-x3.letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 unrealengine.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.117.103.229 letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit

:gy4
CLS
title �����޸�hosts �ӻ���ר��-��������˹��-���������ǻ���
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
echo.    45.144.176.220 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 updater.bakkesmod.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars4.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars5.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars6.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars7.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars8.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 gist.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 marketplace-screenshots.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 repository-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 www.steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 steamcdn-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 cdn.akamai.steamstatic.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 origin-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 static3.cdn.ubi.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 steam-chat.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 raw.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github-releases.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 assets-cdn.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github.githubassets.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 codeload.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 pages.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 help.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 docs.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 services.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 resources.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 developer.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 partner.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 desktop.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 support.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 education.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 enterprise.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 lab.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 classroom.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 central.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 desktop.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 guides.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 www.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 *.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 store-images.s-microsoft.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 images-eds.xboxlive.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api1.origin.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 skyapi.onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 ocsp.int-x3.letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 unrealengine.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    45.144.176.220 letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit

:gy5
CLS
title �����޸�hosts �ӻ���ר��-����������-��ɼ����
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
echo.    64.69.34.208 bakkesmod.com >> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 updater.bakkesmod.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars4.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars5.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars6.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars7.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars8.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 gist.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 marketplace-screenshots.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 repository-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 www.steamcommunity.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 store.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api.steampowered.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 steamcdn-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 cdn.akamai.steamstatic.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 origin-a.akamaihd.net>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 static3.cdn.ubi.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 steam-chat.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 www.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 gist.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 raw.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 raw.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 camo.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 cloud.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars0.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars1.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars2.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 avatars3.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 user-images.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github-releases.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 assets-cdn.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github.githubassets.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 codeload.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 pages.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 help.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 docs.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 services.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 resources.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 developer.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 partner.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 desktop.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 support.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 education.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 enterprise.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 lab.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 classroom.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 central.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 desktop.githubusercontent.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 guides.github.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 www.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 *.github.io>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 store-images.s-microsoft.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 images-eds.xboxlive.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api1.origin.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 skyapi.onedrive.live.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 connect.epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 xmpp-service-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 metrics.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 egp-idsoc-proxy-prod.ol.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 api.rlpp.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 psyonix-rl.appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 ocsp.pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 rl-cdn.psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 config.psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 ocsp.int-x3.letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 talon-service-prod.ecosec.on.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 tracking.epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 epicgames.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 unrealengine.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 epicgames.dev>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 psynet.gg>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 appspot.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 pki.goog>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 psyonix.com>> C:\WINDOWS\system32\drivers\etc\hosts
echo.    64.69.34.208 letsencrypt.org>> C:\WINDOWS\system32\drivers\etc\hosts
echo ����ˢ��DNS����
ipconfig /flushdns
goto exit