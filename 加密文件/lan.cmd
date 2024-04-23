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
echo 请注意 中文无法连接服务器 请在修改设置后卸载汉化
echo.
echo 正在检测火箭联盟中
cd /d "%~dp0"
echo 当前运行路径是：%CD%|findstr /I "rocketleague\TAGame" >log && goto open
if exist "TAGame" (goto open) else (goto error)

:error
CLS
echo 未检测到火箭联盟，按任意键返回小工具主页
pause
exit

:open
echo.
echo   当前运行路径%cd%
echo.
echo   检查完毕
echo.
echo   请选择安装中文还是卸载中文
echo.
echo   1.安装
echo.
echo   2.卸载
echo.
echo   0.退出
echo.
set /p xz=   请输入序号并回车 : 
if %xz%==1 goto start
if %xz%==2 goto del
if %xz%==0 exit

:start
title 正在更改语言 请不要关闭我
CLS
echo.
echo.
echo.
echo 准备更改语言 正在检查必要文件
if exist "Coalesced_CHN.bin" (goto start2) else (goto error1)
:error1
echo 未检查到语言文件
pause
:start2
if exist "Language.ini" (goto start3) else (goto error2)
:error2
echo 未检查到配置文件
cd
pause
:start3
echo.
echo 检查完毕 正在更改语言
xcopy /Y "Coalesced_CHN.bin" TAGame\CookedPCConsole
cd "%~dp0"
xcopy /Y "Language.ini" "TAGame"
echo.
echo.
echo.
title 修改完成了！
cd
echo 修改完成！5秒后返回主程序
timeout /t 5
cd "%~dp0"
call "RL工具 RLTools.cmd"
exit

:del
title 正在卸载汉化
echo 正在执行卸载程序中
del /q TAGame\Language.ini
del /q TAGame\CookedPCConsole\Coalesced_CHN.bin
title 卸载完成了！
echo 卸载完成！回车打开火箭联盟，退出请直接关闭
pause>nul
cd.. 
cd Binaries\Win64
RocketLeague.exe