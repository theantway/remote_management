' USage: cscript rename.vbs NEW_MACHINE_NAME

userName = WScript.Arguments.Item(0)
password = WScript.Arguments.Item(1)

Set oShell = CreateObject ("WSCript.shell" ) 

sCCS = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\" 

With oShell 
.RegWrite sCCS & "DefaultUserName", userName 
.RegWrite sCCS & "DefaultPassword", password 
.RegWrite sCCS & "AutoAdminLogon", 1 
.Run "shutdown -r -t 0 -f"
End With ' oShell 
