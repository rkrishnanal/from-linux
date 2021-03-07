Import-Csv C:\Users\Administrator\Desktop\TA.csv |ForEach-Object {
    $upn=$_.SamAccountName + "@tcs.com"
    $uname=$_.Firstname
    New-ADUser -Name $uname `
    -DisplayName $uname `
    -EmailAddress $_.Email id `
    -Title $_.Jobtilte `
    -UserPrincipalName $upn `
    -SamAccountName $_.samAccountName `
    -Path $_.ou `
    -AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -Force) -Enabled $true
}
Write-Host "successfully"