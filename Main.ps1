# Load configuration variables, hash at the beggining is used to enable Powerhell comment line
. "$PSScriptRoot/Config/Variables.ps1"

# Load common functions
. "$PSScriptRoot/Functions/CommonFunctions.ps1"

# Execute function
Get-EnvironmentInfo $Environment