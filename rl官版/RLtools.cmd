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
set auth=顾瑶
set appname=火箭联盟国际服小工具
set admin=请使用管理员权限运行
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
echo. 本日志由火箭联盟国际服工具箱生成，仅用于排除问题用，不上传至服务器，请放心使用>logs\softlogs
echo. 日期与版本号>>logs\softlogs
date /t>>logs\softlogs
time /t>>logs\softlogs
echo. %ver%>>logs\softlogs
if exist "%f15%" (goto leimu) else (goto leimuerror)

:leimuerror
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
set /p xz=请输入序号后回车 :
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
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 工具箱获取管理员权限成功，感谢使用火箭联盟国际服小工具，版本%ver% 2
cd /d %~dp0
echo. UAC通过>>logs\softlogs
goto new1
 
:uacfalse
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
echo 正在下载软件必须运行库
echo.
cd /d %~dp0
aria2c http://down.mcylyr.cn/rl/packet/7z.exe
aria2c http://down.mcylyr.cn/rl/packet/7z.dll
aria2c http://down.mcylyr.cn/rl/packet/RLtoolstips.exe
rename RLtoolstips.exe RL工具箱提示您.exe
copy  "%~dp0"\RL工具箱提示您.exe "%~dp0"\bin\Special\RL工具箱提示您.exe
del "%~dp0"\RL工具箱提示您.exe
aria2c http://down.mcylyr.cn/rl/packet/logo.ico
copy  "%~dp0"\logo.ico "%~dp0"\bin\Special\logo.ico
del "%~dp0"\logo.ico
echo. 运行库下载成功 >>logs\softlogs
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
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 程序正在显示用户协议，可能会稍有卡顿，同意后即可开始使用 2
title 用户协议
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
echo. 初始化>>logs\softlogs
cd /d %~dp0
mshta vbscript:createobject("wscript.shell").run("""iexplore""http://rl.mcylyr.cn/num.html","2",ture)(window.close)
CLS
echo.
echo 正在初始化中并检查新版本中
echo.
CLS
type "%~dp0"logs\info
echo.
ping rl.mcylyr.cn|findstr /i /c:"找不到主机">logs/test2 && goto errornet
goto new

:errornet
echo. 无法连接服务器>>logs\softlogs
echo 无法连接到服务器
echo.
echo 可能是顾瑶已停用软件或电脑未联网
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
title 新手指引与软件介绍
echo.
echo   检测到你是第一次打开本软件，是否需要软件介绍
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
title %appname% %eng% %ver% - %auth% %admin%
aria2c http://down.mcylyr.cn/rl/ad
copy  "%~dp0"\ad "%~dp0"\logs\ad
del "%~dp0"\ad
echo. 获取主页公告与进入主页成功 >>logs\softlogs
CLS
color 0e
echo.
echo.
echo   %appname% %ver%
echo.
echo   1.一键启动火箭联盟国际服
echo.
echo   2.修改hosts并加速epic与RL
echo.
echo   3.其他功能
echo.
echo   4.关于我们与工具箱
echo.
echo   0.退出
echo.
type "%~dp0"logs\ad
echo.
echo.
set /p xz=   请输入序号并回车 : 
if %xz%==1 goto rlstart
if %xz%==2 goto 3
if %xz%==3 goto other
if %xz%==4 goto toolsinfo
if %xz%==time goto ad
if %xz%==test goto test
if %xz%==0 goto exit
goto chinese

:toolsinfo
title 关于我们
CLS
echo.
echo.
echo   关于我们
echo.
echo   当前软件运行路径 %cd%
echo.
echo   软件注册变量路径 %rltools%
echo.
echo   火箭联盟国际服工具箱由顾瑶工作室编写并运营
echo.
echo   十分感谢芒果提供的紧急方案服务器
echo.
echo   软件急需赞助购买高带宽服务器，后续上的功能会非常耗费服务器的带宽
echo.
echo   有余力的话能赞助点嘛
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
echo   0.返回主页
echo.
set /p xz=   请输入序号并回车 : 
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
title 撤销工具箱隐私协议同意
CLS
echo.
echo.
echo   您真的要撤销工具箱隐私协议同意吗？
echo.
set /p xz=   输入Y撤销 输入N返回主页后并回车 : 
if %xz%==y del logs\true /q /s
if %xz%==y echo.>>logs\false
if %xz%==y goto usererror
if %xz%==n echo.>>logs\false
if %xz%==n goto usererror

:reloadnet
title 重置网络
CLS
echo 开始执行第一步 刷新DNS
ipconfig /flushdns
ipconfig /flushdns
ipconfig /flushdns
echo 刷新成功
echo.
echo 3秒后继续
timeout 3
echo.
echo 开始执行第二步 刷新缓存
ipconfig /flushdns
echo.
echo 刷新成功
echo.
echo 3秒后继续
timeout 3
echo.
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
echo 开始执行第四步 分析数据
ipconfig /all
echo.
timeout 5
echo.
echo 分析完毕
echo/
echo 开始执行第五步 刷新网络
echo.
ipconfig /release
ipconfig /renew
echo.
echo 刷新完成，请尽情享受吧
echo. 重置网络成功 >>logs\softlogs
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
title 一键关闭火箭联盟国际服修复Steam与Epic正在运行中的错误
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
title 安装epic
CLS
echo.
echo.
echo 正在下载epic客户端
aria2c http://down.rlzhp.cn:1000/rl/tool/EpicInstaller.msi
copy  "%~dp0"\EpicInstaller.msi "%~dp0"\bin\EpicInstaller.msi
del "%~dp0"\EpicInstaller.msi
CLS
echo.
echo 正在打开epic客户端
start bin\EpicInstaller.msi
echo.
echo 安装完成，如果下载速度很慢可以试试改hosts试试，5秒后返回主页
timeout /t 5
goto chinese

:other
CLS
title 其他功能
echo.
echo.
echo   1.查看火箭联盟国际服录屏文件
echo.
echo   2.修改游戏界面语言为中文
echo.
echo   3.诊断电脑并生成日志
echo.
echo   4.尝试修复火箭联盟与Epic客户端运行环境
echo.
echo   5.查询百科(正在完善中)
echo.
echo   6.一键关闭火箭联盟国际服修复Steam与Epic正在运行中的错误
echo.
echo   7.下载 帮助 修复 安装插件 BakkesMod
echo.
echo   8.下载 安装 epic客户端
echo.
echo   0.返回主菜单
echo.
echo.
set /p xz=请输入序号并回车 :
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
title BakkesMod帮助与下载
echo.
echo.
echo.
echo.
echo     1.首次安装Bakkesmod请选我！
echo.
echo     2.BakkesMod原作者下载页面
echo.
echo     3.BakkesMod国内下载源 密码:fytn
echo.
echo     4.BakkesMod 常见问题
echo.
echo     5.告知原作者的东西
echo.
echo     6.修复Bakkesmod常见问题
echo.
echo     7.安装Bakkesmod插件
echo.
echo     0.返回主菜单
echo.
echo     注:Bakkesmod更新已整合至修改host，请在修改host后重新打开Bakkesmod进行更新
echo.
echo     Bakkesmod本体内更新仅支持顾瑶host日本大阪服
echo.
set /p xz=请输入序号并回车 : 
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
title 首次安装Bakkesmod
CLS
aria2c http://down.mcylyr.cn/rl/packet/BakkesModSetup.exe
copy  "%~dp0"\BakkesModSetup.exe "%~dp0"\bin\BakkesModSetup.exe
del "%~dp0"\BakkesModSetup.exe
CLS
"%~dp0"bin\BakkesModSetup.exe
echo 安装完成
goto mod

:bmrepair
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
goto updatebm

:repairerror3
CLS
echo.
echo 抱歉，未检测到VC运行库修复程序，5秒后自动开始下载vc.exe运行库
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
echo 抱歉，未检测到Net运行库修复程序，5秒后自动开始下载net.exe运行库
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
echo Bakkesmod国内下载源
echo.
echo 请优先下载Bakkesmod原创作者源
echo.
echo 转载没有得到作者的授权，因为我不知道在哪里联系
echo.
echo 请在作者看到后联系我，给我发邮件SakuraGu146@outlook.com
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
goto leimu

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
set /p xz=请输入序号并回车 : 
if %xz%==1 goto repairepic
if %xz%==2 goto repairrl
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
echo 按任意键立刻重启电脑，请保存好当前软件数据
echo.
pause>nul
shutdown /s -t 0

:repairerror1
CLS
echo.
echo 抱歉，未检测到VC运行库修复程序，5秒后自动开始下载vc.exe运行库
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
echo 抱歉，未检测到Net运行库修复程序，5秒后自动开始下载net.exe运行库
echo.
timeout /t 5
cd /d %~dp0
aria2c http://down.rlzhp.cn:1000/rl/tool/net.exe
copy  "%~dp0"\net.exe "%~dp0"\bin\Expand\net.exe
del "%~dp0"\net.exe
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
echo %auth%感谢你的使用
echo.
timeout /t 15
exit

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
echo.
echo.
echo   1.推荐服务器测试Ping并修改hosts
echo.
echo   2.其他服务器测试Ping并修改hosts
echo.
echo   3.打开hosts文件夹 (仅适合极客用户使用，小白不要乱打开)
echo.
echo   4.恢复备份的hosts
echo.
echo   5.打开备份hosts文件夹 (仅适合极客用户使用，小白不要乱打开)
echo.
echo   6.刷新网络缓存 (仅适合极客用户使用，小白不要乱打开)
echo.
echo   7.免测ping修改hosts(不推荐，除非你很了解这些服务器)
echo.
echo   8.刷新网络设置与缓存 (仅适合极客用户使用，小白不要乱打开，可能会断网1-3分钟，刷新完成前不要关闭)
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
if %xz%==7 goto noping
if %xz%==8 goto reloadnet
if %xz%==0 goto chinese
pause>nul
goto lau

:logerrordx
CLS
echo DxDiag.txt日志没找到，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto leimu

:logerrorsysteminfo
CLS
echo systeminfo日志生成失败，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto leimu

:logerrorhosts
CLS
echo hosts日志生成失败，请重试
echo.
echo 找不到问题请联系顾瑶
echo.
echo 按任意键返回主菜单
pause>nul
goto leimu

:log
CLS
title 系统诊断中
cd /d %~dp0
echo.

echo 进度  [#---------] 10%
echo 正在生成时间信息
echo.当前地区日期与时间>logs\systeminfo
date /t>>logs\systeminfo
time /t>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [##--------] 20%
echo 正在生成软件信息
echo.>>logs\systeminfo
echo.日志由RL国际服工具箱生成 版本 %ver%>>logs\systeminfo
echo.运行路径 %~dp0>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [###-------] 30%
echo 正在生成系统信息
echo.>>logs\systeminfo
echo.系统信息>>logs\systeminfo
echo.>>logs\systeminfo
systeminfo>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 正在生成存储信息
echo.>>logs\systeminfo
echo.硬盘信息>>logs\systeminfo
echo 进度  [####------] 35%
echo.>>logs\systeminfo
wmic diskdrive>>logs\systeminfo
echo.>>logs\systeminfo
echo.存储空间信息>>logs\systeminfo
echo 进度  [####------] 40%
echo.>>logs\systeminfo
Wmic logicaldisk>>logs\systeminfo
echo.>>logs\systeminfo
echo.运行内存信息>>logs\systeminfo
echo 进度  [####------] 45%
echo.>>logs\systeminfo
wmic memorychip>>logs\systeminfo
echo.>>logs\systeminfo
echo 进度  [#####-----] 50%
wmic volume>>logs\systeminfo
echo.>>logs\systeminfo
echo.
echo ok
echo.

echo 进度  [######----] 60%
echo 正在生成网络信息
echo.>>logs\systeminfo
echo.网络信息>>logs\systeminfo
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
echo 已生成日志文件在logs文件夹中，需要诊断请联系顾瑶，主页即可联系到我
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
echo %auth% %autheng%感谢你的使用，按任意键退出
pause>nul
exit

:noping
CLS
title 免测ping修改hosts
echo.
echo.
echo   免测ping修改hosts
echo.
echo   1.杂货铺专线-芒果日本东京服务器
echo.
echo   2.杂货铺专线-顾瑶日本2服-BBTEC软银大阪机房
echo.
echo   3.日本东京服务器
echo.
echo   4.美国洛杉矶2服
echo.
echo   5.美国洛杉矶3服
echo.
echo   6.美国洛杉矶4服
echo.
echo   7.美国迈阿密服务器
echo.
echo   8.巴林服务器
echo.
echo   9.泰国曼谷服务器
echo.
echo   10.美国纽约服务器
echo.
echo   11.美国洛杉矶服务器
echo.
echo   12.杂货铺专线-顾瑶俄罗斯服-新西伯利亚机房
echo.
echo   13杂货铺专线-顾瑶美国洛杉矶服务器
echo.
echo   0.返回主菜单
echo.
set /p xz=输入数字并回车后开始修改 :
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
echo 正在测试 杂货铺专线-芒果日本东京服务器
echo 1.杂货铺专线-芒果日本东京服务器>>logs/ping.txt
ping 8.210.120.68|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 正在测试 杂货铺专线-顾瑶日本2服-BBTEC软银大阪机房
echo 2.杂货铺专线-顾瑶日本服-BBTEC软银大阪机房>>logs/ping.txt
ping 140.238.35.210|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 正在测试 日本东京服务器
echo 3.日本东京服务器>>logs/ping.txt
ping 140.238.35.210|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 正在测试  杂货铺专线-顾瑶俄罗斯服-新西伯利亚机房
echo 4.杂货铺专线-顾瑶俄罗斯服-新西伯利亚机房>>logs/ping.txt
ping 45.144.176.220|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
echo 正在测试  杂货铺专线-顾瑶美国洛杉矶服务器
echo 5.杂货铺专线-顾瑶美国洛杉矶服务器>>logs/ping.txt
ping 64.69.34.208|findstr /I "最短 100% 丢失 less lost sent">>logs/ping.txt
echo.>>logs/ping.txt
echo.
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
if %xz%==1 goto mg1
if %xz%==2 goto gy3
if %xz%==3 goto us
if %xz%==4 goto gy4
if %xz%==5goto gy5

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
echo. 140.238.35.210 xmpp-service-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 metrics.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 egp-idsoc-proxy-prod.ol.epicgames.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 api.rlpp.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 ocsp.pki.goog  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 rl-cdn.psyonix.com  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 config.psynet.gg  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 ocsp.int-x3.letsencrypt.org  >> C:\WINDOWS\system32\drivers\etc\hosts
echo. 140.238.35.210 psyonix-rl.appspot.com  >> C:\WINDOWS\system32\drivers\etc\hosts
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
echo.  #本host由顾瑶RL工具箱提供，由芒果提供服务器支持，这条不影响host正常使用  > C:\WINDOWS\system32\drivers\etc\hosts
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit

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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit

:gy4
CLS
title 正在修改hosts 杂货铺专线-顾瑶俄罗斯服-新西伯利亚机房
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit

:gy5
CLS
title 正在修改hosts 杂货铺专线-顾瑶美国服-洛杉矶机房
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
echo 正在刷新DNS缓存
ipconfig /flushdns
goto exit