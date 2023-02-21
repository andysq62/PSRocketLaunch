Function Get-RLMission {
    [CmdletBinding(DefaultParameterSetName = 'ByID')]
    Param(
        [Parameter(ValueFromPipeline,
            ParameterSetName = 'ByName')]
        [String[]]$Name,
        [Parameter(ValueFromPipelineByPropertyName,
            ParameterSetName = 'ByID')]
        [String[]]$ID,
        [String]$Page = '1'
    )
    Begin {
        $Entity = 'missions'
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
            $Name | ForEach-Object {
                $Response = Invoke-RLMethod -Entity $Entity -Query "$($Query)&name=$($_)"
                $Response | Write-Output
            }

        }
    } # End Process Block
}