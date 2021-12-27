Set-ExecutionPolicy Unrestricted
GGet-AppXPackage *Microsoft.ScreenSketch* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
Set-ExecutionPolicy Restricted