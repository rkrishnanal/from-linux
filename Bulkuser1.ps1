$users = Import-Csv C:\Users\Administrator\Desktop\TA.csv
$users |ft
$password =ConvertTo-SecureString "Tc$#@20201" -AsPlainText -force
foreach ($user in $users) {
    New-ADUser -Name $user.Loginname -Surname $user.Lastname -GivenName $user.Firstname -EmailAddress $user.Email -SamAccountName $user.Loginname -AccountPassword $user.$password -Title $user.Jobtitle -Path $user.ou -Enabled $true -PassThru
}

Get-ADUser -Identity 22953 -Properties *
 