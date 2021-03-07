cls
Write-Host "addition two numbers" -BackgroundColor Red
[int]$n1=Read-Host "enter the number"
[int]$n2=Read-Host "enter the number"
$result=$n1+$n2
Write-Output "addition of two number $result"
Write-Output "the addition of two $n1 + $n2 is $result"
#[int][float][decmical]

#Get-Service | Where-Object {$_.Status -eq "running" -and $_.DisplayName -like "windows*"} 
$status = Read-Host "enter the status (running/stopped)"
$display = Read-Host "enter the display (use * wildcard option)"
Get-Service | Where-Object {$_.Status -eq "$status" -and $_.DisplayName -like "$display"} 

cls
Write-Host "working with windows process" -ForegroundColor DarkBlue
$Lowerhandles = Read-Host "enter the handles(less that 1000)"
$highesthandles = Read-Host "enter the handles(more that 2500)"
Get-Process | Where-Object {$_.Handles -lt "$Lowerhandles" -and $_.Handles -gt "$highesthandles"} | Sort-Object Handles | Format-Table Handles,Id
#Get-Process | Where-Object {$_.Handles -lt "1000" -and $_.Handles -gt "100"}  |Sort-Object Handles 

cls
$