# ✅ Checklist Setup & Running

## 📋 Pre-requisites Checklist

### Flutter Environment
- [ ] Flutter SDK installed (3.0+)
- [ ] Android Studio / VS Code installed
- [ ] Dart plugin installed
- [ ] Flutter plugin installed
- [ ] Run `flutter doctor` - all checks green

### Android Setup (for Android build)
- [ ] Android SDK installed
- [ ] Android emulator configured OR
- [ ] Physical device with USB debugging enabled
- [ ] Java JDK installed

### iOS Setup (for iOS build - Mac only)
- [ ] Xcode installed (Mac only)
- [ ] CocoaPods installed
- [ ] iOS Simulator configured

---

## 🚀 Initial Setup Steps

### Step 1: Verify Flutter Installation
```powershell
flutter --version
flutter doctor -v
```

**Expected Output:**
```
Flutter 3.x.x
✓ Flutter (Channel stable, x.x.x, on Microsoft Windows...)
✓ Android toolchain
✓ VS Code
✓ Connected device
```

### Step 2: Navigate to Project
```powershell
cd "d:\AI GARDEN\copyright-avoider-app"
```

### Step 3: Install Dependencies
```powershell
flutter pub get
```

**Expected Output:**
```
Running "flutter pub get"...
Resolving dependencies...
Got dependencies!
```

### Step 4: Check Connected Devices
```powershell
flutter devices
```

**Expected Output:**
```
2 connected devices:

Windows (desktop) • windows • windows-x64
Chrome (web)      • chrome  • web-javascript

[✓] Device available
```

---

## 🏃 Running the App

### Option 1: Using VS Code
1. [ ] Open project folder in VS Code
2. [ ] Press `F5` or click "Run > Start Debugging"
3. [ ] Select device from device selector
4. [ ] Wait for app to build and launch

### Option 2: Using Terminal
```powershell
# Run in debug mode
flutter run

# Run in release mode
flutter run --release

# Run on specific device
flutter run -d windows
flutter run -d chrome
```

### Option 3: Using Android Studio
1. [ ] Open project in Android Studio
2. [ ] Select device from device dropdown
3. [ ] Click green "Run" button
4. [ ] Wait for build to complete

---

## 🔍 Troubleshooting

### Issue: Flutter not found
```powershell
# Add Flutter to PATH
$env:PATH += ";C:\path\to\flutter\bin"

# Or permanently in System Environment Variables
```

### Issue: Pub get fails
```powershell
# Clear cache
flutter clean
flutter pub cache repair
flutter pub get
```

### Issue: Build fails
```powershell
# Clean and rebuild
flutter clean
cd android
./gradlew clean
cd ..
flutter pub get
flutter run
```

### Issue: Device not detected
- **Android:**
  - [ ] Enable USB Debugging in Developer Options
  - [ ] Allow USB debugging prompt on device
  - [ ] Try different USB cable
  - [ ] Run `adb devices` to check

- **Emulator:**
  - [ ] Start emulator from Android Studio
  - [ ] Wait for emulator to fully boot
  - [ ] Run `flutter devices` to verify

### Issue: Gradle download slow
```powershell
# Use Gradle wrapper
cd android
./gradlew --version
```

---

## 📱 First Launch Checklist

When app launches:
- [ ] Disclaimer banner appears on home screen
- [ ] 3 menu cards are visible
- [ ] Clicking "Video Modifier" opens video screen
- [ ] Clicking "Audio Modifier" opens audio screen
- [ ] Clicking "Tips & Guidelines" opens tips screen
- [ ] Back button works on all screens

---

## 🎨 Testing Features

### Test Video Modifier
- [ ] Click "Pilih Video" button
- [ ] Select a video file
- [ ] Video preview appears
- [ ] Play/pause works
- [ ] Speed slider changes playback speed
- [ ] Flip toggles are functional
- [ ] Filter dropdown shows options
- [ ] Export button shows dialog

### Test Audio Modifier
- [ ] Click "Pilih Audio" button
- [ ] Select an audio file
- [ ] File name displays correctly
- [ ] Pitch slider works
- [ ] Speed slider works
- [ ] Volume slider works
- [ ] Noise toggle works
- [ ] Reverse toggle works
- [ ] Export button shows dialog

### Test Tips Screen
- [ ] All expandable sections collapse/expand
- [ ] Content is readable
- [ ] Scroll works smoothly
- [ ] All sections have content

---

## 🔧 Build Checklist

### Build Debug APK
```powershell
flutter build apk --debug
```
- [ ] Build completes without errors
- [ ] APK created in `build/app/outputs/flutter-apk/`
- [ ] File size reasonable (~50-100MB for debug)

### Build Release APK
```powershell
flutter build apk --release
```
- [ ] Build completes without errors
- [ ] APK created and smaller than debug
- [ ] Test on physical device

### Build for Windows (if on Windows)
```powershell
flutter build windows --release
```
- [ ] Build completes
- [ ] .exe file created
- [ ] Can run standalone

---

## 📊 Performance Check

After launch:
- [ ] App loads in < 5 seconds
- [ ] UI is responsive
- [ ] No lag when scrolling
- [ ] Video playback smooth
- [ ] No memory leaks (check task manager)

---

## 📝 Documentation Review

Files to read:
- [ ] README.md - Project overview
- [ ] QUICKSTART.md - Quick start guide
- [ ] INSTALLATION.md - Detailed installation
- [ ] TECHNICAL.md - Technical documentation

---

## 🎓 Learning Path

### Beginner
1. [ ] Run the app successfully
2. [ ] Explore all 3 screens
3. [ ] Read tips & guidelines thoroughly
4. [ ] Understand copyright basics

### Intermediate
1. [ ] Try video/audio selection
2. [ ] Experiment with all controls
3. [ ] Read technical documentation
4. [ ] Understand code structure

### Advanced
1. [ ] Modify UI colors/text
2. [ ] Add new features
3. [ ] Implement actual export
4. [ ] Integrate FFmpeg

---

## ✅ Final Verification

Before considering setup complete:
- [ ] App runs without crashes
- [ ] All features accessible
- [ ] No console errors
- [ ] UI looks correct on your device
- [ ] You understand the educational purpose
- [ ] You've read the disclaimer

---

## 🎯 Next Steps

After successful setup:

1. **Learn the Basics**
   - [ ] Explore each feature
   - [ ] Read all tips in Tips screen
   - [ ] Understand why modifications don't guarantee safety

2. **Experiment**
   - [ ] Try different speed settings
   - [ ] Test various filters
   - [ ] Play with audio controls

3. **Understand Copyright**
   - [ ] Visit YouTube Audio Library
   - [ ] Check out free resources listed
   - [ ] Learn about fair use

4. **Create Original Content**
   - [ ] Practice with your own videos
   - [ ] Use legal music sources
   - [ ] Build a sustainable channel

---

## 💡 Tips for Success

### Development Tips
- Keep Flutter SDK updated
- Use hot reload (press `r` in terminal during run)
- Check console for errors
- Use Flutter DevTools for debugging

### Learning Tips
- Don't rush - understand each feature
- Read the educational content carefully
- Use legal sources for your actual content
- Focus on creating original work

### Best Practices
- Always test on real devices when possible
- Keep dependencies updated
- Follow Flutter style guide
- Write clean, readable code

---

## 📞 Getting Help

If stuck:
1. Check error messages carefully
2. Read Flutter documentation
3. Search on Stack Overflow
4. Join Flutter communities
5. Review GitHub issues

### Useful Links
- [Flutter Docs](https://flutter.dev/docs)
- [Flutter Discord](https://discord.gg/flutter)
- [Flutter GitHub](https://github.com/flutter/flutter)
- [Stack Overflow - Flutter](https://stackoverflow.com/questions/tagged/flutter)

---

## ✨ Success Criteria

You've successfully completed setup when:
- ✅ App launches without errors
- ✅ You can navigate all screens
- ✅ You've tested all features
- ✅ You understand the educational purpose
- ✅ You know where to find help
- ✅ You're ready to learn more about Flutter and copyright

---

**Congratulations! You're ready to start learning! 🎉**

Remember: This app is for **EDUCATION ONLY**. Always respect copyright and create original content! 🌟
