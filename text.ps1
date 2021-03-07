$service=Get-Service -DisplayName "Windows Update"  
if ($service -eq "stopped") {
    Write-Host "Service is running" -ForegroundColor red
    elseif($service -eq "running") {
         Stop-Service $service 
         Write-Host "sucessfully stopped"$service -ForegroundColor Green
    }
    
}
 
#windows
$content=Get-ChildItem C:\Windows
if ($content -match "25001") {
    Write-Output "Windwos folder is der"  
    else {
         write-host "folder not avaiable"
    }
}