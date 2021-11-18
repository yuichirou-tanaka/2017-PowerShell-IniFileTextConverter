$path = "G:\TESTDIR" 
$ip_array =@("AAA","BBB")
$ip_to_array =@("CCC","DDD")


function GetReplaceFile($file){
    $data= Get-content $file
    for ($i = 0; $i -lt 2; $i++) {
        # write-host($ip_array[$i])
        # write-host($ip_to_array[$i])
        $lnum = $(Select-String -path $file -pattern $ip_array[$i] | foreach { $_.ToString().split(":")[2]} )
        #write-host($lnum)
        foreach($lnum1 in $lnum){
            #write-host($lnum1)
            $data[$lnum1-1] =  $data[$lnum1-1] -replace $ip_array[$i],$ip_to_array[$i]
        }
        #write-host($data[$lnum])
    }
    $data | Out-File $file -encoding default
}


# CSVファイルを読み込んで、ハッシュに変換する
$files =  Get-ChildItem $path -Recurse -Name -include *.ini
foreach($file in $files){
    #write-host($file)
    GetReplaceFile($path+"\"+$file)
} 


