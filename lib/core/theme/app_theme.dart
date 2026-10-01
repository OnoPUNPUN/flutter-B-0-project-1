import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.botanicalGreen,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppColors.botanicalGreen,
          onPrimary: AppColors.textOnPrimary,
          secondary: AppColors.actionColor,
          surface: AppColors.surface,
          onSurface: AppColors.textPrimary,
          error: AppColors.error,
          onError: AppColors.textOnPrimary,
        );
    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
    );

    return base.copyWith(
      textTheme: base.textTheme.copyWith(
        headlineLarge: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 64,
          fontWeight: FontWeight.w600,
          height: 1.08,
          wordSpacing: 2,
        ),
        headlineMedium: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 30,
          fontWeight: FontWeight.w700,
          height: 1.15,
          wordSpacing: 2,
        ),
        titleLarge: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          height: 1.2,
        ),
        labelLarge: const TextStyle(
          color: AppColors.textOnPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.actionColor,
          foregroundColor: AppColors.textOnPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          elevation: 0,
        ),
      ),
    );
  }
}
