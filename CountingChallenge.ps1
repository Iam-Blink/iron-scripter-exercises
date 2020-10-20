#Sum all the even numbers between 1 and 100 using 3 different approaches URL: https://ironscripter.us/a-powershell-counting-challenge/
$sum1 = 0
$sum2 = 0
$sum3 = 0

#Using a foreach
$numbers = 1..100
foreach ($_ in $numbers) {

    if (($_ % 2) -eq 0 ) {
        $sum1 += $_
    }
}
$sum1

#Using a while 
$number = 1
while ($number -le 100) {
    if (($number % 2) -eq 0) {
        $sum2 += $number
    }
    $number++
}
$sum2

#Using a for
for ($i = 1; $i -le 100; $i++) {
    if ($i % 2 -eq 0) {
        $sum3 += $i
    }
}
$sum3