# harvester
A small power shell script to kill older processes in Windows

## Problem
You have a process that can spawn other processes, but the parent process may not know that the child process did not complete and you end up with a lot of child processes eating away at resources.

## Ideal Solution
Fix the parent process, but if that is not possible...

## Use Harvester
It will let you kill of the child processes by age.

## Example
`controller.exe` starts `iexplore` to render HTML documents.  Sometimes `iexplore` doesn't finish or hangs up on javascript controls and it stays around.  Using your favorite Windows scheduling tool, you can use harvester.ps1 to kill off those processes.  It takes no arguments currently, you modify the source to list the processes you would like to kill.
