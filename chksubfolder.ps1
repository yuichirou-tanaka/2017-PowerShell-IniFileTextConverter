$path = "G:\TESTDIR" 
# CSVファイルを読み込んで、ハッシュに変換する
$files =  Get-ChildItem $path -Recurse -Name -include *.ini
foreach($file in $files){
    #write-host($file)
    write-host($path+"\"+$file)
} 
