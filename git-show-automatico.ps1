git fsck --lost-found

$files = Get-ChildItem -Path "C:\Users\Juninho\Desktop\Programação\Flappy Bird\flappy-bird\.git\lost-found\other"
$files | ForEach-Object {New-Item -Path "C:\Users\Juninho\Desktop\Programação\Flappy Bird\flappy-bird\.git\lost-found\other\arquivos" -Name "$($_.Name).cs" -ItemType "file"}
$files | ForEach-Object {git show "$($_.Name)" > "C:\Users\Juninho\Desktop\Programação\Flappy Bird\flappy-bird\.git\lost-found\other\arquivos\$($_.Name).cs"}
