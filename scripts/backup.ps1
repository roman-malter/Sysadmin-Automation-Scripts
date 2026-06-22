$Target = "C:\inetpub\wwwroot"
$Dest = "C:\Backup"
$Time = Get-Date -Format "yyyyMMdd-HHmmss"

If (!(Test-Path $Dest)) { New-Item -ItemType Directory -Path $Dest }
Compress-Archive -Path $Target -DestinationPath "$Dest\backup-$Time.zip"
Write-Output "Backup completed successfully at $Time"
