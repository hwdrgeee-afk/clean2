# =========================================
#      Fade FiveM FULL Cleaner
# =========================================

Clear-Host
Write-Host ""
Write-Host "===================================" -ForegroundColor Cyan
Write-Host "       Fade FiveM Cleaner          " -ForegroundColor Magenta
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# ปิด FiveM/GTA
Write-Host "[+] Closing FiveM..." -ForegroundColor Yellow

Start-Sleep 2

# Path
$FiveM = "$env:localappdata\FiveM\FiveM.app\data"
$FiveMRoot = "$env:localappdata\FiveM\FiveM.app"

Write-Host "[+] Cleaning FiveM files..." -ForegroundColor Green

# Cache
Remove-Item "$FiveM\cache" -Recurse -Force -ErrorAction SilentlyContinue


# Extra
Remove-Item "$FiveMRoot\crashes" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$FiveMRoot\logs" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$FiveMRoot\bin" -Recurse -Force -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "[✓] FiveM Clean Complete!" -ForegroundColor Green
Write-Host ""

Pause