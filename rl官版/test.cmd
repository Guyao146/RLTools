cd /d %~dp0
:UACPrompt
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :uactrue","","runas",1)(window.close)&&goto :uacfalse
exit

:uactrue
cd bin\Special
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 工具箱获取管理员权限成功 2
cd /d %~dp0
echo. UAC通过>>logs\softlogs
goto new1
 
:uacfalse
cd bin\Special
RL工具箱提示您.exe logo.ico RL国际服小工具提示您 工具箱获取管理员权限失败，请右键使用管理员权限运行 2
cd /d %~dp0
exit