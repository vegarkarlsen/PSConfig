



$pathToAliasFolder = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1"
$aliasStr = "# load alias file" + "`n" + '$aliases = ' + $pathToAliasFolder + "`n" + '& $aliases -Scope Global' 


#Add-Content C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\test.txt $aliasStr

