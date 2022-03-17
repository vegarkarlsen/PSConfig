# Custom aliases
Set-Alias ntb C:\Users\$env:USERNAM\Documents\WindowsPowerShell\Scripts\ntnu_auto.ps1 -Scope global
Set-Alias touch new-item -Scope global
Set-Alias activate .\venv\Scripts\activate.ps1 -Scope global
Set-Alias which where.exe -Scope global
Set-Alias sudo gsudo -Scope global
Set-Alias grep Select-String -Scope global


function global:l { Get-ChildItem $args -Exclude .* -n}
function global:ll { Get-ChildItem $args -n -Hidden}  
function global:home {Set-Location "C:\Users\$env:USERNAME\"} 
