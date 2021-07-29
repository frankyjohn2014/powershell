function Remove_files{
    [CmdletBinding()]
    param (
        [string]$path = '.\'
    )
    
    begin {
        
    }
    
    process {
        Get-ChildItem $path -Recurse | Sort-Object Length -Descending  | where {$_.Length -gt 500000} | Remove-Item -Force -Recurse 
    }
    
    end {
        
    }
} 
 
 
 
 
