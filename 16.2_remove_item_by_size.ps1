function Get-Files{
    [CmdletBinding()]
    param (
        [string]$path = '.\'
    )
    
    begin {
        
    }
    
    process {
        Get-ChildItem $path -Recurse | Sort-Object Length -Descending  | where {$_.Length -lt .0.0005KB} | Remove-Item -Force-Recurse 
    }
    
    end {
        
    }
} 
 
 
 
 
