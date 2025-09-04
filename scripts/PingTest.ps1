param(
  [string[]] $Targets = @("1.1.1.1","8.8.8.8","github.com"),
  [int] $Count = 4
)

foreach ($t in $Targets) {
  Write-Host "Pinging $t ..." -ForegroundColor Cyan
  Test-Connection -TargetName $t -Count $Count
}
