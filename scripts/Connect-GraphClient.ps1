param([string]$Scopes = "Policy.Read.All,Policy.ReadWrite.ConditionalAccess,Directory.Read.All")
Import-Module Microsoft.Graph -ErrorAction Stop
Connect-MgGraph -Scopes $Scopes
Select-MgProfile beta
