function Get-Files{
    [CmdletBinding()]
    param (
        [string]$path = '.\'
    )
    
    begin {
        
    }
    
    process {
        Get-ChildItem $path -Recurse | Sort-Object Length -Descending
    }
    
    end {
        
    }
}