# 🚨 Flutter Belum Terinstall - Panduan Instalasi

## Status Saat Ini
❌ Flutter SDK belum terinstall di sistem Anda  
❌ Command `flutter` tidak ditemukan di PATH

---

## 📥 Cara Install Flutter di Windows

### Metode 1: Install Manual (Recommended)

#### Step 1: Download Flutter SDK
1. Buka browser dan kunjungi: https://flutter.dev/docs/get-started/install/windows
2. Download Flutter SDK (File ZIP ~800MB)
3. Extract ke lokasi permanent, misalnya: `C:\flutter`

**JANGAN extract ke:**
- ❌ Program Files (butuh admin)
- ❌ Folder temporary
- ❌ Desktop

**Lokasi yang baik:**
- ✅ `C:\flutter`
- ✅ `C:\dev\flutter`
- ✅ `D:\flutter`

#### Step 2: Tambahkan Flutter ke PATH

1. **Cara 1: Via PowerShell (Sementara)**
```powershell
# Ganti path sesuai lokasi Flutter Anda
$env:PATH += ";C:\flutter\bin"

# Cek apakah berhasil
flutter --version
```

2. **Cara 2: Via Environment Variables (Permanent)**
   - Tekan `Windows + R`
   - Ketik `sysdm.cpl` dan Enter
   - Tab "Advanced" → "Environment Variables"
   - Di "User variables", pilih "Path" → "Edit"
   - Klik "New" → Masukkan path: `C:\flutter\bin`
   - Klik OK semua dialog
   - **Restart terminal/VS Code**

#### Step 3: Verifikasi Instalasi
```powershell
flutter --version
flutter doctor
```

#### Step 4: Install Dependencies Tambahan

Flutter Doctor akan menunjukkan apa yang perlu diinstall:

**1. Android Studio (Untuk build Android)**
- Download: https://developer.android.com/studio
- Install dengan component:
  - Android SDK
  - Android SDK Platform
  - Android Virtual Device (AVD)

**2. Visual Studio (Untuk build Windows Desktop)**
- Download: https://visualstudio.microsoft.com/downloads/
- Pilih "Desktop development with C++"

**3. Chrome (Untuk Web Development)**
- Sudah punya Chrome? Skip

#### Step 5: Accept Android Licenses
```powershell
flutter doctor --android-licenses
# Ketik 'y' untuk semua prompt
```

#### Step 6: Verifikasi Setup Lengkap
```powershell
flutter doctor -v
```

Expected output semua ✓ (hijau):
```
[✓] Flutter (Channel stable, x.x.x)
[✓] Android toolchain
[✓] Chrome
[✓] Visual Studio
[✓] VS Code
```

---

### Metode 2: Chocolatey (Quick Install)

Jika sudah punya Chocolatey:
```powershell
# Install Flutter via Chocolatey
choco install flutter

# Restart terminal
flutter --version
```

---

## 🚀 Setelah Flutter Terinstall

### Jalankan Aplikasi

1. **Buka terminal baru** (penting untuk load PATH baru)
2. Jalankan command berikut:

```powershell
# Masuk ke folder project
cd "d:\AI GARDEN\copyright-avoider-app"

# Install dependencies
flutter pub get

# Cek device yang tersedia
flutter devices

# Run di Windows Desktop
flutter run -d windows

# ATAU run di Chrome (Web)
flutter run -d chrome

# ATAU run di Android emulator (jika ada)
flutter run
```

---

## 🎯 Quick Start Options

### Option A: Run di Windows Desktop (Tercepat)
```powershell
flutter run -d windows
```
Aplikasi akan berjalan sebagai aplikasi Windows native.

### Option B: Run di Chrome Browser
```powershell
flutter run -d chrome
```
Aplikasi akan berjalan di browser Chrome.

### Option C: Run di Android Emulator
```powershell
# 1. Start emulator dari Android Studio
# 2. Tunggu emulator fully booted
# 3. Run command:
flutter run
```

---

## 📊 Estimasi Waktu

| Task | Waktu |
|------|-------|
| Download Flutter SDK | 5-15 menit |
| Extract & Setup PATH | 2-5 menit |
| Install Android Studio | 15-30 menit |
| Flutter Doctor & Licenses | 5-10 menit |
| First flutter run | 5-10 menit |
| **Total** | **30-60 menit** |

---

## 🔧 Troubleshooting

### Problem: "flutter not found" setelah add to PATH
**Solution:** 
- Restart terminal/VS Code
- Atau buka terminal baru

### Problem: Android licenses error
**Solution:**
```powershell
flutter doctor --android-licenses
```

### Problem: Build tools not found
**Solution:**
- Install Android Studio
- Open Android Studio → SDK Manager
- Install SDK Build Tools

### Problem: Emulator tidak muncul
**Solution:**
```powershell
# List available devices
flutter devices

# Create new emulator via Android Studio
# AVD Manager → Create Virtual Device
```

---

## 📱 Alternative: Test di Browser (NO INSTALL)

Jika ingin test tanpa install Flutter:

1. Buka https://dartpad.dev
2. Copy paste code dari `lib/main.dart`
3. Run online

**Note:** DartPad tidak support semua packages (file_picker, video_player won't work)

---

## 🎓 Learning Path

### Phase 1: Install (Hari ini)
- [ ] Install Flutter SDK
- [ ] Setup PATH
- [ ] Run flutter doctor
- [ ] Fix semua issue

### Phase 2: First Run (Hari ini)
- [ ] flutter pub get
- [ ] flutter run -d chrome atau -d windows
- [ ] Test aplikasi

### Phase 3: Explore (Minggu ini)
- [ ] Test semua fitur
- [ ] Baca dokumentasi
- [ ] Modify code

---

## 💡 Tips

1. **Gunakan SSD** jika memungkinkan untuk performa lebih baik
2. **Internet stabil** untuk download dependencies
3. **Antivirus:** Kadang block Flutter, add exception
4. **Disk space:** Siapkan ~5GB untuk Flutter + SDK

---

## 📞 Butuh Bantuan?

### Official Resources
- 📖 Flutter Install Guide: https://flutter.dev/docs/get-started/install/windows
- 💬 Flutter Discord: https://discord.gg/flutter
- 🎥 Flutter YouTube: https://www.youtube.com/c/flutterdev

### Indonesian Resources
- 🇮🇩 Flutter Indonesia: https://flutter.id
- 💬 Telegram: Flutter Indonesia
- 📺 YouTube: Search "Flutter Indonesia Tutorial"

---

## ✅ Checklist Sebelum Run Aplikasi

Sebelum bisa menjalankan aplikasi, pastikan:
- [ ] Flutter SDK terinstall
- [ ] `flutter --version` berjalan
- [ ] `flutter doctor` semua hijau (atau minimal 2-3 hijau)
- [ ] Sudah restart terminal/VS Code
- [ ] Berada di folder project

---

## 🎯 Summary

**Status:** Flutter belum terinstall  
**Yang perlu dilakukan:** Install Flutter SDK dari flutter.dev  
**Setelah install:** Run `flutter pub get` lalu `flutter run`  
**Estimasi waktu:** 30-60 menit untuk full setup  

**Next step:** Download Flutter SDK dari https://flutter.dev/docs/get-started/install/windows

---

**Good luck! Setelah Flutter terinstall, aplikasi siap dijalankan! 🚀**
