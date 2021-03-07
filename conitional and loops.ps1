$ping= @("google.com", "facebook.com")
$ping.ForEach( {
    $pingtest = $_
    $testconnection= Test-NetConnection -ComputerName $pingtest 
    if ($testconnection -eq $true) {
        Write-Output "$pingtest is up and running"
        else {
            Write-Output "$pingtest is down"
        }
    }
})
$value= 1..100
$time = Measure-Command {
    foreach ($item in $value) {
}

    
} |Select-Object -ExpandProperty Seconds
echo "foreach took $time"

$value | ForEach-Object{}

$obj=Import-Csv 'C:\Users\IT Admin\Desktop\contact list 19-20.csv' 
$obj[0]
$obj | ForEach-Object { echo "The name of the: " $_}
$x=5
switch ($x) {
    1 {"typed zero" }
    5 {"tyyped five"}
    Default {" data co"}
}