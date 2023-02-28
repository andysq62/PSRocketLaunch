Function Get-RLPad {
    [CmdletBinding(DefaultParameterSetName = 'ByName')]
    Param(
        [Parameter(ValueFromPipeline,
            ParameterSetName = 'ByName')]
        [String]$Name,
        [Parameter(ParameterSetName = 'ByName')]
        [String]$CountryCode,
        [Parameter(ParameterSetName = 'ByName')]
        [String]$Page = '1',
        [Parameter(ValueFromPipelineByPropertyName,
            ParameterSetName = 'ByID')]
        [String[]]$ID
    )
    Begin {
        $Entity = 'pads'
        $Query = "page=$($Page)"
    }
    Process {

        If ($PSCmdlet.ParameterSetName -eq 'ByID') {
            $ID | ForEach-Object {
                $Response = Invoke-RLMethod -Entity $Entity -Query "id=$($_)"
                $Response | Write-Output
            }
        }
        elseif ($PSCmdlet.ParameterSetName -eq 'ByName') {
            Switch ($PSBoundParameters.Keys) {
                'Name' { $Query = "$($Query)&name=$($Name)" }
                'CountryCode' { $Query = "$($Query)&country_code=$($CountryCode)" }
            }

            $Response = Invoke-RLMethod -Entity $Entity -Query "$($Query)"
            $Response | Write-Output
        }
    } # End Process Block
}