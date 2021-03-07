#Preapre demo
$loction=Set-Location .
$item=New-Item -Path . -Name "testfile.txt" -ItemType  File

#create direcotry
$dir=New-Item -Path . -Name "test_dir" -ItemType Directory

#File defining name 
New-Item -Path ".\NameInpath.txt"

#Name defining file
New-Item -Name ".\NameInpath.txt"

#Content
New-Item ".\contentincreation.txt" -Value "This is my test value"

#overwrite
New-Item .\fakefolder -Name .\testfile.txt -Force

#Multiples files
New-Item -Path ".\test5.txt",".\fakefolder\test6.txt"

#N files 
1..50 |ForEach{New-Item -Path . -Name "$("file" + "$_ "+ ".txt")" -ItemType "file"}
  
 #differ file ,directory
 gci .

#Remove item
Remove-Item .\*.txt
Remove-Item .\fakefolder,.\test_dir

#HR files
$userfiles =Import-Csv .\Userlist.csv
foreach ($user in $userfiles) {
    New-Item -Path . -Name $("$(($user).Firstname)" + "$(($user).lastname)" + "_" + "$(($user).department)") -ItemType Directory
    
}
$yesterday=(get-date).AddDays(-1)
$folderlist = Get-ChildItem -Path . -Directory | ? {$_.CreationTime -gt $yesterday}
#saubfolder
foreach ($folder in $folderlist) {
    New-Item -Path $folder\Instruction -Name "intsrcution.txt" -Value "this the test backup" -Force
    
}