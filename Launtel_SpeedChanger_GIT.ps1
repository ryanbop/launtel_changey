#Script made by RyanBop
#Information here https://github.com/ryanbop/launtel_changey/wiki
$service_id = ""
$avc_id = "AVC"
$location_id = "LOC"
$psid = ""
$username = ""
$password = "" #something something insert ConvertTo-SecureString
#Logic
$params = @{id="login-form";username=$username;password=$password}
Invoke-WebRequest -Uri "https://residential.launtel.net.au/login" -Method Post -Body $params -WebSession $launtel
$change_params = @{psid="$($psid)";locid="$($location_id)";avcid="$($avc_id)";unpause=0;'btn-confirm-back-new-service'="confirm"}
Invoke-WebRequest -Uri "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)" -WebSession $launtel -Method POST -Body $change_params
Write-Host "WebRequest Sent, check the Launtel Portal https://residential.launtel.net.au/services"
