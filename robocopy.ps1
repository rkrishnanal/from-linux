Robocopy.exe E:\T2VIDEOS \\10.2.1.250\Volume 2 Data /MIR
param (
    [string]$time ="2.03 PM"

)
#check Windows server backup installed or not
$sr= Get-WindowsFeature -Name Windows-Server-Backup

if ($sr.Installed -ne "True") {
    Add-WindowsFeature -Name Windows-Server-Backup
    elseif ($sr.Installed -eq "True") {
        Write-Host "Role installed"
        
    }
    
}
$Policy=New-WBPolicy
$Policy |Add-WBSystemState

$vol=Get-WBVolume -CriticalVolumes

Add-WBVolume -Policy $Policy -Volume $vol
$backuplocation= New-WBBackupTarget -NetworkPath \\10.2.1.120\staff\IT
Add-WBBackupTarget -Policy $Policy -Target $backuplocation

Set-WBSchedule -Policy $Policy -Schedule $time

Set-WBPolicy -Policy $Policy 

Write-Host "backup configured at :$time"
Write-Host "wating for backup execution"

if ($time -ne "2:00") {
    while ($true) {
        $summary=Get-WBSummary
        

    }

}

