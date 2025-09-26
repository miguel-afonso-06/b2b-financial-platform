import 'package:flutter/material.dart';

class AppColors {
  // Main Color
  static const Color primary = Color(0xFF1E88E5); // Main blue theme

  // Main Highlights
  static const Color primaryLight = Color(0xFF6AB7FF); // Hover, highlights
  static const Color primaryDark = Color(0xFF005CB2); // Buttons, accents
  static const Color accent = Color(0xFF00BCD4);       // Secondary elements

  // Background
  static const Color backgroundLM = Color(0xFFF5F5F5); // Scaffold - Light
  static const Color backgroundDM = Color(0xFF121212); // Scaffold - Dark
  static const Color cardLM = Color(0xFFFFFFFF);       // Card - Light
  static const Color cardDM = Color(0xFF1E1E1E);       // Card - Dark

  // Text
  static const Color textLM = Color(0xFF212121);       // Text - Light
  static const Color textDM = Color(0xFFE0E0E0);       // Text - Dark

  // Feedback
  static const Color error = Color(0xFFD32F2F);        // Error messages
  static const Color warning = Color(0xFFE39F00);      // Warning messages
}

class AppThemes {
  // Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLM,
    cardColor: AppColors.cardLM,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      error: AppColors.error,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.textLM,
      displayColor: AppColors.textLM,
    ),
  );

  // Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDM,
    cardColor: AppColors.cardDM,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      error: AppColors.error,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: AppColors.textDM,
      displayColor: AppColors.textDM,
    ),
  );
}