function getIP {
    (Get-NetIPAddress).IPv4Address | Select-String "192*"
}
function getPSVersion {
    $HOST.Version.Major
}
function getDate {
    date
}

$IP = getIP
$date = getDate
$USER = $env:USERNAME
$PSVersion = getPSVersion
$BODY = "The IP Address of this machine is: $IP. The user is $USER. The PowerShell Version is $PSVersion. Today's date is $date"
##This machine's IP is ..., user is $USER, Powershell version, today's date
Send-MailMessage -To "schloede@mail.uc.edu" -From "david.schloemer@outlook.com" -Subject "IT3038C" -Body $BODY -smtpserver smtp-mail.outlook.com -port 587 -UseSSL -Credential (Get-Credential)