Function Invoke-RLMethod
{
[CmdletBinding()]
param(
[String]$Entity,
[String]$query
)
If($ENV:RocketLaunchAPIKey) {
$APIKey = $ENV:RocketLaunchAPIKey
} else {
Throw "API key not present"
}

$ApiCall = @{
URI = 'https://fdo.rocketlaunch.live/json/'
Header = @{
Authorization = "Bearer $($APIKey)"
}
}

If($query) {
Try {
$ApiCall.Uri += "$($Entity)?$($query)"
"API call $($apicall.URI)" | Write-Verbose
$Response = Invoke-RestMethod @apicall
} Catch {
Throw "Error invoking REST call"
}
}
$Response.Result | Write-Output
}