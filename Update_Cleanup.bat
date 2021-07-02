rem Delete files in LCU folder after updates

del /s C:\Windows\servicing\LCU /f /q
rmdir C:\Windows\servicing\LCU /s /q

rem Do Windows Update Cleanup

Dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase