import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF4B6451);
  static const Color onPrimary = Colors.white;
  static const Color primaryContainer = Color(0xFFBDE3C1);
  static const Color onPrimaryContainer = Color(0xFF082011);

  static const Color secondary = Color(0xFF755756);
  static const Color onSecondary = Colors.white;
  static const Color secondaryContainer = Color(0xFFFFDAD8);
  static const Color onSecondaryContainer = Color(0xFF2B1515);

  static const Color background = Color(0xFFFCF9F8);
  static const Color onBackground = Color(0xFF1B1C1C);
  
  static const Color surface = Color(0xFFFCF9F8);
  static const Color onSurface = Color(0xFF1B1C1C);
  static const Color surfaceVariant = Color(0xFFE4E2E1);
  static const Color onSurfaceVariant = Color(0xFF424843);
  
  static const Color outline = Color(0xFF737972);
  static const Color outlineVariant = Color(0xFFC2C8C0);

  static const Color error = Color(0xFFBA1A1A);
  static const Color onError = Colors.white;

  // Tonal containers from DESIGN.md
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF6F3F2);
  static const Color surfaceContainer = Color(0xFFF0EDED);
  static const Color surfaceContainerHigh = Color(0xFFEAE7E7);
  static const Color surfaceContainerHighest = Color(0xFFE4E2E1);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        primaryContainer: AppColors.primaryContainer,
        onPrimaryContainer: AppColors.onPrimaryContainer,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        secondaryContainer: AppColors.secondaryContainer,
        onSecondaryContainer: AppColors.onSecondaryContainer,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface,
        error: AppColors.error,
        onError: AppColors.onError,
        outline: AppColors.outline,
        outlineVariant: AppColors.outlineVariant,
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme().copyWith(
        headlineLarge: GoogleFonts.plusJakartaSans(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.72,
          height: 1.2,
        ),
        headlineMedium: GoogleFonts.plusJakartaSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 1.3,
        ),
        headlineSmall: GoogleFonts.plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
        bodyLarge: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.6,
        ),
        bodyMedium: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.6,
        ),
        labelLarge: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.7,
        ),
        labelMedium: GoogleFonts.plusJakartaSans(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.6,
        ),
      ),
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceContainerLowest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
