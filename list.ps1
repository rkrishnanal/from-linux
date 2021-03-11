# get-childitem  used to get item i
 Get-ChildItem -Path . -Name

 Get-ChildItem -Path . -Name -Hidden

 Get-ChildItem -Path . -Name -ReadOnly
 Get-ChildItem -Path . -Name -System

 Get-ChildItem . -Attributes 

 # set-content

 Set-Content -Path .\file.txt -Value "this the test file"

 Set-Content -Path .\file1.txt -Value "this the test file" -PassThru

Add-Content -Path .\file1.txt - -Value "this the text line2"

ping fakehost

#tee-object
gci . | Tee-Object  .\file1.txt |Measure-Object

#Redirection operator
 # > Send specificed stream a file
 # >> -Append specificed stream to file
 ping 8.8.8.8 > .\test1.txt


 #Lisiting demo 2

Remove-Item .\* -Recurse -Force
New-Item -Path .\DIR_D1\DIR_D2\DIR_D3\DIR_D4 -ItemType Directory
tree.com
1..2| % {New-Item -Path . -Name "$("file" + "$_").txt"-ItemType File}
1..2| % {New-Item -Path .\dir* -Name "$("file" + "$_").txt"-ItemType File} 
1..2| % {New-Item -Path .\dir*\dir* -Name "$("file" + "$_").txt"-ItemType File}
(New-Item . -Name hidden1.txt -ItemType File).Attributes +='Hidden'

Get-ChildItem -Path . -Name

Get-ChildItem . -File
Get-ChildItem . -Directory
Get-ChildItem -Path . -Force

Get-ChildItem . -File|Sort-Object -Property CreationTime -Descending |select create*,name -First 4

Remove-Item -Path .\file2.txt -Force