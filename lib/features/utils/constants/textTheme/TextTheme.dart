import 'package:flutter/material.dart';

class AppTextThemes {
  static TextTheme lightTextTheme = const TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black87),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black87),
    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black87),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black87),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black87),
    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black87),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black54),
    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black87),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black87),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
    bodyLarge: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.7)),
    labelLarge: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
  );
}

class AppBarThemes {
  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}

class AppTheme {
  // Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.light(
      primary: Colors.blueAccent,  // Focused border/active elements
      secondary: Colors.blue,      // Secondary elements
      surface: Colors.white,       // Background
      onSurface: Colors.black87,   // Text/icons
    ),
    textTheme: AppTextThemes.lightTextTheme,
    appBarTheme: AppBarThemes.lightAppBarTheme,
  );

  // Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.dark(
      primary: Colors.white,           // Focused border/active elements
      secondary: Colors.blue[200]!,    // Secondary elements
      surface: Colors.grey[900]!,      // Background
      onSurface: Colors.white,         // Text/icons
    ),
    textTheme: AppTextThemes.darkTextTheme,
    appBarTheme: AppBarThemes.darkAppBarTheme,
    scaffoldBackgroundColor: Colors.grey[900],
    cardColor: Colors.grey[800],
    dialogBackgroundColor: Colors.grey[800],
  );

  // Helper to get border color (optional, alternative to colorScheme)
  static Color getTextFieldBorderColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? Colors.white 
        : Colors.blueAccent;
  }

  // Helper to get icon color (optional, alternative to colorScheme)
  static Color getTextFieldIconColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? Colors.white 
        : Colors.black;
  }
}