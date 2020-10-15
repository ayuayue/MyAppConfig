# 清除默认ctrl + r 搜索历史
Remove-PSReadlineKeyHandler 'Ctrl+r'
Import-Module posh-git
Import-Module oh-my-posh
Import-Module PSFzf
Import-Module PoShFuck
Set-Theme Paradox
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
function lsc {
  Param ([int]$c = 5)
  ls | Format-Wide -Column $c -Property Name
}
# tab 补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# Setup other alias
Set-Alias l	ls 