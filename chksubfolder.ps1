$path = "G:\TESTDIR" 
# CSV�t�@�C����ǂݍ���ŁA�n�b�V���ɕϊ�����
$files =  Get-ChildItem $path -Recurse -Name -include *.ini
foreach($file in $files){
    #write-host($file)
    write-host($path+"\"+$file)
} 
