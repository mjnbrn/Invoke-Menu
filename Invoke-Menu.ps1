function Invoke-Menu {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [array]$MenuOptions,
        [string]$MenuTitle = "Invoke-Menu: A Menu For Me"

    )
    $OldTitle = $host.ui.RawUI.WindowTitle
    $host.ui.RawUI.WindowTitle = "$MenuTitle"
    $MenuString = ""
    0..($MenuOptions.Length - 1) | ForEach-Object {
        if ($MenuOptions[$_] -match "^@{(.*)}$"){
            $MenuString += "($_) $($Matches[1])"
        }else{
            $MenuString += "($_) $($MenuOptions[$_])"}
    }

    $Answer = $MenuOptions[(Read-Host "Please enter the number of your selection: ")]
    $host.ui.RawUI.WindowTitle = $OldTitle
    return $Answer
}
