# Panduan Instalasi & Menjalankan Aplikasi

## Persyaratan
- Flutter SDK 3.0 atau lebih baru
- Android Studio atau VS Code
- Emulator Android atau device fisik
- Git (untuk clone)

## Langkah Instalasi

### 1. Install Flutter SDK
Jika belum memiliki Flutter, download dari: https://flutter.dev/docs/get-started/install

### 2. Verifikasi Instalasi Flutter
```bash
flutter doctor
```
Pastikan semua checklist hijau.

### 3. Install Dependencies
Buka terminal di folder project dan jalankan:
```bash
flutter pub get
```

### 4. Jalankan Aplikasi

#### Untuk Android Emulator:
1. Buka Android Studio
2. Start emulator
3. Jalankan:
```bash
flutter run
```

#### Untuk Device Fisik:
1. Enable USB Debugging di device Android
2. Hubungkan ke komputer
3. Jalankan:
```bash
flutter run
```

### 5. Build APK (Optional)
Untuk membuat file APK yang bisa diinstall:
```bash
flutter build apk --release
```
File APK akan ada di: `build/app/outputs/flutter-apk/app-release.apk`

## Troubleshooting

### Error: "flutter_ffmpeg not found"
Package flutter_ffmpeg sudah deprecated. Untuk implementasi penuh, gunakan:
- ffmpeg_kit_flutter
- video_editor
Atau hapus dari pubspec.yaml jika hanya untuk pembelajaran UI.

### Error: Permission Denied
Pastikan sudah menambahkan permission di AndroidManifest.xml (sudah included).

### Error: Gradle Build Failed
Coba:
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
flutter run
```

## Struktur Folder
```
lib/
├── main.dart                 # Entry point aplikasi
├── screens/
│   ├── home_screen.dart      # Halaman utama
│   ├── video_modifier_screen.dart  # Modifikasi video
│   ├── audio_modifier_screen.dart  # Modifikasi audio
│   └── tips_screen.dart      # Tips & panduan
```

## Fitur yang Tersedia

### 1. Video Modifier
- ✅ Pilih video dari gallery
- ✅ Preview video
- ✅ Adjust speed (0.5x - 2x)
- ✅ Flip horizontal/vertical
- ✅ Color filter
- ⚠️ Export (simulasi - butuh FFmpeg untuk implementasi penuh)

### 2. Audio Modifier
- ✅ Pilih audio file
- ✅ Adjust pitch (0.5x - 2x)
- ✅ Adjust speed (0.5x - 2x)
- ✅ Adjust volume (0% - 200%)
- ✅ Add background noise
- ✅ Reverse audio option
- ⚠️ Export (simulasi - butuh FFmpeg untuk implementasi penuh)

### 3. Tips & Guidelines
- ✅ Panduan copyright lengkap
- ✅ Sumber konten legal & gratis
- ✅ Best practices
- ✅ Cara handle copyright claim/strike

## Catatan Penting

### Untuk Pembelajaran Penuh
Aplikasi ini adalah UI mockup untuk pembelajaran. Untuk implementasi penuh:

1. **Video Processing**: Gunakan `ffmpeg_kit_flutter`
2. **Audio Processing**: Gunakan `just_audio` + `audio_waveforms`
3. **Advanced Editing**: Pertimbangkan `video_editor` package

### Code untuk Implementasi Export (Contoh)
Untuk menambahkan fitur export sebenarnya, tambahkan:
```yaml
# pubspec.yaml
dependencies:
  ffmpeg_kit_flutter: ^6.0.3
```

Dan implementasi:
```dart
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';

Future<void> exportVideo() async {
  final command = '-i input.mp4 -vf "setpts=0.5*PTS" output.mp4';
  await FFmpegKit.execute(command);
}
```

## Resources Tambahan

### Belajar Flutter
- https://flutter.dev/docs
- https://dart.dev/guides

### Belajar Copyright YouTube
- https://support.google.com/youtube/answer/2797466
- https://www.youtube.com/howyoutubeworks/policies/copyright/

### Sumber Konten Legal
- YouTube Audio Library
- Pixabay: https://pixabay.com
- Pexels: https://pexels.com
- Freesound: https://freesound.org

## License
Aplikasi ini dibuat untuk tujuan edukasi. Gunakan dengan bijak dan selalu hormati hak cipta orang lain.

## Support
Jika ada pertanyaan atau masalah, silakan belajar dari dokumentasi Flutter atau komunitas Flutter Indonesia.
