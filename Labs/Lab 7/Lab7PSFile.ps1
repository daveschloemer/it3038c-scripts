$selection = Read-Host "What format do you want to view the tempature in? [1] imperal [2] kelvin [3] metric "
$city = Read-Host "What City Are you in? "

if ($selection -match 1) {
Write-WeatherCurrent -City $city -ApiKey de6c354ae8e7a4f3cb77b4d92aff0e96 -Units imperial -Inline:$Inline
}
if ($selection -match 2) {
Write-WeatherCurrent -City $city -ApiKey de6c354ae8e7a4f3cb77b4d92aff0e96 -Units kelvin -Inline:$Inline
}
if ($selection -match 3){
Write-WeatherCurrent -City $city -ApiKey de6c354ae8e7a4f3cb77b4d92aff0e96 -Units metric -Inline:$Inline
}