# powershell.exe -ExecutionPolicy RemoteSigned

$hashurl = "http://docs.saltstack.com/downloads/Salt-Minion-2015.5.2-x86-Setup.exe.md5"
$hashfile = "D:\Temp\Salt-Minion-2015.5.2-AMD64-Setup.exe.md5"
(New-Object System.Net.WebClient).DownloadFile($hashurl, $hashfile)
