function Write-ColoredMessage {
    param (
        [switch]$Red,
        [string]$text
    )

    if ($Red) {
        Write-Host $text -ForegroundColor red
    } else {
        Write-Host $text
    }
}