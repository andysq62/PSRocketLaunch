"Script root is: $($PSScriptRoot)" | Write-Host
$ModulePath = "$PSScriptRoot\Output\PSRocketLaunch"
Get-ChildItem -Path $ModulePath

#Publish-Module -Path $ModulePath -NuGetApiKey $Env:PSGAPIKEY