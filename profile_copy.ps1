
# this is only quicfix
Clear-Host

# custom functions
function touch_screen {
    param (
        $value
    )
    Get-PnpDevice -FriendlyName "*HID-compliant touch screen*"
    if ($value -like "enable") {
        Get-PnpDevice -FriendlyName "*HID-compliant touch screen*" | Enable-PnpDevice
        Write-Output ("enabled")

    }if ($value -like "disable") {
        Get-PnpDevice -FriendlyName "*HID-compliant touch screen*" | Disable-PnpDevice
        Write-Output ("disabled")
    } 
}


# start oh-my-posh
#Import-Module posh-git
#Import-Module oh-my-posh
# current theme
Set-PoshPrompt -Theme iterm2

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# diable (venv) on virtualenv activation
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# cool greeting
# winfetch

# load aliases file
$aliases = "C:\Users\vegar\Documents\WindowsPowerShell\PSConfig\Aliases.ps1"
& $aliases

# add PSConfig path
$PSConfig = "C:\Users\vegar\Documents\WindowsPowerShell\PSConfig\"

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

