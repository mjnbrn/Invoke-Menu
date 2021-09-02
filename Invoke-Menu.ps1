function Invoke-Menu {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [array]$MenuOptions,
        [string]$MenuTitle = "Invoke-Menu: A Menu For Me"

    )
    
    $OldTitle = $host.ui.RawUI.WindowTitle
    $host.ui.RawUI.WindowTitle = "$MenuTitle"
    $MenuString = ""
    0..($MenuOptions.Length - 1) | ForEach-Object {
        if ($MenuOptions[$_] -match "^@{(.*)}$") {
            $MenuString += "($_) $($Matches[1])`n"
        }
        else {
            $MenuString += "($_) $($MenuOptions[$_])`n"
        }
    }
    # Write-Host $MenuString

    $Answer = $MenuOptions[(Read-Host $MenuString "~~~`nPlease make a selection: ")]
    $host.ui.RawUI.WindowTitle = $OldTitle
    return $Answer
}
