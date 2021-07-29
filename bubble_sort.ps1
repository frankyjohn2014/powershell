function Sort-Bubble {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [array]$Array,

        [switch]$Descending
    )   
    $n = $Array.Count
    $order = if ($Descending) { 'Descending' } else { 'Ascending' }
    Write-Verbose "Start sorting $n elements in $order order"
    for($i = 1; $i -lt $n; $i++) {
        for($j = 0; $j -lt ($n - $i); $j++) {
            Write-Verbose "Comparing value $($Array[$j]) against value $($Array[$j + 1])"
            if ($Descending) {
                if ($Array[$j] -lt $Array[$j+1]) {
                    Write-Verbose "Swapping values$($Array[$j]) <--> $($Array[$j + 1])"
                    # in PowerShel, you can swap like this:
                    $Array[$j], $Array[$j + 1] = $Array[$j + 1], $Array[$j]
                    # so you don't need a $temp variable
                    # $temp = $Array[$j]
                    # $Array[$j] = $Array[$j + 1]
                    # $Array[$j + 1] = $temp
                }
            }
            else {
                # default Ascending sort order
                if ($Array[$j] -gt $Array[$j + 1]) {
                    Write-Verbose "Swapping values $($Array[$j]) <--> $($Array[$j + 1])"
                    $Array[$j], $Array[$j + 1] = $Array[$j + 1], $Array[$j]
                }                
            }
        }
    }
    # the comma embeds the array in a 1-element array
    # this prevents that arrays with just one item get 'unrolled' by
    # PowerShell and makes sure the returned value is an array.
    return ,$Array  
}

$a = 10,50,40,20,70,60,30
$sorted = Sort-Bubble $a -Verbose
Write-Host Sorted Array:
$sorted