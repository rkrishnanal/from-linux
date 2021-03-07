# Install-Module -Name Vmware.PowerCLI -AllowClobber


 Set-Item WSMan:\localhost\Client\TrustedHosts 10.2.1.202
# $cred="Get-Credential 
# $ping="8.8.8.8","dns","10.2.1.245"

# foreach ($pings in $ping) {
#     Test-NetConnection $pings
# }
# Get-CimInstance -ClassName Win32_LogicalDisk 

# Get-WindowsOptionalFeature -Online -FeatureName SMB1PROTCOLnaa
Invoke-Command -ComputerName IT-ADMIN -ScriptBlock {
$os=Get-CimInstance -ClassName Win32_OperatingSystem

$os |gm
$os.Caption  
#version
$os.Version
Write-Host "os Name: $($os.Caption)"
#install date

# ip: interface ,ip, gateway,dns
$network=Get-NetAdapter |where{$_.status -eq 'up'} |Get-NetIPConfiguration
# Network: Can I ping gateway,dns server, website
# installed roles -server only
# last update
# it would be nice if could run this remoetly

$pro =[PSCustomObject]@{
    OSname=$os.Caption
    OSversion=$os.Version
    OsInstalleddate=$os.InstallDate
    ipaddress = $network.IPv4Address.ipaddress
     gateway=$network.IPv4DefaultGateway.nexthop
}
$pingGateway=Test-NetConnection -ComputerName $pro.gateway -InformationLevel Quiet
#add property
$pro |Add-Member -MemberType NoteProperty -Value $pingGateway -Name 'pingGateway'

$pro }

Get-ADGroup -Identity *
function get-admember  {

    param (
        [Microsoft.ActiveDirectory.Management.ADGroup] exit-ps
        OptionalParameters
    )
    
}

#GPO
$gponame='Map all drivers!'
Get-GPOReport -Name $gponame -ReportType Xml

$com=Get-ADComputer -Filter * -Properties * 

$com[0]|select *

$dns= Get-DnsServerResourceRecord -ZoneName tcs.com
$dns[1].RecordType

Invoke-Command -ComputerName 'dns' -ScriptBlock {Get-DnsServerResourceRecord -ZoneName tcs.com  -Name 'cluster'} -Credential (Get-Credential)

Get-ChildItem C:\Users | foreach {$_ ;Start-Sleep -Milliseconds 250}

Measure-Command {
    Get-ChildItem C:\Users | foreach {$_ ;Start-Sleep -Milliseconds 250} 
}
 
Measure-Command  ;Get-Service 


#GPO
$Name= 'Default Domain Controllers Policy'
$gpo=Get-GPO -Name $Name

Get-GPPermission -All -Name $Name |gm
$scope=Get-GPPermission -All -Name $Name |Where-Object {$_.permission -eq "GpoApply"}

#ADOU
Get-ADOrganizationalUnit -Filter * -Properties gplink | Where-Object {$_.gplink -like "*($gpo.id)*"}

$customobject=[PSCustomObject]@{
    OSbuild = '$osbuild'
    osversion="version"

$ser="10.2.1.185","10.2.1.202","10.2.1.213"
foreach($dc in $ser) {
if (Test-NetConnection -ComputerName $dc  ) {
    else {
        write-outpu"the server $dc is not responding"
    }

    }
    
}
 
#BACKUP
$all=Get-ChildItem C:\windows\system32
foreach ($item in $all) {
    $item.fullname -mac
    
}

#Error handling

r