
#Set-Item -Path WSMan:\localhost\Client\TrustedHosts -Value "Computer1,Computer2"#

$remote1=Set-Item WSMan:\localhost\Client\TrustedHosts 10.2.1.213
$server=Get-Content -Path .\server.txt 
$credentinals=Get-Credential
foreach ($servers in $server) {
    Invoke-Command -ComputerName $servers -ScriptBlock {
        $uri="https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.9.3/npp.7.9.3.Installer.x64.exe"
        $outfile= "C:\Windows\Temp\npp.7.9.3.Installer.x64.exe"
        Invoke-WebRequest -u $uri -Method Get -OutFile $outfile
        Start-Process -FilePath $outfile -ArgumentList "/S" -Wait
    } -Credential $credentinals
    
}
