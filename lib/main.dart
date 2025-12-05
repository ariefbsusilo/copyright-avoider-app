import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart'; // REMOVED - causing slow loading
import 'screens/home_screen.dart';

void main() {
  runApp(const CopyrightAvoiderApp());
}

class CopyrightAvoiderApp extends StatelessWidget {
  const CopyrightAvoiderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copyright Avoider - Pembelajaran',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        fontFamily: 'Segoe UI', // Use system font instead
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        fontFamily: 'Segoe UI',
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
