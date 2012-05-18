set REMOTE_MACHINE=\\%1
set USER=%2
set PWD=%3

net use /delete * /y
net use %REMOTE_MACHINE%\c$ %PWD% /user:%USER%
copy autologin.vbs %REMOTE_MACHINE%\c$
pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% cscript c:\autologin.vbs %USER% %PWD%