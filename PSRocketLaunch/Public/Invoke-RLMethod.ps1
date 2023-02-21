Function Invoke-RLMethod
{
[CmdletBinding()]
param(
[String]$Entity,
[String]$query
)

$APIKey = 'dcb79cef-ef1f-4456-b4c0-00811105526a'
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