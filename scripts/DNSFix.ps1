Write-Host "[DNS] Flushing cache..."
ipconfig /flushdns

Write-Host "[IP] Releasing + renewing IP..."
ipconfig /release
ipconfig /renew

Write-Host "[DNS] Registering DNS..."
ipconfig /registerdns

Write-Host "Done."
