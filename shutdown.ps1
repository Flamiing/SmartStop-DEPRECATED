# Developed by: https://github.com/ZumoDeZumos
# Basic Poweshell Script to turn off WSL and all the programs using it

# IMPORTANT:
# This script will close your desired IDE and Linux Distribution
# It will close Windows Terminal if set to 'true' in the config file
# For more info please visit: https://github.com/ZumoDeZumos/SmartStop

# Gets the settings from the conig file
Foreach ($i in $(Get-Content settings.conf))
{
    Set-Variable -Name $i.split("=")[0] -Value $i.split("=",2)[1]
}

# Checks for open processes and saves it to a variable
$IDE = Get-Process $EDITOR -ErrorAction SilentlyContinue
$windowsTerminal = Get-Process windowsterminal -ErrorAction SilentlyContinue
$openConsole = Get-Process openconsole -ErrorAction SilentlyContinue
$linuxsys = Get-Process $DISTRO -ErrorAction SilentlyContinue

# OPTIONAL:
# Checks if Windows Terminal is open and closes it
if ([bool]::Parse($WINTERMINAL))
{
    $windowsTerminal | Stop-Process -Force
    $openConsole | Stop-Process -Force
}

# Removes variables after use
Remove-Variable windowsTerminal
Remove-Variable openConsole
Remove-Variable WINTERMINAL

# Checks if IDE is open and closes it
if ($IDE)
{
    $IDE | Stop-Process -Force
}

# Removes variables after use
Remove-Variable IDE
Remove-Variable EDITOR


# DO NOT CHANGE!
# Checks if the linux distro app is open and closes it
if ($linuxsys)
{
    $linuxsys | Stop-Process -Force
}

# Removes variables after use
Remove-Variable linuxsys
Remove-Variable DISTRO

# After all the apps using WSL are closed it turns it off and exits
wsl --shutdown
exit