

$file = ".\test.ini"

$data= Get-content $file

for ($i = 0; $i -lt 1; $i++) {
    write-host($ip_array[$i])
    write-host($ip_to_array[$i])
    # $st1 = Select-String -path $file -Pattern $ip_array[$i]
    # write-host($st1)
    # $st1_s = $st1.ToString()
    # write-host($st1_s)
    # $st1_sa = $st1_s.split(":")
    # write-host($st1_sa)
    # $st11 = $st1_sa[2]
    # write-host($st11)
    $lnum = $(Select-String -path $file -pattern $ip_array[$i] | foreach { $_.ToString().split(":")[2]} )
    write-host($lnum )
    #$data[$lnum] = $ip_to_array[$i]
    $data[$lnum-1] =  $data[$lnum-1] -replace $ip_array[$i],$ip_to_array[$i]
    #write-host($data[$lnum])
}


$data | Out-File $file -encoding default
