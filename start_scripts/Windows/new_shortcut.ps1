# ===========================
#  Author: Connor Bowyer
#  Date: 2/17/2022
#  Description:
#
#  This script will create a
# shortcut with a custom
# loaded icon.
# ===========================
$userInstallLocation = $args[0]
$shortcutPath = "C:\Users\$env:UserName\Desktop\Binance Trade Bot.lnk"
$iconPath = "$userInstallLocation\binance-trade-bot\start_scripts\robot_icon.ico"
$targetPath = "$userInstallLocation\binance-trade-bot\start_scripts\Windows\start_script_WINDOWS.bat"

$Shell = New-Object -ComObject ("WScript.Shell")
#Create shortcut
$Shortcut = $Shell.CreateShortcut($shortcutPath)
# Set the target path to link the shortcut to
$Shortcut.TargetPath = "$targetPath"
# Change the icon of the shortcut
$Shortcut.IconLocation = "$iconPath"
$Shortcut.Save()