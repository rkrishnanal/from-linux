#Creation of Test file
New-Item -Path .\test1.txt -ItemType File
#Creation of New director
New-Item -Path .\test -ItemType Directory

New-Item -Path .\test2.txt -Value "this the test value"

#get free disk
$disk= Get-CimInstance -ClassName Win32_LogicalDisk
foreach ($local in $disk) {
    $drivename = $disk.DeviceID
    $gb=[System.Math]::Round(($local.Size/1GB),2)
    Write-Host "$drivename | size (in GB) : $gb" | fl
}

#ADDS 
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath C:\Windows\NTDS -DomainMode WinThreshold -DomainName "itraki.co.in" -DomainNetbiosName "itraki" -ForestMode WinThreshold -InstallDns:$true -LogPath C:\Windows\NTDS -NoRebootOnCompletion:$true -SafeModeAdministratorPassword $password -SysvolPath C:\Windows\SYSVOL -Force:$true