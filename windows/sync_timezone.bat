set REMOTE_MACHINE=\\%1
set USER=%2
set PWD=%3

pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% tzutil /s "Pacific Standard Time"
