$log='C:\test\'
$Eventlog =Get-WinEvent -LogName Application -MaxEvents 10 | Export-Clixml D:\test25\test

$taskaction =New-ScheduledTaskAction -Execute 'powershell.exe' -Argument E:\POWERSHELL\event.ps1
$trigger=New-ScheduledTaskTrigger -Daily -At 3:00PM 

Register-ScheduledTask -TaskName "eventlogs" `
-Action $taskaction -Trigger $trigger `
