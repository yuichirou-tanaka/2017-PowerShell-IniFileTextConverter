$filepath = ".\config.csv"

# CSVファイルを読み込んで、ハッシュに変換する
$configs = Import-Csv $filepath
write-host($configs)

