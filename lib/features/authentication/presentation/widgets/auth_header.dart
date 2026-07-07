import 'package:flutter/material.dart';

import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/themes/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const AuthHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 220,
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(
          title,
          style: AppTextStyles.headline,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          subtitle,
          style: AppTextStyles.body,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}