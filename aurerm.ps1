Find-Module -name Az* |  Install-Module -AllowClobber -Force 
$resourcegroup=New-AzResourceGroup -Name "testing" `
-Location "East us2"
#by using context autosave, your already
Enable-AzContextAutosave

Remove-AzResourceGroup -Name testing -Force
Login-AzAccount

#Module to get
Get-Module Az*storage* -ListAvailable

#status
Get-AzVM | Select-Object Name
#vm
