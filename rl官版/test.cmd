cd /d %~dp0
:UACPrompt
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :uactrue","","runas",1)(window.close)&&goto :uacfalse
exit

:uactrue
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� �������ȡ����ԱȨ�޳ɹ� 2
cd /d %~dp0
echo. UACͨ��>>logs\softlogs
goto new1
 
:uacfalse
cd bin\Special
RL��������ʾ��.exe logo.ico RL���ʷ�С������ʾ�� �������ȡ����ԱȨ��ʧ�ܣ����Ҽ�ʹ�ù���ԱȨ������ 2
cd /d %~dp0
exit