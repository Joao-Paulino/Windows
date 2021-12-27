Set-ExecutionPolicy Unrestricted
Get-AppxPackage *Microsoft.ScreenSketch* | remove-appxpackage
Set-ExecutionPolicy Restricted