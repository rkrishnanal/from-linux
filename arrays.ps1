$number=1..12

$number.ForEach({$_ * 4})

$name=@("RADHA","SIVA")

$name.ForEach("tolower")
$name.Where({$_.length})
$running, $stopped=(Get-Service).Where({$_.Status -eq "running"},'split')