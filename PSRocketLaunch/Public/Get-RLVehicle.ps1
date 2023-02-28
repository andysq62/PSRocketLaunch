Function Get-RLVehicle {
    [CmdletBinding(DefaultParameterSetName = 'ByName')]
    Param(
        [Parameter(ValueFromPipeline,
            ParameterSetName = 'ByName')]
        [String]$Name,
        [Parameter(ValueFromPipelineByPropertyName,
            ParameterSetName = 'ByID')]
        [String[]]$ID,
        [Parameter(ParameterSetName = 'ByName')]
        [String]$Page = '1'
    )
    Begin {
        $Entity = 'vehicles'
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

            If ($PSBoundParameters.ContainsKey('Name')) {
                $Query = "$($Query)&name=$($Name)"
            }

            $Response = Invoke-RLMethod -Entity $Entity -Query "$($Query)"
            $Response | Write-Output

        }

    } # End Process Block
}