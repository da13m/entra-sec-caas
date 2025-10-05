Describe 'Conditional Access Policies' {
  It 'Baseline MFA policy exists' {
    $file = Join-Path $PSScriptRoot '..' 'policies' 'baseline-mfa.json'
    (Test-Path $file) | Should -Be $true
  }
}
