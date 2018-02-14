# kills processes in your list that are older than the time specified

# change the list below to reflect the process names you want to terminate
$rogueapps = @("Bulk Rename Utility", "iexplore")

# change the value below for how old the process should be in minutes
# eg a value of 1 is a process that is older than one minute, useful values may be 15
$rogueminutes = 15

foreach ($app in $rogueapps) {
        get-process $app | Where {$_.StartTime -lt (Get-Date).AddMinutes(-$rogueminutes) } |
stop-process -force
}
