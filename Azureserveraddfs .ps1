$IP = "10.2.1.169"
$MaskBits = 24 # This means subnet mask = 255.255.255.0
$Gateway = "10.2.1.254"
$Dns = "10.2.1.169"
$Dns2=""
$IPType = "IPv4"
# Retrieve the network adapter that you want to configure
$adapter = Get-NetAdapter | ? {$_.Status -eq "up"}
# Remove any existing IP, gateway from our ipv4 adapter
If (($adapter | Get-NetIPConfiguration).IPv4Address.IPAddress) {
 $adapter | Remove-NetIPAddress -AddressFamily $IPType -Confirm:$false
}
If (($adapter | Get-NetIPConfiguration).Ipv4DefaultGateway) {
 $adapter | Remove-NetRoute -AddressFamily $IPType -Confirm:$false
}
 # Configure the IP address and default gateway
$adapter | New-NetIPAddress `
 -AddressFamily $IPType `
 -IPAddress $IP `
 -PrefixLength $MaskBits `
 -DefaultGateway $Gateway
# Configure the DNS client server IP addresses
$adapter | Set-DnsClientServerAddress -ServerAddresses $DNS,$Dns2



# Rename-Computer -NewName H1

# $safemode=Read-Host "enter the password" -AsSecureString

# $AddFs=Install-ADDSForest `
#  -CreateDnsDelegation:$false `
#  -DatabasePath C:\Windows\NTDS `
#  -DomainMode WinThreshold `
#  -DomainName itraki.co.in `
#  -DomainNetbiosName Itraki `
#   -ForestMode WinThreshold `
#   -InstallDns:$true `
#   -LogPath C:\Windows\NTDS `
#   -NoRebootOnCompletion:$true `
#   -SafeModeAdministratorPassword $safemode `
#    -SysvolPath C:\Windows\SYSVOL `
#    -Force:$true
   