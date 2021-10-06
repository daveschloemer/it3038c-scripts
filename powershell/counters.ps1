$Machines = 'schloede-win'
Clear-Content($LogFile)

$LogFile = "C:\logs\cpu.log"
foreach ($Machine in $Machines)
{
    $RCounters = Get-Counter -ListSet * -ComputerName $Machine
    "There are {0} counters on {1}" -f $RCounters.count, ($Machine)

    $pt = (Get-Counter -Counter "\Processor(_Total)\% Processor Time" -SampleInterval 1 -MaxSamples 5).CounterSamples.CookedValue
    $sample = 1
    foreach ($p in $pt) {
        $date = Get-Date -Format g
        "Sample {0}: CPU is at {1}% on {2}" -f $sample, [int]$p, $Machine, $date | Out-File -Append $LogFile
        $sample++
        }
}