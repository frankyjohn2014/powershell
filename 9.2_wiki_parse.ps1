$text = (Get-Content -Path .\elon.txt)
$split_text = $text.Split()
$count_word = ($split_text | ForEach-Object -Begin { $wordCounts=@{} } -Process { $wordCounts.$_++ } -End { $wordCounts.GetEnumerator() | Sort-Object -Property Value })

$number = 0
foreach($count in $count_word[-1..-10]) {
    $number = $number + 1
    [string]$number+ ' ' + $count.name + ' ' + $count.value
}
