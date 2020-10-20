# https://ironscripter.us/a-powershell-word-play-challenge/
# Give the sum of the integer value of each letter of the follow string of characters

$text = 'Iron Scripter'
$i=0
$sum = 0
while ($i -le $text.Length) {
    $sum += [char]$text[$i] -as [int]
    $i++
}
$sum

#Display the same string of characters using their proper integer values

$text2 = 'Iron Scripter'
$a = 0
[int32[]]$IntArray = 0
while ($a -le $text2.Length) {
    $IntArray += [char]$text2[$a] -as [int]
    $a++
}
foreach ($Int in $IntArray) {
    $BackToBack = [int]$Int -as [char]
    Write-Output $BackToBack
}