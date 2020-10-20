#https://ironscripter.us/powershell-back-to-school-scripting-challenge/
function RightTriangle {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true,Position=0)]
        [int32]
        $a
        ,
        [Parameter(Mandatory = $true, Position = 1)]
        [int32]
        $b
    )
    $c=0
    $c = [math]::Sqrt(($a * $a) + ($b * $b))
    Write-Host 'The right triangle with sides A:'$a 'and B:' $b 'will have the following C side:' $c
}
Write-Host 'Give the lenght of side A and B to get the C side of a right triangle'
RightTriangle

function CircleArea {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int32]
        $diameter
    )
    $radius = $diameter / 2
    $Area = [math]::Pi *($radius * $radius)
    Write-Host 'The circle with diameter' $diameter 'has an Area of:' $Area
}
Write-Host 'Give the diameter of a circle to calculate its area'
CircleArea

function SphereVolume {
   [CmdletBinding()]
   param (
       [Parameter(Mandatory)]
       [int32]
       $Diameter4Volume
   )
    $volume = (4 / 3) * [math]::PI * [math]::Pow(($Diameter4Volume / 2),3)
    Write-Host 'The sphere with diameter' $Diameter4Volume 'has a Volume of:' $volume
}
Write-Host 'Give the diameter of a sphere to calculate its area'
SphereVolume

function CylinderVolume {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int32]
        $Diameter4Cylinder
        ,
        [Parameter(Mandatory)]
        [int32]
        $CylinderHeight
    )
    $CylinderVolume = [math]::Pi * ($Diameter4Cylinder / 2) * $CylinderHeight
    Write-Host 'The cylinder with diameter' $Diameter4Cylinder 'and height of' $CylinderHeight 'has a Volume of:' $CylinderVolume
}
CylinderVolume

function FactorialNum {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [int32]
        $Number
    )
    $result = 1
    for ($i = $Number - 1; $i -gt 1; $i--) {
        $result = $Number * $i
        $Finalresult += $result * $Number - 1
    }
    $Finalresult
   # Write-Host 'The factorial of'$Number 'is:' $Finalresult
}
FactorialNum