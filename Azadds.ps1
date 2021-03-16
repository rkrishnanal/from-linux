$IP = "10.10.10.10"
$MaskBits = 24 # This means subnet mask = 255.255.255.0
$Gateway = "10.10.10.1"
$Dns = "10.10.10.100"
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

Install-WindowsFeature -

# Windows PowerShell script for AD DS Deployment

# Password for domain join credentials will be prompted

# no DSRM password prompt

Import-Module ADDSDeployment

Install-ADDSDomainController `

-NoGlobalCatalog:$false `

-CreateDnsDelegation:$false `

-Credential (Get-Credential CONUNDRUM\Administrator) `

-CriticalReplicationOnly:$false `

-DatabasePath "C:\Windows\NTDS" `

-DomainName "conundrum.com" `

-InstallDns:$true `

-LogPath "C:\Windows\NTDS" `

-NoRebootOnCompletion:$false `

-SiteName "Default-First-Site-Name" `

-SysvolPath "C:\Windows\SYSVOL" `

-SafeModeAdministratorPassword (ConvertTo-SecureString 'P@ssw0rd' -AsPlainText -Force) `

-Force:$true