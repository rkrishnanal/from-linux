#clear 
Clear-Content -Path .\file1.txt

#clc is alias of clearpcotent

#Set-itemproperty

Set-ItemProperty -Path .\file1.txt -Name 

#removeitem

Remove-Item -Path .\file2.txt
Get-Item -Path .\file1.txt,.\file.txt,.\file.txt,.\file3.txt,.\file4.txt -Force | Remove-Item -Force

#copy
Copy-Item -Path .\bash.sh -Destination D:\PowerShell -Force

#Rename

Rename-Item -Path ".\file5.txt" -NewName ".\test55.txt"

#Move item
<#mo#>