# This script is for testing PSScriptAnalyzer
# It contains intentional errors and warnings.

# Warning: Use of a common alias
$items = gc -Path ".\"

# Warning: Use of Write-Host
Write-Host "Getting items: $items"

# Error: Function name should use singular noun (Get-Thing, not Get-Things)
function Get-Things {
    param(
        # Error: Parameter $Path is not used in the function body
        [string]$Path
    )
    
    $things = "Thing 1", "Thing 2"
    return $things
}

# Error: Avoid using plain-text passwords
$password = "MySecurePassword123"

# Call the function
Get-Things -Path ".\"
