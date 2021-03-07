# # $server= Get-Content 'C:\Users\IT Admin\Desktop\SERVERS.txt'
#  foreach ($s in $server){
#     #Set-Item WSMan:\localhost\Client\TrustedHosts 10.2.1.202
#     Invoke-Command -ComputerName $s -ScriptBlock {get-service}
     
    
#  }
 #SWtich

 $cm = "10.2.1.245"
 foreach ($cms in $cm) {

    $ping=Test-NetConnection -ComputerName $cms 
    switch ($ping) {
        "true" { Write-Host "$cms is online" -ForegroundColor Red }
        "false"{Write-Host "$cms is offline"}
        
    }
     
 }

 Get-CimInstance -ClassName Win32_BIOS -ComputerName "IT_Admin" -ErrorAction Inquire -ErrorVariable $error1 
