# -- Custom aliases -- 

# General
Set-Alias touch new-item -Scope global
Set-Alias activate .\venv\Scripts\activate.ps1 -Scope global
Set-Alias which where.exe -Scope global
Set-Alias sudo gsudo -Scope global
Set-Alias grep Select-String -Scope global
Set-Alias zip Compress-Archive -Scope global
set-Alias unzip Expand-Archive -Scope global
Set-Alias e explorer.exe -Scope global


# Qucik acsess to config files
function global:vimconfig { vim C:\tools\vim\_vimrc }
function global:malias { vim C:\Users\$env:USERNAME\Documents\WindowsPowerShell\PSConfig\Aliases.ps1}


# Shutdown
function global:poweroff { shutdown /s }
function global:reboot { shutdown /r }


# ls aliases
function global:l { Get-ChildItem $args -Exclude .* -n}
function global:ll { Get-ChildItem $args -n -Hidden}  

function global:home {Set-Location "C:\Users\$env:USERNAME\"} 


