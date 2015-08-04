$md5 =  New-Object -TypeName System.Security.Cryptography.MD5CryptoServiceProvider
$file = "D:\Temp\Salt-Minion-2015.5.2-AMD64-Setup.exe"
$hash = [System.BitConverter]::ToString($md5.ComputeHash([System.IO.File]::ReadAllBytes($file)))