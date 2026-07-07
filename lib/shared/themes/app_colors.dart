import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  
  // Buttons
  static const white = Colors.white;
  static const transparent = Colors.transparent;

  // Overlay
static const overlay = Color(0x80000000);

  // Brand
  static const primary = Color(0xFF7B61FF);
  static const secondary = Color(0xFFFF5C8D);

  // Dark Theme
  static const background = Color(0xFF0F1117);
  static const surface = Color(0xFF1A1A1F);
  static const card = Color(0xFF242631);

  // Text
  static const textPrimary = Color(0xFFF5F6FA);
  static const textSecondary = Color(0xFFA7A9BE);

  // Status
  static const success = Color(0xFF3DDC97);
  static const warning = Color(0xFFFFC857);
  static const error = Color(0xFFFF5A5F);

  static const divider = Color(0xFF323544);

  // Gradient
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF7B61FF),
      Color(0xFFB04CFF),
      Color(0xFFFF5C8D),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}