$drivers = pnputil -e | Select-String "Published name"
foreach($driver in $drivers){
    $driver = $driver.toString().replace("Published name :", "").trim()
    pnputil -d $driver
}