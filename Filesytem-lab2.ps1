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
    Write-Host "$drivename | size (ing GB) : $gb" | fl
}
