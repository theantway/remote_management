set REMOTE_MACHINE=\\%1
set USER=%2
set PWD=%3

pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% sc config w32time start= auto
pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% sc start w32time 
pstools\psexec %REMOTE_MACHINE% -u %USER% -p %PWD% w32tm /resync /rediscover

