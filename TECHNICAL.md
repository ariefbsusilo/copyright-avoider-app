# Copyright Avoider App - Technical Documentation

## 📋 Project Overview

**Nama Aplikasi:** Copyright Avoider App  
**Platform:** Flutter (Android & iOS)  
**Tujuan:** Aplikasi pembelajaran untuk memahami copyright dan teknik modifikasi konten  
**Status:** Educational/Learning Mode

---

## 🏗️ Arsitektur Aplikasi

### Tech Stack
- **Framework:** Flutter 3.0+
- **Language:** Dart
- **State Management:** StatefulWidget (Simple)
- **UI Library:** Material 3
- **Font:** Google Fonts (Poppins)

### Dependencies
```yaml
Core:
- flutter (SDK)
- cupertino_icons: ^1.0.2

UI & Fonts:
- google_fonts: ^6.1.0

File & Media:
- file_picker: ^6.1.1
- video_player: ^2.8.1
- path_provider: ^2.1.1

Permissions & Sharing:
- permission_handler: ^11.0.1
- share_plus: ^7.2.1

Processing (Optional):
- flutter_ffmpeg: ^0.4.2
```

---

## 📁 Struktur Folder

```
copyright-avoider-app/
├── android/                    # Android native code
│   ├── app/
│   │   ├── src/main/
│   │   │   ├── AndroidManifest.xml
│   │   │   └── kotlin/
│   │   └── build.gradle
│   ├── build.gradle
│   └── settings.gradle
│
├── ios/                        # iOS native code
│   └── Runner/
│       ├── Info.plist
│       └── AppDelegate.swift
│
├── lib/                        # Flutter code
│   ├── main.dart              # Entry point
│   └── screens/
│       ├── home_screen.dart           # Home menu
│       ├── video_modifier_screen.dart # Video editing
│       ├── audio_modifier_screen.dart # Audio editing
│       └── tips_screen.dart           # Guidelines
│
├── .vscode/                    # VS Code settings
│   ├── settings.json
│   └── launch.json
│
├── pubspec.yaml               # Dependencies
├── README.md                  # Project overview
├── INSTALLATION.md            # Setup guide
├── QUICKSTART.md              # Quick guide
└── TECHNICAL.md               # This file
```

---

## 🎨 UI/UX Design

### Color Scheme
- **Primary:** Deep Purple
- **Secondary:** Orange, Blue, Green, Amber
- **Warning:** Orange/Red tones
- **Background:** System adaptive (Light/Dark mode)

### Design Pattern
- Material Design 3
- Card-based layout
- Bottom-up navigation
- Responsive design

### Screens

#### 1. Home Screen
**Path:** `lib/screens/home_screen.dart`

**Features:**
- Warning disclaimer banner
- 3 main menu cards:
  - Video Modifier (Blue)
  - Audio Modifier (Green)
  - Tips & Guidelines (Amber)
- Footer info

**Navigation:**
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => TargetScreen()),
);
```

#### 2. Video Modifier Screen
**Path:** `lib/screens/video_modifier_screen.dart`

**Features:**
- File picker for video selection
- Video preview with VideoPlayerController
- Speed adjustment slider (0.5x - 2x)
- Flip horizontal/vertical switches
- Color filter dropdown
- Export button (simulation)

**State Management:**
```dart
VideoPlayerController? _controller;
double _speed = 1.0;
bool _flipHorizontal = false;
bool _flipVertical = false;
String _selectedFilter = 'None';
```

#### 3. Audio Modifier Screen
**Path:** `lib/screens/audio_modifier_screen.dart`

**Features:**
- File picker for audio selection
- Audio info display
- Pitch control (0.5x - 2x)
- Speed control (0.5x - 2x)
- Volume control (0% - 200%)
- Background noise toggle with level
- Reverse audio option
- Export button (simulation)

**State Management:**
```dart
double _pitch = 1.0;
double _speed = 1.0;
double _volume = 1.0;
bool _addNoise = false;
double _noiseLevel = 0.1;
bool _reverseAudio = false;
```

#### 4. Tips Screen
**Path:** `lib/screens/tips_screen.dart`

**Features:**
- Expandable sections:
  - What is Copyright
  - Legal ways to use content
  - Free resources
  - Why modifications don't work
  - Best practices
  - Handle copyright claims
- Resource links
- Warning sections

---

## 🔧 Implementation Details

### Video Player Integration
```dart
VideoPlayerController.file(File(videoPath))
  ..initialize().then((_) {
    setState(() {});
    _controller!.play();
    _controller!.setLooping(true);
  });
```

### File Picker Usage
```dart
FilePickerResult? result = await FilePicker.platform.pickFiles(
  type: FileType.video, // or FileType.audio
  allowMultiple: false,
);
```

### Speed Adjustment
```dart
_controller!.setPlaybackSpeed(_speed);
```

---

## 🚀 Build & Deployment

### Development Build
```bash
flutter run
```

### Debug APK
```bash
flutter build apk --debug
```

### Release APK
```bash
flutter build apk --release
```

### Release AAB (Google Play)
```bash
flutter build appbundle --release
```

### iOS Build
```bash
flutter build ios --release
```

---

## 🔐 Permissions

### Android (AndroidManifest.xml)
```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.READ_MEDIA_VIDEO"/>
<uses-permission android:name="android.permission.READ_MEDIA_AUDIO"/>
```

### iOS (Info.plist)
```xml
<key>NSPhotoLibraryUsageDescription</key>
<string>App membutuhkan akses ke galeri untuk memilih video dan audio</string>
<key>NSMicrophoneUsageDescription</key>
<string>App membutuhkan akses ke mikrofon untuk fitur audio</string>
```

---

## 🎯 Features Roadmap

### ✅ Implemented
- [x] Home screen with navigation
- [x] Video file picker
- [x] Video preview & playback
- [x] Speed adjustment
- [x] Flip controls
- [x] Filter options
- [x] Audio file picker
- [x] Audio controls (pitch, speed, volume)
- [x] Educational tips & guidelines
- [x] Resource links

### 🚧 In Progress (Learning Mode)
- [ ] Actual video export with FFmpeg
- [ ] Actual audio export with FFmpeg
- [ ] Real-time filter preview
- [ ] Waveform visualization

### 📝 Future Enhancements
- [ ] Video trimming
- [ ] Text overlay
- [ ] Multiple audio tracks
- [ ] Batch processing
- [ ] Cloud storage integration
- [ ] History/saved projects

---

## 🧪 Testing

### Manual Testing Checklist
```
Home Screen:
[ ] Disclaimer displays correctly
[ ] All 3 buttons navigate properly
[ ] Theme switching works

Video Modifier:
[ ] Can pick video file
[ ] Video plays correctly
[ ] Speed slider works
[ ] Flip toggles work
[ ] Filter dropdown works
[ ] Export dialog shows

Audio Modifier:
[ ] Can pick audio file
[ ] File info displays
[ ] All sliders work
[ ] Toggles work
[ ] Export dialog shows

Tips Screen:
[ ] All sections expand/collapse
[ ] Content readable
[ ] Links are correct
```

### Automated Testing
```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

---

## 🐛 Known Issues & Limitations

### Current Limitations
1. **Export is simulated** - Requires FFmpeg integration
2. **No real-time audio playback** - UI only
3. **Filter preview not implemented** - Selection only
4. **No persistence** - Settings not saved

### Known Issues
1. `flutter_ffmpeg` package deprecated
   - **Solution:** Use `ffmpeg_kit_flutter` for production
2. Video player may lag on old devices
   - **Solution:** Add loading indicators, optimize preview

---

## 🔄 Migration Guide

### To Production-Ready App

1. **Replace FFmpeg Package**
```yaml
# Remove
flutter_ffmpeg: ^0.4.2

# Add
ffmpeg_kit_flutter: ^6.0.3
```

2. **Implement Export**
```dart
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';

Future<void> exportVideo() async {
  String command = '-i input.mp4 -vf "setpts=${1/_speed}*PTS" output.mp4';
  await FFmpegKit.execute(command);
}
```

3. **Add Audio Player**
```yaml
dependencies:
  just_audio: ^0.9.35
```

4. **Add State Management**
```yaml
dependencies:
  provider: ^6.1.1
  # or
  riverpod: ^2.4.9
```

---

## 📖 Code Style Guide

### Naming Conventions
- **Classes:** PascalCase (`VideoModifierScreen`)
- **Functions:** camelCase (`_pickVideo`)
- **Variables:** camelCase (`_videoPath`)
- **Constants:** SCREAMING_SNAKE_CASE (`MAX_FILE_SIZE`)
- **Private:** Prefix with `_` (`_controller`)

### File Organization
```dart
// 1. Imports
import 'package:flutter/material.dart';

// 2. Class definition
class MyScreen extends StatefulWidget { }

// 3. State class
class _MyScreenState extends State<MyScreen> {
  // 3.1 Variables
  // 3.2 Lifecycle methods
  // 3.3 Custom methods
  // 3.4 Build method
  // 3.5 Helper widgets
}
```

---

## 🤝 Contributing

### Development Workflow
1. Fork repository
2. Create feature branch
3. Make changes
4. Test thoroughly
5. Submit pull request

### Commit Message Format
```
type: subject

body

footer
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

---

## 📚 Resources

### Documentation
- [Flutter Docs](https://flutter.dev/docs)
- [Dart Docs](https://dart.dev/guides)
- [Material Design](https://m3.material.io)

### Packages
- [pub.dev](https://pub.dev)
- [Flutter Packages](https://flutter.dev/packages-and-plugins)

### Learning
- [Flutter Codelabs](https://flutter.dev/codelabs)
- [Dart Pad](https://dartpad.dev)

---

## 📄 License

Educational Project - Use for learning purposes only.

**Disclaimer:** Always respect copyright and intellectual property rights.

---

**Last Updated:** December 2025  
**Version:** 1.0.0  
**Maintained by:** Learning Project
