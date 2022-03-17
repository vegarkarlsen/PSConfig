# adding aliasfile to powreshell path
$pathToAliasFolder = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1"
$AddAliasesString = "# load aliases file" + "`n" + '$aliases = ' + '"' + $pathToAliasFolder + '"'

$checkForAliases = Get-Content $profile | select-string -pattern "load aliases" -context 0,2

# Add aliases path to profile if it is not already there
if (-not $checkForAliases) {
    Add-Content $profile $AddAliasesString
    Write-Output "Added paths to aliases.ps1 in $profile"
}

