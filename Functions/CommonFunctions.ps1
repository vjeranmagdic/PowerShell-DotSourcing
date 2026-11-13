function Get-StandardPrefix {
    return 'DotSourcing'
}

function Get-EnvironmentInfo {
    param (
        [string]$Environment
    )

	$Prefix = Get-StandardPrefix

    Write-Output "Environment: $Prefix$Environment"
}

Write-Host "Common functions are loaded" -ForegroundColor Green