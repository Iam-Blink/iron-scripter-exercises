# You should write a function to convert a Fahrenheit temperate to Celsius and a second function to do the opposite.
# https://ironscripter.us/a-beginner-powershell-function-challenge/

function ConvertTo-Celsius {
    param (
        [Parameter(Mandatory=$true)]
        [int32]
        $FahrTemp
    )

    $result = ($FahrTemp - 32) * 5 / 9
    Write-Host $FahrTemp 'degrees Fahrenheit is equal to' $result 'degrees Celsius'
}

function ConvertTo-Fahrenheit {
    param (
        [Parameter(Mandatory = $true)]
        [int32]
        $CelsTemp
    )

    $result1 = ($CelsTemp + 32) * 5 / 9
    Write-Host $CelsTemp 'degrees Celsius is equal to' $result1 'degrees Fahrenheit'
}

ConvertTo-Celsius 100

ConvertTo-Fahrenheit 37