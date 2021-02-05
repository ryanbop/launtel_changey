#Script made by ryanbop

$service_id = ""
$avc_id = ""
$location_id = ""

#Launtel Creds
$username = ""
$password = "" #something something insert ConvertTo-SecureString

#Changes Speed if Friday
if(((Get-Date).Day) -eq 5) {
    $psid = ""

    $params = @{id="login-form";username=$username;password=$password}
    $log = Invoke-WebRequest -Uri "https://residential.launtel.net.au/login" -Method Post -Body $params -WebSession $launtel
    $log
    Add-Content -Path "C:\Users\$($env:USERNAME)\Downloads\login_$(Get-Date -Format hhmm_ddMM).log" -value $log
    Write-Host "Connected"
    $change_params = @{psid="$($psid)";locid="$($location_id)";avcid="$($avc_id)";unpause=0;'btn-confirm-back-new-service'="confirm"}
    $ok = Invoke-WebRequest -Uri "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)" -WebSession $launtel -Method POST -Body $change_params
    $ok
    Add-Content -Path "C:\Users\$($env:USERNAME)\Downloads\update_$(Get-Date -Format hhmm_ddMM).log" -Value $ok
    Write-Host "WebRequest Sent, check "

    $ok = ""
    $log = ""
}
#Changes Speed if Monday
elseif (((Get-Date).Day) -eq 7) {
    $psid = ""

    $params = @{id="login-form";username=$username;password=$password}
    $log = Invoke-WebRequest -Uri "https://residential.launtel.net.au/login" -Method Post -Body $params -WebSession $launtel
    $log
    Add-Content -Path "C:\Users\$($env:USERNAME)\Downloads\login_$(Get-Date -Format hhmm_ddMM).log" -value $log
    Write-Host "Connected"
    $change_params = @{psid="$($psid)";locid="$($location_id)";avcid="$($avc_id)";unpause=0;'btn-confirm-back-new-service'="confirm"}
    $ok = Invoke-WebRequest -Uri "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)" -WebSession $launtel -Method POST -Body $change_params
    $ok
    Add-Content -Path "C:\Users\$($env:USERNAME)\Downloads\update_$(Get-Date -Format hhmm_ddMM).log" -Value $ok
    Write-Host "WebRequest Sent, check "

    $ok = ""
    $log = ""
}
