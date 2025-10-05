param([string]$Path = "./policies", [ValidateSet("CreateOrUpdate","WhatIf")] [string]$Mode="CreateOrUpdate")
$policies = Get-ChildItem -Path $Path -Filter *.json | ForEach-Object { Get-Content $_.FullName -Raw | ConvertFrom-Json }
foreach ($p in $policies) {
  Write-Host "Processing policy: $($p.displayName)"
  if ($Mode -eq "WhatIf") { continue }
  # TODO: Implement Graph calls to create/update CA policies
}
