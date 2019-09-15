if(Get-Command Enable-AzureRmAlias) {
  Enable-AzureRmAlias -Scope Process
}
else {
  throw "'Enable-AzureRmAlias' was not found."
}

Import-Module "AzureRm.Profile" -Global