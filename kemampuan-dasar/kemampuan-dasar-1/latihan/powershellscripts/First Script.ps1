Write-Host "Hello, Guru99!"
Add-Content -Path 'D:\PERSONAL\coding\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\First Script.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
Clear-Content -Path 'D:\PERSONAL\coding\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\First Script.ps1' -Stream 'Zone.Identifier'
if (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{Write-Output 'Running as Administrator!'}
else
{Write-Output 'Running Limited!'}
Pause