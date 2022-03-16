

# adding aliasfile to powreshell path
$pathToAliasFolder = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1"
$aliasStr = "# load aliases file" + "`n" + '$aliases = ' + $pathToAliasFolder + "`n" + '& $aliases' 

$test = Get-Content C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\test.txt | select-string -pattern "load aliases" -context 0,2

if (-not $test) {
    Add-Content C:\Users\vegar\Documents\WindowsPowerShell\PSConfig\test.txt $aliasStr
    Write-Output "Added paths to aliases.ps1 in $profile"
}








