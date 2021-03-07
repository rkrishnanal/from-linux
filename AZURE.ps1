 #  Get-NetIPConfiguration |Select-Object interfacealias,interfaceindex   
 
 $server= Get-Content 'C:\Users\IT Admin\Desktop\SERVERS.txt'
 foreach ($server in $servers){
    Get-WindowsFeature RSAT-AD-POWERSHELL -ComputerName  $servers
 }


 #Get-WindowsFeature RSAT-AD-POWERSHELL -ComputerName 10.2.1.213
 
