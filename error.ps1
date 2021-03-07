try {
    Get-Item -Path nonexistentio -ErrorAction Stop
}
catch[system.$erro] {
    Write-Host  "error  occurred"
    
}