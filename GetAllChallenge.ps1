# https://ironscripter.us/powershell-beginners-have-to-start-somewhere/


Get-ChildItem -Recurse -File -Path 'C:\Riot Games\League of Legends\Game' |  Measure-Object -Property Length -Sum -Average | Select-Object @{
    name='Number of files';
    expression= { Count }
}

#Incompleted



<# Internet Solution 
$files = gci -Recurse -File
$files | measure -Property length -Sum -Average | select @{n = 'ComputerName'; e = { $env:COMPUTERNAME } }, Count, Sum, Average, @{n = 'Date'; e = { Get-Date}}
#>

<# 
Answer: 
ComputerName : DESKTOP-HQ51IB5
Count        : 5
Sum          : 3741
Average      : 748.2
Date         : 03-Sep-20 9:50:51 PM
#>