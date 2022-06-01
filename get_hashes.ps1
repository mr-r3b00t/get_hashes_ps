$files = gci "C:\Users\tenet\downloads\" -Recurse -File
foreach($file in $files){

if (($file.Length/1MB) -le 100){

Get-FileHash $file.FullName -Algorithm SHA256
}
else
{
#write-host "File > 100MB - SKIPPING..." -ForegroundColor Red
}
}
