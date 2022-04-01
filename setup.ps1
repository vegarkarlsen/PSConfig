# adding aliasfile to powreshell path
$pathToAliasFolder = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1"
$AddAliasesString = "# load aliases file" + "`n" + '$aliases = ' + '"' + $pathToAliasFolder + '"' + "`n" + '& $aliases'

$checkForAliases = Get-Content $profile | select-string -pattern "load aliases" -context 0,2

# Add aliases path to profile if it is not already there
if (-not $checkForAliases) {
    Add-Content $profile $AddAliasesString
    Write-Output "Added paths to aliases.ps1 in $profile"
}

# adding PsConfig path as a variable
$pathToPsConfig = "C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\"
$AddPsConfigString = "# add PSConfig path" + "`n" + '$PSConfig = ' + '"' + $pathToPsConfig + '"'

$checkForPsConfig = Get-Content $profile | select-string -pattern "add PSConfig" -context 0,2

if (-not $checkForPsConfig) {
    Add-Content $profile $AddPsConfigString
    Write-Output "Added paths to PSConfig in $profile"
}

