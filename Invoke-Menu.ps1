function Invoke-Menu {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [array]$MenuOptions,
        [string]$MenuTitle

    )
    $OldTitle = $host.ui.RawUI.WindowTitle
    $host.ui.RawUI.WindowTitle = "$MenuTitle"
    0..($MenuOptions.Length - 1) | ForEach-Object {
        if ($MenuOptions[$_] -match "^@{(.*)}$"){
            Write-Output "($_) $($Matches[1])"
        }else{
        Write-Output "($_) $($MenuOptions[$_])"}
    }

    $MenuOptions[(Read-Host "Please enter the number of your selection: ")]
    $host.ui.RawUI.WindowTitle = $OldTitle
}
