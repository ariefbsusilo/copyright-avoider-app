# ⚡ ALTERNATIF CEPAT - Install Flutter

## 🚀 Metode 1: Manual Download (TERCEPAT)

Jika download otomatis lambat, gunakan cara manual:

### Langkah Manual:

1. **Download Flutter SDK**
   - Buka browser: https://docs.flutter.dev/get-started/install/windows
   - Klik "Download" → Pilih versi terbaru (flutter_windows_xxx-stable.zip)
   - File size: ~1GB
   - Atau direct link: https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.24.5-stable.zip

2. **Extract File**
   - Extract file ZIP ke `C:\flutter`
   - JANGAN extract ke `C:\Program Files` (butuh admin)

3. **Tambahkan ke PATH**
   ```powershell
   # Jalankan di PowerShell
   [Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\flutter\bin", "User")
   ```

4. **Restart Terminal**
   - Tutup VS Code
   - Buka VS Code lagi
   - Buka terminal baru

5. **Verifikasi**
   ```powershell
   flutter --version
   flutter doctor
   ```

---

## 🎯 Metode 2: Chocolatey (OTOMATIS)

Jika punya Chocolatey package manager:

```powershell
# Install Chocolatey dulu (jika belum ada)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Flutter via Chocolatey
choco install flutter -y

# Restart terminal
flutter --version
```

---

## 📦 Metode 3: Scoop (SIMPLE)

Jika punya Scoop package manager:

```powershell
# Install Scoop dulu (jika belum ada)
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Install Flutter via Scoop
scoop bucket add extras
scoop install flutter

# Restart terminal
flutter --version
```

---

## 🔧 Metode 4: Git Clone (DEVELOPER)

Jika punya Git:

```powershell
# Clone Flutter repository
cd C:\
git clone https://github.com/flutter/flutter.git -b stable

# Tambahkan ke PATH
[Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\flutter\bin", "User")

# Restart terminal
flutter --version
```

---

## ⚡ Quick Check Status

Cek status download script yang sedang berjalan:

```powershell
# Cek apakah file sedang didownload
Get-Process | Where-Object {$_.ProcessName -like "*powershell*"}

# Cek ukuran file download (jika ada)
if (Test-Path "$env:TEMP\flutter_sdk.zip") {
    $size = (Get-Item "$env:TEMP\flutter_sdk.zip").Length / 1MB
    Write-Host "Downloaded: $size MB / ~1000 MB"
}
```

---

## 🎯 Setelah Flutter Terinstall

Jalankan command berikut secara berurutan:

```powershell
# 1. Restart terminal WAJIB!
# Tutup dan buka terminal baru

# 2. Verifikasi Flutter
flutter --version
flutter doctor

# 3. Accept Android licenses (optional, untuk Android build)
flutter doctor --android-licenses

# 4. Masuk ke project
cd "d:\AI GARDEN\copyright-avoider-app"

# 5. Install dependencies
flutter pub get

# 6. Run aplikasi
flutter run -d windows     # Run di Windows
# ATAU
flutter run -d chrome      # Run di Browser
```

---

## 📊 Estimasi Waktu per Metode

| Metode | Download | Setup | Total |
|--------|----------|-------|-------|
| Script (otomatis) | 5-15 min | 2 min | 7-17 min |
| Manual Browser | 3-10 min | 3 min | 6-13 min |
| Chocolatey | 5-10 min | 2 min | 7-12 min |
| Scoop | 5-10 min | 2 min | 7-12 min |
| Git Clone | 10-20 min | 2 min | 12-22 min |

---

## 🚨 Troubleshooting

### Script terlalu lama?
- Cek koneksi internet
- Pakai download manager (IDM, FDM)
- Gunakan metode manual via browser

### "Flutter not recognized" setelah install?
```powershell
# Restart terminal WAJIB!
# Atau jalankan manual:
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","User")
flutter --version
```

### Download gagal/corrupt?
```powershell
# Hapus file temporary
Remove-Item "$env:TEMP\flutter_sdk.zip" -Force

# Download ulang
.\install_flutter.ps1
```

---

## ✅ Cek Instalasi Berhasil

Setelah install, jalankan:

```powershell
flutter --version
```

Expected output:
```
Flutter 3.24.5 • channel stable
Framework • revision xxx
Engine • revision xxx
Tools • Dart 3.x.x
```

Jika muncul output seperti di atas = **BERHASIL! ✅**

---

## 🎯 Next: Run Aplikasi

```powershell
cd "d:\AI GARDEN\copyright-avoider-app"
flutter pub get
flutter run -d windows
```

**Aplikasi akan terbuka dalam ~1-2 menit!** 🚀
