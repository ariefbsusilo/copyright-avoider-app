# Quick Flutter Setup Script
# Run after download completes

Write-Host "`n=== FLUTTER SETUP ===" -ForegroundColor Cyan

# Step 1: Extract
Write-Host "`n[1/3] Extracting Flutter..." -ForegroundColor Yellow
$zipFile = "$env:USERPROFILE\Downloads\flutter.zip"
$destination = "C:\"

if (Test-Path $zipFile) {
    Write-Host "Found: $zipFile" -ForegroundColor Green
    Expand-Archive -Path $zipFile -DestinationPath $destination -Force
    Write-Host "Extracted to C:\flutter" -ForegroundColor Green
}
else {
    Write-Host "ERROR: ZIP file not found!" -ForegroundColor Red
    exit 1
}

# Step 2: Add to PATH
Write-Host "`n[2/3] Adding Flutter to PATH..." -ForegroundColor Yellow
$flutterPath = "C:\flutter\bin"
$currentPath = [Environment]::GetEnvironmentVariable("Path", "User")

if ($currentPath -notlike "*$flutterPath*") {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$flutterPath", "User")
    $env:Path += ";$flutterPath"
    Write-Host "Added to PATH: $flutterPath" -ForegroundColor Green
}
else {
    Write-Host "Already in PATH" -ForegroundColor Green
}

# Step 3: Verify
Write-Host "`n[3/3] Verifying installation..." -ForegroundColor Yellow
& "C:\flutter\bin\flutter.bat" --version

Write-Host "`n=== SETUP COMPLETE! ===" -ForegroundColor Green
Write-Host "`nNext steps:" -ForegroundColor Cyan
Write-Host "1. RESTART this terminal or VS Code" -ForegroundColor White
Write-Host "2. Run: flutter doctor" -ForegroundColor White
Write-Host "3. Run: cd 'd:\AI GARDEN\copyright-avoider-app'" -ForegroundColor White
Write-Host "4. Run: flutter pub get" -ForegroundColor White
Write-Host "5. Run: flutter run -d windows`n" -ForegroundColor White
