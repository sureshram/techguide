# http://ss64.com/ps/syntax-run.html
# http://ss64.com/ps/syntax-run.html

function Get-Checksum
{
    Param (
        [string]$File=$(throw("You must specify a filename to get the checksum of.")),
        [ValidateSet("sha1","md5")]
        [string]$Algorithm="sha1"
    )

    $fs = new-object System.IO.FileStream $File, “Open”, “Read”, “Read”;
    $algo = [type]"System.Security.Cryptography.$Algorithm"
    $crypto = $algo::Create()
    $hash = [BitConverter]::ToString($crypto.ComputeHash($fs)).Replace("-", "")
    $fs.Close()
    $hash
}