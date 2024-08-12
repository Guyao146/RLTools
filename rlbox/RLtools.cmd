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
set auth=顾瑶
set appname=火箭联盟国际服小工具
set admin=请使用管理员权限运行
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
echo. 本日志由火箭联盟国际服工具箱生成，仅用于排除问题用，不上传至服务器，请放心使用>logs\softlogs
echo. [%date% - %time%] 软件版本>>logs\softlogs
echo. %ver%>>logs\softlogs
echo. [%date% - %time%] aria2c软件版本>>logs\softlogs
aria2c -v >>logs\softlogs
if exist "%f15%" (goto leimu) else (goto leimuerror)

:leimuerror
echo. [%date% - %time%] 检测到应用损坏>>logs\softlogs
title 应用损坏
CLS
echo.
echo.
echo   检测到软件不完整，是否前往官网重新下载完整包
echo.
echo   1.是，跳转到官网下载
echo.
echo   2.否，退出
echo.
echo.
echo   请自行排查以下问题
echo.
echo   需要将压缩包内所有文件完整解压至同一文件夹下
echo.
echo   文件夹中包含RLtools.exe update.exe aria2c.exe三个必要文件
echo.
echo   如果以上条件均已满足却还出现了这条提示，请联系顾瑶
echo.
set /p xz=请输入序号后回车 :
if %xz%==1 start http://rl.mcylyr.cn
if %xz%==2 exit

:leimu
cd /d %~dp0
echo. [%date% - %time%] UAC判断逻辑>>logs\softlogs
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
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 工具箱获取管理员权限成功，感谢使用火箭联盟国际服小工具，版本%ver% 2
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 请赞助顾瑶维持服务器的生计吧，孩子要无了 2
echo. [%date% - %time%] 显示弹窗成功>>logs\softlogs
cd /d %~dp0
echo. [%date% - %time%] UAC通过>>logs\softlogs
goto new1
 
:uacfalse
echo. [%date% - %time%] UAC获取管理员失败>>logs\softlogs
cd /d %~dp0
cd bin\Special
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 工具箱获取管理员权限失败，请右键使用管理员权限运行 2
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
if exist "bin\Special\RL工具箱提示您.exe" (goto new4) else (goto downloadmust)
:new4
cd /d %~dp0
if exist "bin\Special\logo.ico" (goto usertrue) else (goto downloadmust)
:downloadmust
echo. 下载运行库>>logs\softlogs
echo.
echo 正在下载软件依赖
echo.
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/ReadLog.exe -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/7z.exe -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/7z.dll -l .\logs\softlogs
aria2c http://down.mcylyr.cn/rl/packet/RLtoolstips.exe -d \bin\Special -l .\logs\softlogs
cd bin\Special
rename RLtoolstips.exe RL工具箱提示您.exe
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/logo.ico -d \bin\Special -l .\logs\softlogs
echo. [%date% - %time%] 运行库下载成功>>logs\softlogs
goto leimu

:usererror
CLS
echo.
echo.
echo 抱歉，因您不同意用户协议，故5秒后程序自动退出
echo.
echo 如需使用请删除logs文件夹下的false文件后重新打开程序进行同意
echo.
timeout /t 5
exit

:usertrue
aria2c http://down.mcylyr.cn/rl/uamd -d .\logs --allow-overwrite=true
aria2c http://down.mcylyr.cn/rl/uam -d .\logs --allow-overwrite=true
echo. [%date% - %time%] 用户协议下载中>>logs\softlogs
cd /d %~dp0
if exist "logs\true" (goto open) else (goto usertrue2)
:usertrue2
cd /d %~dp0
if exist "logs\false" (goto usererror) else (goto usertrue3)
:usertrue3
CLS
cd /d %~dp0
cd bin\Special
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 程序正在显示用户协议，可能会稍有卡顿，同意后即可开始使用 2
title 用户协议
echo. [%date% - %time%] 用户协议显示成功>>logs\softlogs
cd /d %~dp0
echo.
echo.
echo   协议已输出到logs文件夹内的uam文件中，可重复查看
echo.
echo   最新协议更新时间 %nuamd%
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
echo. 获取新版本与最新公告等>>logs\softlogs
echo. [%date% - %time%] 新版本与公告下载完成>>logs\softlogs
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
echo. [%date% - %time%] 初始化>>logs\softlogs
cd /d %~dp0
CLS
echo.
echo 正在初始化中并检查新版本中
echo.
CLS
type "%~dp0"logs\info
echo.
ping rl.mcylyr.cn|findstr /i /c:"找不到主机">>logs/softlogs && echo. [%date% - %time%] 软件找不到主机>>logs\softlogs && goto errornet
goto new

:errornet
echo. [%date% - %time%] 无法连接至服务器>>logs\softlogs
echo.
echo 无法连接到服务器
echo.
echo 可能是顾瑶已停用软件/电脑未联网/服务器被攻击
echo.
echo 请留意官网与QQ群公告是否服务器出错了或没钱续费关了
echo.
echo 按任意键退出
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
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\火箭联盟国际服工具箱.lnk""):b.TargetPath=""%~dp0RLtools.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
title 新手指引与软件介绍
echo. [%date% - %time%] 软件介绍已显示>>logs\softlogs
echo.
echo   检测到你是第一次打开/更新本软件，是否需要软件介绍
echo.
echo   1.需要
echo.
echo   2.跳过
echo.
set /p xz=   请输入序号并回车 : 
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
echo. [%date% - %time%] 获取主页公告与进入主页成功 >>logs\softlogs
CLS
color 0e
echo.
echo.
echo     %appname% %ver%
echo.
echo     1.一键启动火箭联盟国际服
echo.
echo     2.修改hosts并加速epic与RL
echo.
echo     3.其他功能
echo.
echo     4.关于我们与工具箱高级设置
echo.
echo     5.赞助顾瑶
echo.
echo     6.进入本项目Github页面
echo.
echo     7.阅读用户协议
echo.
echo     0.退出
echo.
type "%~dp0"logs\ad
echo.
echo.
set /p xz=   请输入序号并回车 : 
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
title 关于我们与高级设置
CLS
echo.
echo.
echo   关于我们与高级设置
echo.
echo   当前软件运行路径 %cd%
echo.
echo   软件注册变量路径 %rltools%
echo.
echo   火箭联盟国际服工具箱由顾瑶工作室编写并运营
echo.
echo   1.查询赞助名单与特别鸣谢
echo.
echo   2.加入QQ群/联系%auth%/赞助%auth%/购买账号
echo.
echo   3.清除工具箱全部缓存并退出
echo.
echo   4.打开工作室官网
echo.
echo   5.打开工具箱官网
echo.
echo   6.撤销工具箱隐私协议同意
echo.
echo   7.桌面生成工具箱快捷方式
echo.
echo   0.返回主页
echo.
set /p xz=   请输入序号并回车 : 
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
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\火箭联盟国际服工具箱.lnk""):b.TargetPath=""%~dp0RLtools.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto toolsinfo

:usererrortrue
echo. [%date% - %time%] 用户撤销隐私协议同意>>logs\softlogs
title 撤销工具箱隐私协议同意
CLS
echo.
echo.
echo   您真的要撤销用户协议的同意吗？
echo.
set /p xz=   输入Y撤销 输入N返回主页 : 
if %xz%==y del logs\true /q /s
if %xz%==y echo.>>logs\false
if %xz%==y goto Chinese

:reloadnet
echo. [%date% - %time%] 用户执行重置网络操作>>logs\softlogs
title 重置网络
CLS
echo. [%date% - %time%] 刷新DNS>>logs\softlogs
echo 开始执行第一步 刷新DNS
ipconfig /flushdns
ipconfig /flushdns
ipconfig /flushdns
echo 刷新成功
echo.
echo 3秒后继续
timeout 3
echo.
echo. [%date% - %time%] 刷新缓存>>logs\softlogs
echo 开始执行第二步 刷新缓存
ipconfig /flushdns
echo.
echo 刷新成功
echo.
echo 3秒后继续
timeout 3
echo.
echo. [%date% - %time%] 读取网络配置>>logs\softlogs
echo 开始执行第三步 读取网络
ipconfig /all
ipconfig /release
ipconfig /renew
echo.
echo 读取成功
echo.
echo 3秒后继续
timeout 3
echo.
echo. [%date% - %time%] 分析数据中...>>logs\softlogs
echo 开始执行第四步 分析数据
ipconfig /all
echo.
timeout 5
echo.
echo 分析完毕
echo.
echo. [%date% - %time%] 刷新网络>>logs\softlogs
echo 开始执行第五步 刷新网络
echo.
ipconfig /release
ipconfig /renew
echo.
echo. [%date% - %time%] 重置网络完成>>logs\softlogs
echo 刷新完成，请尽情享受吧
echo.
echo 按任意键退出
pause>nul

:join
start http://rl.mcylyr.cn/QQgroup.html
goto chinese

:donate
title 赞助名单与特别鸣谢
CLS
start http://rl.mcylyr.cn/donate.html
pause>nul
goto chinese

:closerl
echo. [%date% - %time%] 一键修复并关闭火箭联盟国际服修复Steam与Epic正在运行中的错误>>logs\softlogs
title 一键修复并关闭关闭火箭联盟国际服修复Steam与Epic正在运行中的错误
CLS
taskkill /f /im "RocketLeague.exe"
echo.
echo 关闭成功，请选择启动版本
echo.
echo 1.EPIC版
echo.
echo 2.Steam版
echo.
echo 0.返回主页
echo.
set /p xz=请输入序号并回车 : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch
if %xz%==2 start steam://rungameid/252950
if %xz%==0 goto chinese
goto closerl

:ad
start http://rl.mcylyr.cn/ad.html
goto chinese

:epicinstall
echo. [%date% - %time%] 用户执行安装Epic操作>>logs\softlogs
title 安装epic
CLS
echo.
echo.
echo 请选择下载源
echo.
echo 1.EPIC官网
echo.
echo 2.樱落怡然镜像源
echo.
echo 0.返回主页
echo.
set /p xz=请输入序号并回车 : 
if %xz%==1 goto epic1
if %xz%==2 goto epic2
if %xz%==0 goto chinese

:epic1
title 正在下载epic客户端 - EPIC官网
echo.
echo 正在下载epic客户端 - EPIC官网
aria2c https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi -d \bin -l .\logs\softlogs -s64 -x16
CLS
echo.
echo 正在打开epic客户端
start bin\EpicInstaller.msi
echo.
echo 安装完成，如果下载速度很慢可以试试改hosts试试，3秒后返回主页
echo. [%date% - %time%] Epic安装完成>>logs\softlogs
timeout /t 3
goto chinese

:epic2
title 正在下载epic客户端 - EPIC官网
echo.  
echo 正在下载epic客户端 - 樱落怡然镜像源
aria2c http://down.mcylyr.cn/rl/packet/EpicInstaller.msi -d \bin -l .\logs\softlogs -s64 -x16
CLS
echo.
echo 正在打开epic客户端
start bin\EpicInstaller.msi
echo.
echo 安装完成，如果下载速度很慢可以试试改hosts试试，3秒后返回主页
echo. [%date% - %time%] Epic安装完成>>logs\softlogs
timeout /t 3
goto chinese

:other
CLS
title 其他功能
echo.
echo   其他功能
echo.
echo.
echo   1.查看火箭联盟国际服录屏文件
echo.
echo   2.诊断电脑并生成日志
echo.
echo   3.尝试修复火箭联盟与Epic客户端运行环境
echo.
echo   4.一键关闭火箭联盟国际服修复Steam与Epic正在运行中的错误
echo.
echo   5.下载 帮助 修复 安装插件 BakkesMod
echo.
echo   6.下载 安装 epic客户端
echo.
echo   0.返回主菜单
echo.
echo.
set /p xz=请输入序号并回车 :
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
echo. [%date% - %time%] 一键启动RL>>logs\softlogs
CLS
title 一键启动RL
echo.
echo.
echo 请选择启动游戏版本
echo.
echo 1.EPIC版
echo.
echo 2.Steam版
echo.
echo 0.返回主页
echo.
set /p xz=请输入序号并回车 : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch & goto startexit
if %xz%==2 start steam://rungameid/252950 & goto startexit
if %xz%==0 goto chinese
:startexit
echo.
echo.
echo 启动完毕，稍等片刻，祝游戏愉快，正在自动跳转回主页
timeout /t 5
goto chinese

:CHN
echo. [%date% - %time%] 修改语言文件>>logs\softlogs
echo.
echo.
echo 正在检测语言文件是否完整
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
echo  检测完毕！
echo.
echo  所在路径请输入TAGame文件夹所在的文件夹
echo.
set /p rl=请输入火箭联盟所在的路径:
md "%rl%\Bin2"
xcopy /Y bin\Bin1\Bin2 "%rl%"
xcopy /Y bin\Bin1\lan.exe "%rl%"
call "%rl%\lan.exe"
pause
:CHNdown
CLS
echo.
echo 抱歉，未检测到语言文件，5秒后自动开始下载
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
title BakkesMod帮助与下载
echo.
echo.
echo     BakkesMod帮助与下载
echo.
echo     1.首次安装Bakkesmod请选我！
echo.
echo     2.BakkesMod原作者下载页面
echo.
echo     3.BakkesMod蓝奏云下载源 密码:fytn
echo.
echo     4.BakkesMod常见问题
echo.
echo     5.告知原作者的东西
echo.
echo     6.修复Bakkesmod常见问题
echo.
echo     7.安装Bakkesmod插件
echo.
echo     8.自动更新Bakkesmod最新版本
echo.
echo     9.Bakkesmod插件辅助安装
echo.
echo     0.返回主菜单
echo.
echo.
set /p xz=请输入序号并回车 : 
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
echo. [%date% - %time%] 安装Bakkesmod插件...>>logs\softlogs
title 安装Bakkesmod插件
echo.
echo.
echo  请输入网页上显示的插件编号，输入后将自动安装此插件
echo. 
set /p bmpg=请输入序号并回车 : 
"%Appdata%"\bakkesmod\bakkesmod\plugininstaller.exe bakkesmod://install/%bmpg%
echo 已尝试呼出Bakkesmod插件安装，如出现找不到文件情况请使用修复功能
echo.
echo 如出现Plugin will be installed next time you launch the game!请在启动Bakkesmod与游戏时再次尝试安装
echo.
echo 如出现其他情况，请联系顾瑶
pause>nul
goto mod

:bminstall
echo. [%date% - %time%] 首次安装Bakkesmod...>>logs\softlogs
title 首次安装Bakkesmod
CLS
aria2c http://down.mcylyr.cn/rl/packet/BakkesModSetup.exe -d \bin -l .\logs\softlogs
CLS
"%~dp0"bin\BakkesModSetup.exe
echo 安装完成
goto mod

:bmrepair
echo. [%date% - %time%] 尝试修复Bakkesmod疑难杂症>>logs\softlogs
title 尝试修复Bakkesmod疑难杂症
CLS
echo.
echo.
echo  正在检测 Bin/Expand中的修复文件是否齐全
echo.
cd /d %~dp0
echo  正在检查VC运行库是否存在
echo.
if exist "bin\Expand\%f6%" (goto checknet2) else (goto repairerror3)
:checknet2
cd /d %~dp0
echo  正在检查Net运行库是否存在
if exist "bin\Expand\%f7%" (goto startrepair3) else (goto repairerror4)
:startrepair3
echo.
echo 正在尝试关闭EPIC客户端
taskkill /f /im epicgameslauncher.exe
echo.
echo 正在尝试关闭Steam客户端
taskkill /f /im Steam.exe
echo.
echo 正在尝试关闭火箭联盟
taskkill /f /im rocketleague.exe
echo.
echo 正在启动VC运行库修复
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo 正在启动Net运行库修复
cd /d %~dp0
bin\Expand\net.exe
echo.
echo VC与Net运行库已修复完成，现在准备修复Bakkesmod本体文件
echo. [%date% - %time%] VC与Net运行库已修复完成，现在准备修复Bakkesmod本体文件>>logs\softlogs
goto bmupdate

:bmupdate
echo. [%date% - %time%] 修复Bakkesmod>>logs\softlogs
cd /d %~dp0
echo  正在检查Bakkesmod修复/更新包是否存在
if exist "bin\Expand\bakkesmod.zip" (goto bmupdate2) else (goto repairerror5)
:bmupdate2
cd /d %~dp0
echo 检测完毕，正在修复/更新
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
echo 修复/更新完毕，请重新打开Bakkesmod检查是否修复/更新成功
echo. [%date% - %time%] 修复Bakkesmod完毕>>logs\softlogs
pause>nul
goto mod

:repairerror3
CLS
echo.
echo 抱歉，未检测到VC运行库修复程序，5秒后自动开始下载vc.exe运行库
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
echo 抱歉，未检测到Net运行库修复程序，5秒后自动开始下载net.exe运行库
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
echo 抱歉，未检测到Bakkesmod修复文件，5秒后自动开始下载
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
echo Bakkesmod国内下载源
echo.
echo 请优先下载Bakkesmod原创作者源
echo.
echo 转载没有得到作者的授权，因为我不知道在哪里联系
echo.
echo 请在作者看到后联系我，给我发邮件SakuraGuWork@outlook.com
echo.
echo 我们非常重视原作者的版权
echo.
echo 如果你不同意，请给我发邮件删除下载源
echo.
echo 我们将尽快删除作品
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
title 尝试修复火箭联盟与Epic客户端运行环境
CLS
echo.
echo.
echo.
echo  正在检测 Bin/Expand中的修复文件是否齐全
echo.
cd /d %~dp0
echo  正在检查VC运行库是否存在
echo.
if exist "bin\Expand\%f6%" (goto checknet) else (goto repairerror1)
:checknet
cd /d %~dp0
echo  正在检查Net运行库是否存在
if exist "bin\Expand\%f7%" (goto startrepair) else (goto repairerror2)

:startrepair
CLS
echo.
echo 请选择修复内容
echo.
echo 1.EPIC客户端
echo.
echo 2.火箭联盟客户端
echo.
echo 0.返回主页
echo.
set /p xz=请输入序号并回车 : 
if %xz%==1 goto repairepic
if %xz%==2 goto repairrl
if %xz%==0 goto chinese
goto startrepair

:repairepic
echo.
echo 正在尝试关闭EPIC客户端
taskkill /f /im epicgameslauncher.exe
echo.
echo 正在启动VC运行库修复
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo 正在启动Net运行库修复
cd /d %~dp0
bin\Expand\net.exe
echo.
echo 正在尝试启动EPIC客户端
start com.epicgames.launcher://
goto 
:repairrl
echo.
echo 正在尝试关闭EPIC客户端
taskkill /f /im epicgameslauncher.exe
echo.
echo 正在尝试关闭Steam客户端
taskkill /f /im Steam.exe
echo.
echo 正在尝试关闭火箭联盟
taskkill /f /im rocketleague.exe
echo.
echo 正在启动VC运行库修复
cd /d %~dp0
bin\Expand\vc.exe
echo.
echo 正在启动Net运行库修复
cd /d %~dp0
bin\Expand\net.exe
CLS
echo.
echo 请选择启动版本
echo.
echo 1.EPIC版
echo.
echo 2.Steam版
echo.
set /p xz=请输入序号并回车 : 
if %xz%==1 start com.epicgames.launcher://apps/Sugar?action=launch
if %xz%==2 start steam://rungameid/252950
echo.
echo.
echo 修复完毕，如果仍然启动失败请关闭杀毒软件试试
echo.
echo 按任意键确定，3秒后重启电脑，请保存好当前软件数据
echo.
pause>nul
TIMEOUT /T 3 /NOBREAK
shutdown /r -t 0

:repairerror1
CLS
echo.
echo 抱歉，未检测到VC运行库修复程序，5秒后自动开始下载vc.exe运行库
echo.
timeout /t 5
cd /d %~dp0
aria2c https://down.mcylyr.cn/rl/runtime/vc.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
goto repair

:repairerror2
CLS
echo.
echo 抱歉，未检测到Net运行库修复程序，5秒后自动开始下载net.exe运行库
echo.
timeout /t 5
cd /d %~dp0
aria2c https://down.mcylyr.cn/rl/runtime/net.exe -d \bin\Expand -l .\logs\softlogs -s64 -x16
pause
goto repair

:exit
title 退出
echo.
echo.
echo.
echo 请下载加速器加速火箭联盟亚服以及到游戏中点击右上角REGIONS选择距离你最近的服务器
echo.
echo 如遇更多问题可向我发送 电子邮件/QQ/Discord 等方式联系我 用了加速器还连不上的换几个加速器用
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用，10秒后返回主页
echo.
timeout /t 10
goto chinese

:3
title 确认事项
CLS
echo.
echo.
echo.
echo   请在修改hosts之前检查以下内容
echo.
echo   1.彻底关闭所有加速器
echo.
echo   2.彻底关闭所有杀毒软件
echo.
echo   否则会出现各种情况，例如拒绝访问，文件已占用的情况
echo.
echo   确认以上无误后点击任意键进入下一步
echo.
pause>nul
title 修改hosts并加速epic与RL
CLS
echo.
echo.
echo   修改hosts并加速epic与RL
echo.
echo   1.推荐服务器测试Ping并修改hosts
echo.
echo   2.其他服务器测试Ping并修改hosts
echo.
echo   3.打开hosts文件夹
echo.
echo   4.恢复备份的hosts
echo.
echo   5.打开备份hosts文件夹
echo.
echo   6.刷新网络缓存
echo.
echo   0.返回主菜单
echo.
set /p xz=请输入序号并回车 : 
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
echo DxDiag.txt日志没找到，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto chinese

:logerrorsysteminfo
CLS
echo systeminfo日志生成失败，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto chinese

:logerrorhosts
CLS
echo hosts日志生成失败，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto chinese

:test
CLS
title 测试模式
echo.
echo.
echo    工具箱测试模式
echo.
echo    1. 输出全部日志
echo.
echo    2. 打开游戏日志文件夹
echo.
echo    3. 输出路由追踪日志
echo.
echo    4. 免测ping修改hosts (不推荐，除非你很了解这些服务器)
echo.
echo    5. 刷新网络设置与缓存 (仅适合极客用户使用，小白不要乱打开，可能会断网1-3分钟，刷新完成前不要关闭)
echo.
echo    6. 打开实时日志监控程序
echo.
echo    7. 重新启动工具箱
echo.
echo    0. 返回主菜单
echo.
set /p xz=请输入序号并回车 : 
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
echo 正在生成本地至host网络信息
echo.>logs\luyou
echo.本地至host网络信息>>logs\luyou
echo.>>logs\luyou
echo 1.官网服>>logs\systeminfo
tracert 45.82.78.113>>logs\luyou
echo.>>logs\luyou
echo 2.日本东京服>>logs\systeminfo
tracert 124.108.22.138 >>logs\luyou
echo.>>logs\luyou
echo.
echo ok
echo.
pause>nul
goto toolsmode

:log
CLS
title 系统诊断中
cd /d %~dp0
echo.
echo.本日志由火箭联盟国际服工具箱生成，仅用于排除问题用，不上传至服务器，请放心使用>logs\systeminfo
echo.
echo 预计全程需要1-10分钟，请耐心等待
echo.
echo 进度  [#---------] 5%
echo 正在生成时间信息
echo.当前地区日期与时间>>logs\systeminfo
SETLOCAL
set whatlog=%~dp0\logs\systeminfo
start %~dp0bin\ReadLog.exe
ENDLOCAL
date /t>>logs\systeminfo
time /t>>logs\systeminfo
echo.
echo ok
echo.
 
echo 进度  [##--------] 10%
echo 正在生成软件信息
echo.>>logs\systeminfo
echo.日志由RL国际服工具箱生成 版本 %ver%>>logs\systeminfo
echo.运行路径 %~dp0>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [###-------] 20%
echo 正在生成系统信息
echo.>>logs\systeminfo
echo.系统信息>>logs\systeminfo
echo.>>logs\systeminfo
systeminfo>>logs\systeminfo
echo.>>logs\systeminfo
echo 正在复制RL游戏日志
md %CD%/logs/rllogs
xcopy -y "%USERPROFILE%/Documents/My Games/Rocket League/TAGame/Logs" "%CD%/logs/rllogs"
echo.
echo ok
echo.

echo 正在生成存储信息
echo.>>logs\systeminfo
echo.硬盘信息>>logs\systeminfo
echo 进度  [####------] 30%
echo.>>logs\systeminfo
wmic diskdrive>>logs\systeminfo
echo.>>logs\systeminfo
echo.存储空间信息>>logs\systeminfo
echo 进度  [####------] 35%
echo.>>logs\systeminfo
Wmic logicaldisk>>logs\systeminfo
echo.>>logs\systeminfo
echo.运行内存信息>>logs\systeminfo
echo 进度  [####------] 40%
echo.>>logs\systeminfo
wmic memorychip>>logs\systeminfo
echo.>>logs\systeminfo
echo 进度  [#####-----] 45%
wmic volume>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [######----] 50%
echo 正在生成本地网络信息
echo.>>logs\systeminfo
echo.本地网络信息>>logs\systeminfo
echo.>>logs\systeminfo
ipconfig/all>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [#######---] 70%
echo 正在生成ip信息
echo.
echo 如果在这卡住，请重新运行诊断程序
echo.>>logs\systeminfo
echo.本机ip>>logs\systeminfo
echo.>>logs\systeminfo
curl ipv4.icanhazip.com>>logs\systeminfo
curl ifconfig.io>>logs\systeminfo
curl httpbin.org/ip>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [########--] 80%
echo 正在生成hosts信息
echo.>>logs\systeminfo
echo.hosts信息>>logs\systeminfo
echo.>>logs\systeminfo
copy C:\Windows\System32\drivers\etc\hosts "%~dp0"\logs\hosts
type "%~dp0"\logs\hosts >> "%~dp0"\logs\systeminfo
cd /d %~dp0
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [#########-] 90%
echo 正在生成网络波动情况
echo.>>logs\systeminfo
echo.ping日志>>logs\systeminfo
echo.>>logs\systeminfo
ping www.baidu.com>>logs\systeminfo
ping dh.mcylyr.cn>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [#########-] 95%
echo 正在生成进程信息
echo.>>logs\systeminfo
echo.进程信息>>logs\systeminfo
echo.>>logs\systeminfo
tasklist /svc>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [##########] 100%
echo 正在生成DirectX信息
echo.>>logs\systeminfo
echo 请在接下来的窗口中点击下方的  保存所有信息  至logs文件夹中，并且不要改名！
echo.
echo 按任意键打开Dx检测工具
pause
dxdiag
echo.
echo 正在检测是否生成成功
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
type "%~dp0"logs\systeminfo|findstr /i 找不到主机 && goto pingerror
goto logjiasuqi
:logvirus
findstr /i /g:"logs\systeminfo" "360 电脑管家 tencent tengxun diannaoguanjia hipsmain HipsTray" && goto pingerror && goto logjiasuqi
:logjiasuqi
type "%~dp0"logs\systeminfo|findstr /i "qimiao liuxing qiyou lanpao tengxun tencent xiangchang fengyun 奇妙 奇游 流星 香肠 风云 蓝泡 腾讯" && goto jiasuqierror && goto logokgo

:neterror
CLS
echo.
echo 根据AI智能判断，可能是未修改hosts导致火箭联盟/Epic无法联网，请使用工具箱内修改hosts功能后重试
echo.
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系到我
echo.
pause
goto Chinese

:pingerror
CLS
echo.
echo 根据AI智能判断，可能是电脑网络有问题导致无法联网，请使用360/火绒等软件修复网络后重试
echo.
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系到我
echo.
pause
goto Chinese

:neterror
CLS
echo.
echo 根据AI智能判断，可能是360/电脑管家等杀毒软件导致火箭联盟/Epic无法联网，请彻底关闭杀毒软件后使用工具箱内修改hosts功能后重试
echo.
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系到我
echo.
pause
goto Chinese

:jiasuqierror
CLS
echo.
echo 根据AI智能判断，可能是开启加速器导致hosts被屏蔽导致火箭联盟/Epic无法联网，请彻底关闭加速器后使用工具箱内修改hosts功能后重试
echo.
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系到我
echo.
pause
goto Chinese

:logokgo
CLS
echo.
echo AI未判断出问题，请联系顾瑶
echo.
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系
echo.
pause
goto Chinese

:rec
CLS
title 恢复原hosts中
echo.
echo.
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hostsback\hosts %windir%\System32\drivers\etc\hosts
echo.
ipconfig /flushdns
echo.
echo 如没有出现拒绝访问则为恢复成功
echo.
echo %auth% %autheng%感谢你的使用，5秒后返回主页
timeout /t 5
goto chinese

:noping
CLS
title 免测ping修改hosts
echo.
echo.
echo   免测ping修改hosts
echo.
echo.
echo   1.日本东京服务器
echo.
echo   2.美国洛杉矶2服
echo.
echo   3.美国洛杉矶3服
echo.
echo   4.美国洛杉矶4服
echo.
echo   5.美国迈阿密服务器
echo.
echo   6.巴林服务器
echo.
echo   7.泰国曼谷服务器
echo.
echo   8.美国纽约服务器
echo.
echo   9.美国洛杉矶服务器
echo.
echo   0.返回主菜单
echo.
set /p xz=输入数字并回车后开始修改 :
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
title 测试服务器延迟中（推荐服务器）
echo.
echo.
echo 测试时间 Test Time>logs/ping.txt
echo 整个过程约1-5分钟 本地网络状况决定测试速度 测试时请不要打开加速器
echo.
echo.
date /t>>logs/ping.txt
time /t>>logs/ping.txt
echo.
echo.
REM echo 正在测试 杂货铺专线-芒果日本东京服务器
REM echo 1.杂货铺专线-芒果日本东京服务器>>logs/ping.txt
REM ping 8.210.120.68|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
REM echo 正在测试 杂货铺专线-顾瑶香港服-xTom CMI三网直连机房
REM echo 2.杂货铺专线-顾瑶香港服-xTom CMI三网直连机房>>logs/ping.txt
ping 45.128.210.230|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
echo 由于资金不足，其他服务器已陆续关闭，有余力的老哥可以给顾瑶赞助点
echo.
echo 正在测试 日本东京服务器
echo 1.日本东京服务器>>logs/ping.txt
ping 124.108.22.138|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
REM echo 正在测试 杂货铺专线-顾瑶日本2服-BBTEC软银大阪机房
REM echo 4.杂货铺专线-顾瑶日本服-BBTEC软银大阪机房>>logs/ping.txt
REM ping 45.117.103.145|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
REM echo.>>logs/ping.txt
REM echo.
echo 正在跳转至选择服务器界面
echo.
timeout /t 3
goto server

:server
CLS
title 请根据延迟情况选择服务器
echo.
echo.
echo.
echo 当前服务器延迟状况
echo.
type logs\ping.txt
echo.
echo.
echo 请选择适合自己网络的线路，100丢失的为连接不上服务器，ping高不代表游戏内延迟高
echo.
echo.
set /p xz=输入数字并回车后开始修改 :
if %xz%==1 goto us

:ping2
CLS
title 测试服务器延迟中（其他服务器）
echo.
echo.
echo 测试时间>logs/ping.txt
echo 整个过程约1-5分钟 本地网络状况决定测试速度 测试时请不要打开加速器
echo.
date /t>>logs/ping.txt
time /t>>logs/ping.txt
echo 1.美国洛杉矶2服>>logs/ping.txt
echo 正在测试 美国洛杉矶2服
ping 23.150.32.111|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 2.美国洛杉矶3服>>logs/ping.txt
echo 正在测试 美国洛杉矶3服
ping 172.247.39.11|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 3.美国洛杉矶4服>>logs/ping.txt
echo 正在测试 美国洛杉矶4服
ping 172.247.32.195|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 4.美国迈阿密服务器>>logs/ping.txt
echo 正在测试 美国迈阿密服务器
ping 192.80.189.190|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 5.巴林服务器>>logs/ping.txt
echo 正在测试 巴林服务器
ping 188.116.219.30|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 6.泰国曼谷服务器>>logs/ping.txt
echo 正在测试 泰国曼谷服务器
ping 61.91.161.217|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 7.美国纽约服务器>>logs/ping.txt
echo 正在测试 美国纽约服务器
ping 172.245.126.217|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 8.美国洛杉矶服务器>>logs/ping.txt
echo 正在测试 美国洛杉矶服务器
ping 103.86.70.254|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo 正在跳转至选择服务器界面
echo.
timeout /t 3
goto server2

:server2
CLS
title 请根据延迟情况选择服务器
echo.
echo.
echo.
echo 当前服务器延迟状况
echo.
type logs\ping.txt
echo.
echo.
echo 请选择适合自己网络的线路，100丢失的为连接不上服务器，ping高不代表游戏内延迟高
echo.
echo.
echo 输入数字并回车后开始修改 :
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
title 正在修改hosts 日本东京服务器
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us2
CLS
title 正在修改hosts 美国洛杉矶服务器 
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us3
CLS
title 正在修改hosts 美国洛杉矶2服
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us4
CLS
title 正在修改hosts 美国洛杉矶3服
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us5
CLS
title 正在修改hosts 美国洛杉矶4服
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us6
CLS
title 正在修改hosts 美国迈阿密服务器
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:bl
CLS
title 正在修改hosts 巴林服务器
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:tg
CLS
title 正在修改hosts 泰国曼谷服务器
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
echo.
echo 如上面未出现拒绝访问即为修改成功
echo.
echo %auth%感谢你的使用
timeout /t 3
goto exit

:us7
CLS
title 正在修改hosts 美国纽约服务器
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts >logs/hostserror
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback >logs/hostserror
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts >logs/hostserror
echo.
echo 正在写入hosts文件
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
echo 正在刷新DNS缓存
ipconfig /flushdns >logs/hostserror
timeout /t 3
goto exit

:mg1
CLS
title 正在修改hosts 杂货铺专线-芒果日本东京服务器

:gy3
CLS
title 正在修改hosts 杂货铺专线-顾瑶日本2服-BBTEC软银大阪机房
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo 正在写入hosts文件
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #本host由顾瑶RL工具箱提供，这条不影响host正常使用  > C:\WINDOWS\system32\drivers\etc\hosts
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit

:gy4
CLS
title 正在修改hosts 杂货铺专线-顾瑶俄罗斯服-新西伯利亚机房

:gy5
CLS
title 正在修改hosts 杂货铺专线-顾瑶美国服-洛杉矶机房

:gy6
CLS
title 正在修改hosts 杂货铺专线-顾瑶日本2服-BBTEC软银大阪机房
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo 正在写入hosts文件
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #本host由顾瑶RL工具箱提供，这条不影响host正常使用  > C:\WINDOWS\system32\drivers\etc\hosts
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit

:gy7
CLS
title 正在修改hosts 杂货铺专线-顾瑶香港服-xTom CMI三网直连机房
echo 正在对hosts文件进行降权
attrib -h -s -r %windir%\System32\drivers\etc\hosts
echo.
echo 正在备份原hosts文件
mkdir %windir%\System32\drivers\etc\hostsback
cd %windir%\System32\drivers\etc
copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hostsback\hosts
echo.
echo 正在写入hosts文件
echo.>C:\WINDOWS\system32\drivers\etc\hosts
echo.  #本host由顾瑶RL工具箱提供，这条不影响host正常使用  > C:\WINDOWS\system32\drivers\etc\hosts
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit