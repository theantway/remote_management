' USage: cscript rename.vbs NEW_MACHINE_NAME

sNewName = WScript.Arguments.Item(0)

Set oShell = CreateObject ("WSCript.shell" ) 

sCCS = "HKLM\SYSTEM\CurrentControlSet\" 
sTcpipParamsRegPath = sCCS & "Services\Tcpip\Parameters\" 
sCompNameRegPath = sCCS & "Control\ComputerName\" 

With oShell 
.RegDelete sTcpipParamsRegPath & "Hostname" 
.RegDelete sTcpipParamsRegPath & "NV Hostname" 

.RegWrite sCompNameRegPath & "ComputerName\ComputerName", sNewName 
.RegWrite sCompNameRegPath & "ActiveComputerName\ComputerName", sNewName 
.RegWrite sTcpipParamsRegPath & "Hostname", sNewName 
.RegWrite sTcpipParamsRegPath & "NV Hostname", sNewName 
.Run "shutdown -r -t 0 -f"
End With ' oShell 

