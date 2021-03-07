# Join two
# Syntax = join-path -path "path" -childpath "childpath"

Join-Path -Path "HKLM:\SYSTEM" -ChildPath *ControlSet* -Resolve
Join-Path -Path c: ,d: -ChildPath Newfolder

#split path
Split-Path -Path D:\PowerShell\No2121.txt -Qualifier #show the diver of the path
Split-Path -Path D:\PowerShell\No2121.txt  -Leaf #show the file in the folder
Split-Path -Path D:\PowerShell\No2121.txt -Parent #show the parent folder
Split-Path -Path D:\PowerShell\No2121.txt -IsAbsolute # Whether path is true or false