Login-AzAccount
Install-Module Azuread
Import-Module Azuread
Connect-AzureAD

#Powershell and notifu
$newline= "`r`n"
    # $downcount = 0
    # $down =$null
    Write-Host(Get-Date)
    $hostlist = Get-Content .\iplist.txt 
    foreach ($hostname in $hostlist) {
            $hoststatus=Test-NetConnection -ComputerName $hostname -ErrorAction Stop -co
        }
        if ($hoststatus) {
            Write-Host "ok : $hostname" -BackgroundColor Green -ForegroundColor White
         } else {
                Write-Host "down: $hostname" -BackgroundColor Red -ForegroundColor Yellow
            } 
               
                # $downcount += 1
                # [array]$down += $hostname
           
        
        
    # Ping a List of Servers in a Text File With PowerShell

    Set-Content -Path .\iplist.txt -Value "dns","testdns","google.com"
    
  #$servers=Import-Csv -Path .\iplist.txt | Select-Object -ExpandProperty servername
  $servers = Get-Content -Path .\iplist.txt
  foreach ($server in $servers) {
      Test-NetConnection -ComputerName $server  
      
  }
foreach ($server in $servers) {
    [PSCustomObject]@{
        Servername = $server
        online=(Test-NetConnection -ComputerName 
    }
}

#Performance counter monitoring in PowerShell
Get-Counter '\\it-admin\processor(_total)\% processor time' -MaxSamples 5  -SampleInterval 3
