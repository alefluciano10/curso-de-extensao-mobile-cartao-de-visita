import 'package:flutter/material.dart';

class LightTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF5F7FA),
    primaryColor: const Color(0xFF3949AB),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 1,
      iconTheme: IconThemeData(color: Color(0xFF1A237E)),
      titleTextStyle: TextStyle(
        color: Color(0xFF1A237E),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardColor: Colors.white,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xFF1A237E)),
      titleLarge: TextStyle(color: Color(0xFF1A237E)),
      headlineSmall: TextStyle(color: Color(0xFF1A237E)),
      titleMedium: TextStyle(color: Color(0xFF607D8B)),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFFE8EAF6),
      selectedColor: const Color(0xFF3949AB),
      labelStyle: const TextStyle(color: Color(0xFF1A237E)),
      side: const BorderSide(color: Color(0xFF3949AB)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}

class DarkTheme {
  static final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    primaryColor: const Color(0xFF7986CB),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      elevation: 1,
      iconTheme: IconThemeData(color: Color(0xFFE0E0E0)),
      titleTextStyle: TextStyle(
        color: Color(0xFFE0E0E0),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardColor: const Color(0xFF1F1F1F),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Color(0xFFE0E0E0)),
      titleLarge: TextStyle(color: Color(0xFFE0E0E0)),
      headlineSmall: TextStyle(color: Color(0xFFE0E0E0)),
      titleMedium: TextStyle(color: Color(0xFFB0BEC5)),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFF2C2C2C),
      selectedColor: const Color(0xFF7986CB),
      labelStyle: const TextStyle(color: Color(0xFFE0E0E0)),
      side: const BorderSide(color: Color(0xFF7986CB)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
