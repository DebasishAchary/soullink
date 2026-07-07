import 'package:flutter/material.dart';

import '../../../../shared/themes/app_colors.dart';
import '../../../../shared/themes/app_spacing.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
      child: Row(
        children: [
          Expanded(child: Divider(color: AppColors.divider)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
            child: Text(
              'OR',
              style: TextStyle(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(child: Divider(color: AppColors.divider)),
        ],
      ),
    );
  }
}