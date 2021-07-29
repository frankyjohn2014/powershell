param(
[string]$input_text
)
$split_text = $input_text.split(' .:\/@"()+%$*_-=!,?')
foreach($str in $split_text){
    if($str -match '[a-zA-Z]' -AND $str.Length -gt 6 ) {
        Write-Host $str
    }
}
