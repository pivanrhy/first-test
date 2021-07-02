get-process | Group-Object -Property ProcessName | sort PeakPagedMemorySize64 -desc | Select -First 10 | Format-Table Name, @{n='Commited Memory (GB)';e={'{0:N2}' -f (($_.Group | Measure-Object PeakPagedMemorySize64 -Sum).Sum / 1GB)};a='right'} -AutoSize

pause