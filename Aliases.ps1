# Custom aliases
Set-Alias ntb C:\Users\$env:USERNAME\Documents\WindowsPowerShell\Scripts\ntnu_auto.ps1 -Scope global
Set-Alias touch new-item -Scope global
Set-Alias activate .\venv\Scripts\activate.ps1 -Scope global
Set-Alias which where.exe -Scope global
Set-Alias sudo gsudo -Scope global
Set-Alias grep Select-String -Scope global
Set-Alias zip Compress-Archive -Scope global
set-alias unzip Expand-Archive -Scope global
Set-Alias e explorer.exe -Scope global


# nano to this file
function global:malias {nano C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1}


function global:l { Get-ChildItem $args -Exclude .* -n}
function global:ll { Get-ChildItem $args -n -Hidden}  

function global:home {Set-Location "C:\Users\$env:USERNAME\"} 

