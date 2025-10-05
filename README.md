# Entra Security – Conditional Access as Code (CAaC)

Version-controlled Conditional Access policies with export/deploy/validate automation.

## Highlights
- JSON **policy definitions** (MFA, device compliance, risky sign-ins, legacy auth block)
- **PowerShell + Microsoft Graph** deployment & export
- **Pester tests** verifying required conditions (grant controls, assignments)
- **Rollback** helper (disable or restore from export)
- CI workflow to lint/test on pull requests

## Structure
```
policies/
  baseline-mfa.json
  block-legacy-auth.json
scripts/
  Connect-GraphClient.ps1
  Deploy-ConditionalAccess.ps1
  Export-ConditionalAccess.ps1
  Disable-Policy.ps1
tests/
  ConditionalAccess.Tests.ps1
.github/workflows/
  validate.yml
docs/
  adr/0001-caas-approach.md
```

## Quick Start
```pwsh
Install-Module Microsoft.Graph -Scope CurrentUser -Force
Connect-MgGraph -Scopes "Policy.Read.All","Policy.ReadWrite.ConditionalAccess","Directory.Read.All"
./scripts/Deploy-ConditionalAccess.ps1 -Path ./policies -Mode CreateOrUpdate
```
---
MIT License.
