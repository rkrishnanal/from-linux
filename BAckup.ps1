Set-Item WSMan:\localhost\Client\TrustedHosts 10.2.1.213
$backup=New-WBPolicy
 
$pol=Add-WBSystemState -Policy $backup
$vol=Get-WBVolume -AllVolumes
Add-WBVolume -Policy $backup -Volume $vol

#Bulk ping  

Get-Content 'C:\Users\IT Admin\Desktop\notepad.txt'
Get-ADComputer 


Install-Module PSReadLine -RequiredVersion 2.1.0
Set-PSReadLineOption -Colors @{inli}
Set-PSReadLineKeyHandler -key "ctrl+f" -Function ForwardChar
Get-Content Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward