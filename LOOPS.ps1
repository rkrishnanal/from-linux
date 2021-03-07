New-Item C:\test\file.txt\test1.txt
New-Item C:\test\file2.txt\test2.txt
New-Item C:\test\file3.txt\test3.txt

#Foreach loop
$path= @('C:\test\file.txt\test1.txt','C:\test\file2.txt\test2.txt','C:\test\file3.txt\test3.txt')

foreach ($i in $path) {
    Set-Content -Path $i -Value "hi how are you"

}

#Identical VMS in Azure

#resource group

$location="East us2"
$RG="ZONE-REDUNTANT"

#Virtual network
$vnet="VNET1"
#Creat an emoty arry

$arry =@()

#Using the += opertar add an element 
$array += 1

#adding Multiple elements at the same time
$array += 2,3,4,5

#Array Sicling
$arrary [1]

#splatting

$splat = @{
    ComputerName = 'IT-ADMIN'
    ClassName = 'Win32_LogicalDisk'
    Filter = ' DriverType=2'
    Name = 'root\cimv2'
}
Get-CimInstance @splat

New-Item -Path 'C:\test' -Name test123.txt -ItemType 'file'

$splat =@{
    Path ='C:\test'
     Name= 'test123.txt' 
     ItemType ='file'
}
New-Item @splat

param($computername)
$result = Test-NetConnection -ComputerName $computername  