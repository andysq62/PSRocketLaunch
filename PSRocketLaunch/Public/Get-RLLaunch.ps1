Function Get-RLLaunch {
    [CmdletBinding(DefaultParameterSetName = 'BySearch')]
    Param(
        [Parameter(ParameterSetName = 'BySearch')]
        [String]$Search,
        [DateTime]$AfterDate,
        [DateTime]$BeforeDate,
        [Int32]$LocationID,
        [Int32]$PadID,
        [Int32]$ProviderID,
        [Int32]$VehicleID,
        [String]$Page = '1',
        [Parameter(ParameterSetName = 'ByID')]
        [Int32[]]$ID
    )
    $Entity = 'launches'
    $Query = "page=$($page)"


    If ($PSCmdlet.ParameterSetName -eq 'ByID') {
        $ID | ForEach-Object {
            $Response = Invoke-RLMethod -Entity $Entity -Query "id=$($_)"
            $Response | Write-Output
        }
    }
    elseif ($PSCmdlet.ParameterSetName -eq 'BySearch') {

        Switch ($PSBoundParameters.Keys) {
            'search' {
                $Query = "$($Query)&search=$($search)"
            }
            'AfterDate' {
                $ADate = Get-Date -Date $AfterDate -Format 'yyyy-MM-dd'
                $Query = "$($Query)&after_date=$($ADate)"
            }
            'BeforeDate' {
                $BDate = Get-Date -Date $BeforeDate -Format 'yyyy-MM-dd'
                $Query = "$($Query)&before_date=$($BDate)"
            }
            'LocationID' {
                $Query = "$($Query)&location_id=$($LocationID)"
            }
            'PadID' {
                $Query = "$($Query)&pad_id=$($PadID)"
            }
            'ProviderID' {
                $Query = "$($Query)&provider_id=$($ProviderID)"
            }
            'VehicleID' {
                $Query = "$($Query)&vehicle_id=$($VehicleID)"
            }
        }
        "Query: $($Query)" | Write-Verbose
        $Response = Invoke-RLMethod -Entity $Entity -Query "$($Query)"
        $Response | Write-Output
    }


}