# https://ironscripter.us/are-you-listening-to-me/
<#
the computer name
the local port and IP address
the remote port and IP address
the connection state
the owning process
when the connection was created.
If you are feeling motivated, add a property that shows the age of the connection
#>


#display
Get-NetTCPConnection -AppliedSetting Internet | Where-Object -property LocalAddress -notmatch "127.0.0.1|0.0.0.0|169.254." | Select-Object @{
    name = 'ComputerName';
    expression = {$env:COMPUTERNAME}
} , LocalAddress, LocalPort, RemoteAddress, RemotePort, State, OwningProcess, @{
    name='ProcessName';
    expression = { Get-Process -Id ($_.OwningProcess) | Select-Object -expand Name}
}, CreationTime | Format-Table


#Get-NetIPAddress -InterfaceAlias Ethernet 
#select-object Microsoft.Management.Infrastructure.CimInstance

#Other guy solution:
<#
(Get-NetTCPConnection -State Established, Listen | ? { $_.LocalAddress -notmatch ‘0.0.0.0|127.0.0.1|169.254.’ -and $_.LocalAddress -notmatch ‘:’ }) | `
    select @{ n = ‘ComputerName’; e = { $Env:Computername } }, LocalAddress, LocalPort, RemoteAddress, RemotePort, State, OwningProcess, CreationTime, `
@{ n = ‘ProcessAgeInMinutes’; e = { [int](New-TimeSpan -Start $(Get-Date $_.CreationTime) -End $(Get-Date) | select -expand TotalMinutes) } }, `
@{ n = ‘ProcessName’; e = { Get-Process -Id $($_.OwningProcess) | select -expand Name } }, @{ n = ‘ProcessOwner’; e = { (tasklist /FI “PID eq $($_.OwningProcess)” /V /FO CSV)[1].split(‘,|”‘)[19] } } | ft
#>