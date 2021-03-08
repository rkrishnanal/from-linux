# Join two
# Syntax = join-path -path "path" -childpath "childpath"

Join-Path -Path "HKLM:\SYSTEM" -ChildPath *ControlSet* -Resolve
Join-Path -Path c: ,d: -ChildPath Newfolder

#split path
Split-Path -Path D:\PowerShell\No2121.txt -Qualifier #show the diver of the path
Split-Path -Path D:\PowerShell\No2121.txt  -Leaf #show the file in the folder
Split-Path -Path D:\PowerShell\No2121.txt -Parent #show the parent folder
Split-Path -Path D:\PowerShell\No2121.txt -IsAbsolute # Whether path is true or false

#TEST PATH

New-Item -Path .\file.txt
Test-Path -Path .\file.txt
Test-Path -Path .\file.txt -Include *.ps1 
Test-Path -Path .\file.txt -Exclude *.txt
Test-Path -Path .\file.txt -NewerThan "07-Mar-21"
Test-Path -Path .\file.txt -OlderThan "06-Mar-21"
Test-Path -Path .\file.txt -PathType Container
Test-Path -Path .\file.txt -

#LAB PRATICE
Set-Location .
1..5| % {New-Item -Path . -Name "$("file" + "$_").txt" -ItemType "file"}

#Test Path
Test-Path -Path .\*file.txt #accept wildcard

Test-Path -LiteralPath .\file.txt # don't accept wildcard

#Syntax
Test-Path -LiteralPath .\file.txt  -IsValid

#Specified type
$file = ".\Userlist.csv"
$yesterday=(date).AddDays(-1)
$existence = Test-Path -Path $file
$timevalidity = Test-Path $file -NewerThan "06-March-21"
if (($existence)-and ($timevalidity)) 
{
Write-Host "All Well" -ForegroundColor Green
}
else {
    Write-Host "We are not good to go" -ForegroundColor Red
}

#Get-PSDrive  list all drives as default
Get-PSDrive
Get-PSDrive -PSProvider Registry

Get-PSDrive -PSProvider FileSystem

#custom psdrive

New-PSDrive -Name installedsoftware -PSProvider Registry -Root HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall

#working Directory
Get-ChildItem

#Push 
Push-Location -Path D:\

#pop
Pop-Location #get back to the original location