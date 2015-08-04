#Exe
$outfile = "D:\Temp\Salt-Minion-2015.5.2-AMD64-Setup.exe"
$url = "http://http://172.26.3.233/clm/automation/saltstack/Salt-Minion-2015.5.2-AMD64-Setup.exe"
(New-Object System.Net.WebClient).DownloadFile($url, $outfile)

#md5
$hashurl = "http://172.26.3.233/clm/automation/saltstack/Salt-Minion-2015.5.2-AMD64-Setup.exe.md5"
$hashfile = "D:\Temp\Salt-Minion-2015.5.2-AMD64-Setup.exe.md5"
(New-Object System.Net.WebClient).DownloadFile($hashurl, $hashfile)
