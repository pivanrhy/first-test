$Drivers = pnputil -e | Select-String "Published name"
ForEach($Driver in $Drivers){
    $Driver = $Driver.ToString().Replace("Published name :", "").Trim()
    pnputil -d $Driver
}
