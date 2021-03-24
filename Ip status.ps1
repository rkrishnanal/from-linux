
$server= gc 'C:\Users\IT Admin\Desktop\Server.txt'

foreach ($servers in $server) {
    Invoke-Command -ComputerName $servers -ScriptBlock {Get-Service}
    get-
    Test-Connection $servers -Count 1
    
}