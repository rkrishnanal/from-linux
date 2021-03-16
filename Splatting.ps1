$test=@{"Name"="outlook"}

$param =@{
    "path"=".\"
    "hidden"=$false
}

#Try,catch and final
param ($Filepath,$Processname)
try {
    Get-Process -Name $Processname -ErrorAction Stop
    Write-Host "Already running" -ForegroundColor Red
}
catch {
    Start-Process $filepath
    Write-Host "starting the process" -ForegroundColor Green
}
Measure-Command -Expression{
    $array=@()
    1..1000| foreach {
        $a= New-Guid
        $array += $a
    }
}