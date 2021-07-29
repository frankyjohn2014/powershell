param(
[string]$a
)
$b = $a.split('.')
Write-Host ($b -join "-")