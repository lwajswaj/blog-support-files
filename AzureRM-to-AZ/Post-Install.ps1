Get-Childitem -path "C:\Program Files\WindowsPowerShell\Modules" -Filter "AZ.*" -Recurse -file -Include "*.psm1" | %{$Content = Get-Content $_.FullName -Raw
  $Content = [System.Text.RegularExpressions.Regex]::Replace($Content, "AzureRM.profile","AzureRM_profile",[System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
  Set-Content -Value $Content -Path $_.FullName
}