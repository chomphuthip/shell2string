$RawBytes = [System.IO.File]::ReadAllBytes((Resolve-Path $args[0]).ToString())
$MACStyle = [BitConverter]::ToString($RawBytes)
$Cstyle = '\x' + $MACStyle.replace('-', '\x')
Write-Host $Cstyle
