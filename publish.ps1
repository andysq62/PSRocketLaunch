$ModulePath = "$PSScriptRoot\Output\PSRocketLaunch"
"Module Path is: $($ModulePath)" | Write-Host

Publish-Module -Path $ModulePath -NuGetApiKey $Env:PSGAPIKEY
