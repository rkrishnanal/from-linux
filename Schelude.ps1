Get-Date | Out-File 'C:\Users\IT Admin\Desktop\notepad.txt' -Append
Get-PSDrive -PSProvider FileSystem | Out-File 'C:\Users\IT Admin\Desktop\notepad.txt' -Append

Remove-Item C:\TimeTables  -Recurse
Write-Host "creating a folder " -ForegroundColor Green
{
    catch

}
write-host " successfully deleted" -ForegroundColor Cyan
$Error[0].Exception.Message

help *scheduled*
Get-ScheduledTask 

Get-ScheduledTask | where {$_.taskname -eq "restart"}

Unregister-ScheduledTask -TaskName "restart"