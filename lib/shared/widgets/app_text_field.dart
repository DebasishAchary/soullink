import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_radius.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscureText;

  const AppTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(
        color: AppColors.textPrimary,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: AppColors.textSecondary,
        ),
        prefixIcon: Icon(
          icon,
          color: AppColors.textSecondary,
        ),
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.xl),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}