$filepath = Read-Host " Enter the path name"
$duplicates= Get-ChildItem -Path $filepath |Get-FileHash | Group-Object -Property Hash | Where-Object count -gt 1 

#latency
repadmin.exe /latency 10.2.1.213