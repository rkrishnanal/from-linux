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