# Flutter Auto Installer Script untuk Windows
# Jalankan script ini dengan: .\install_flutter.ps1

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "   FLUTTER SDK INSTALLER - Windows" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""

# Konfigurasi
$FlutterInstallPath = "C:\flutter"
$FlutterVersion = "3.24.5-stable"
$DownloadUrl = "https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_$FlutterVersion.zip"
$ZipFile = "$env:TEMP\flutter_sdk.zip"

# Step 1: Cek apakah Flutter sudah terinstall
Write-Host "[1/6] Mengecek instalasi Flutter yang ada..." -ForegroundColor Yellow
if (Test-Path "$FlutterInstallPath\bin\flutter.bat") {
    Write-Host "Flutter sudah terinstall di: $FlutterInstallPath" -ForegroundColor Green
    $response = Read-Host "Reinstall? (y/n)"
    if ($response -ne 'y') {
        Write-Host "Membatalkan instalasi..." -ForegroundColor Red
        exit
    }
}

# Step 2: Download Flutter SDK
Write-Host ""
Write-Host "[2/6] Downloading Flutter SDK..." -ForegroundColor Yellow
Write-Host "URL: $DownloadUrl" -ForegroundColor Gray
Write-Host "Ini akan memakan waktu beberapa menit (file ~1GB)..." -ForegroundColor Gray

try {
    # Download dengan progress bar
    $webClient = New-Object System.Net.WebClient
    $webClient.DownloadFile($DownloadUrl, $ZipFile)
    Write-Host "Download selesai!" -ForegroundColor Green
}
catch {
    Write-Host "Error downloading: $_" -ForegroundColor Red
    exit 1
}

# Step 3: Extract Flutter SDK
Write-Host ""
Write-Host "[3/6] Extracting Flutter SDK ke $FlutterInstallPath..." -ForegroundColor Yellow

try {
    # Buat folder jika belum ada
    if (!(Test-Path "C:\")) {
        New-Item -ItemType Directory -Path "C:\" -Force | Out-Null
    }
    
    # Extract menggunakan Expand-Archive
    Expand-Archive -Path $ZipFile -DestinationPath "C:\" -Force
    Write-Host "Extraction selesai!" -ForegroundColor Green
}
catch {
    Write-Host "Error extracting: $_" -ForegroundColor Red
    exit 1
}

# Step 4: Tambahkan Flutter ke PATH
Write-Host ""
Write-Host "[4/6] Menambahkan Flutter ke System PATH..." -ForegroundColor Yellow

try {
    $FlutterBinPath = "$FlutterInstallPath\bin"
    
    # Get current PATH
    $currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
    
    # Cek apakah Flutter sudah ada di PATH
    if ($currentPath -notlike "*$FlutterBinPath*") {
        # Tambahkan ke PATH
        $newPath = "$currentPath;$FlutterBinPath"
        [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
        
        # Update PATH di session saat ini
        $env:Path = "$env:Path;$FlutterBinPath"
        
        Write-Host "Flutter berhasil ditambahkan ke PATH!" -ForegroundColor Green
    }
    else {
        Write-Host "Flutter sudah ada di PATH" -ForegroundColor Green
    }
}
catch {
    Write-Host "Error updating PATH: $_" -ForegroundColor Red
    Write-Host "Silakan tambahkan manual: $FlutterBinPath" -ForegroundColor Yellow
}

# Step 5: Verifikasi instalasi
Write-Host ""
Write-Host "[5/6] Verifikasi instalasi Flutter..." -ForegroundColor Yellow

# Refresh environment
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "User") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "Machine")

try {
    & "$FlutterInstallPath\bin\flutter.bat" --version
    Write-Host "Flutter berhasil terinstall!" -ForegroundColor Green
}
catch {
    Write-Host "Warning: Tidak bisa menjalankan flutter command" -ForegroundColor Yellow
    Write-Host "Silakan restart terminal/VS Code" -ForegroundColor Yellow
}

# Step 6: Cleanup
Write-Host ""
Write-Host "[6/6] Membersihkan file temporary..." -ForegroundColor Yellow
if (Test-Path $ZipFile) {
    Remove-Item $ZipFile -Force
    Write-Host "Cleanup selesai!" -ForegroundColor Green
}

# Summary
Write-Host ""
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "   INSTALASI SELESAI!" -ForegroundColor Cyan
Write-Host "================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Flutter SDK Location: $FlutterInstallPath" -ForegroundColor Green
Write-Host "Flutter Bin: $FlutterInstallPath\bin" -ForegroundColor Green
Write-Host ""
Write-Host "NEXT STEPS:" -ForegroundColor Yellow
Write-Host "1. Restart Terminal atau VS Code (PENTING!)" -ForegroundColor White
Write-Host "2. Jalankan: flutter doctor" -ForegroundColor White
Write-Host "3. Install dependencies: flutter doctor --android-licenses" -ForegroundColor White
Write-Host "4. Masuk ke project: cd 'd:\AI GARDEN\copyright-avoider-app'" -ForegroundColor White
Write-Host "5. Install packages: flutter pub get" -ForegroundColor White
Write-Host "6. Run aplikasi: flutter run -d windows" -ForegroundColor White
Write-Host ""
Write-Host "Dokumentasi lengkap: https://flutter.dev/docs" -ForegroundColor Cyan
Write-Host ""
