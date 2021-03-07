cls
$process=Get-Service
foreach ($p in $process) {
    switch -Wildcard ($p.Name) {
        sp*{ Write-Host "found process is working" -ForegroundColor Red }
        Default {"mo match found"}
    }
}