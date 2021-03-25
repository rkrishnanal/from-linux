$filepath = Read-Host " Enter the path name"
$duplicates= Get-ChildItem -Path $filepath |Get-FileHash | Group-Object -Property Hash | Where-Object count -gt 1 

#latency
repadmin.exe /showrepl Error Messages

#list computer
Get-ADComputer -Filter 'enabled -eq "true"' `
-Properties Name,Operatingsystem,OperatingSystemVersion,IPv4Address |
Sort-Object -Property Operatingsystem |
Select-Object -Property Name,Operatingsystem,OperatingSystemVersion,IPv4Address  |ft

#Seriall Number 
Get-ADComputer -Filter *| ForEach-Object {Get-CimInstance -ClassName Win32_BIOS -ComputerName $_ -ErrorAction SilentlyContinue } |
Select-Object PSComputerName ,SerialNumber

 