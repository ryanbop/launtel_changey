#Script made by ryanbop

$service_id = ""
$avc_id = ""
$location_id = ""

#Launtel Creds
$username = ""
$password = "" #something something insert ConvertTo-SecureString

#Changes Speed if Friday
if(((Get-Date).DayOfWeek) -eq 'Friday') {
    $psid = "" <#Change Me#>

    $params = @{id="login-form";username=$username;password=$password}
    Invoke-WebRequest -Uri "https://residential.launtel.net.au/login" -Method Post -Body $params -WebSession $launtel
    Write-Host "Connected"
    $change_params = @{psid="$($psid)";locid="$($location_id)";avcid="$($avc_id)";unpause=0;'btn-confirm-back-new-service'="confirm"}
    Invoke-WebRequest -Uri "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)" -WebSession $launtel -Method POST -Body $change_params
    Write-Host "WebRequest Sent, check "
}
#Changes Speed if Monday
elseif (((Get-Date).DayOfWeek) -eq 'Sunday') {
    $psid = "" <#Change Me#>

    $params = @{id="login-form";username=$username;password=$password}
    Invoke-WebRequest -Uri "https://residential.launtel.net.au/login" -Method Post -Body $params -WebSession $launtel
    Write-Host "Connected"
    $change_params = @{psid="$($psid)";locid="$($location_id)";avcid="$($avc_id)";unpause=0;'btn-confirm-back-new-service'="confirm"}
    Invoke-WebRequest -Uri "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)" -WebSession $launtel -Method POST -Body $change_params
    Write-Host "WebRequest Sent, check "
}
