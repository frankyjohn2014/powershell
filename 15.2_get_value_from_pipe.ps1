function Get-ValueFromPipe {
    [CmdletBinding()]
    Param(
        [switch]$yellow,
        [Parameter(ValueFromPipeline)]
        $Value

    )

    process {
        if ($yellow) {
            Write-Host "Value from pipe:" $Value -ForegroundColor yellow
        } else {
            Write-Host "Value from pipe:" $Value -ForegroundColor red
        }
        
    }
}

