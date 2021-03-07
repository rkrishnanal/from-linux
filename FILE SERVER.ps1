  Enter-PSSession -ComputerName 10.2.1.245 `
 -Credential (Get-Credential)

 Get-DnsServerResourceRecord -ZoneName TCS.COM -RRType A
 g
Get-Help shutdown
CLS
Add-DnsServerResourceRecordA -Name ESXI -IPv4Address 10.2.1.25 -ZoneName tcs.com
Get-DnsServerResourceRecord -Name ESXI -ZoneName tcs.com 

$user=Get-ADUser -Filter *
$source=Get-ADUser -Identity 35026 -Properties memberof
$source.
foreach ($sor in $source) {
  $sor
  
}
Get-CimInstance Win32_ComputerSystem
