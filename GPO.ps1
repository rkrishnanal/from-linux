# # Installation Remote Process
# nslookup (domain name)
# test-netconnection -port 5985 -computer name
# test-wsman -comuptername (localhost)
# enable-psremoting 

# gpresut /r /scope computer ( To check the policy applied )

#Module
Import-Module GroupPolicy

 Get-GPO -All |select displayname,id
 | Backup-GPO c:\gpo_backup

 $gpo=Get-GPO -Name IGCSE 
 $backup =  + $gpo.displayname
#  New-Item -Path $backup -ItemType directory
Get-GPO -Name IGCSE | Backup-GPO -Path .\gpo_backup

#New Org  
New-ADOrganizationalUnit -Name "Students"
Import-Csv -Path C:\Users\Administrator\Desktop\IMPORT.CSV  -Delimiter ';'|
ForEach-Object {
    New-ADUser `
    -Name $_Name `
    -GivenName $_.givenname `
    -Surname $_.sn `
    -Path $_.parent ou
    -SamAccountName $_.samAccount `
    -UserPrincipalName ($_.samAccount + '@' + $env:USERDNSDOMAIN) `
    -AccountPassword  (ConvertTo-SecureString "Tcs@35002" -AsPlainText -Force)`
    -EmailAddress $_.Email address `
    -Enabled $true `
    -ChangePasswordAtLogon $true


}