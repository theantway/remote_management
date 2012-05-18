set REMOTE_MACHINE=\\%1
set NEW_NAME=%2

set USER=%2
set PWD=%3

echo renaming %REMOTE_MACHINE% to %NEW_NAME%

net use /delete * /y
net use %REMOTE_MACHINE%\c$ %PWD% /user:%USER%
copy rename.vbs %REMOTE_MACHINE%\c$
pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% cscript c:\rename.vbs %NEW_NAME%