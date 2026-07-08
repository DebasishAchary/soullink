import 'package:flutter/material.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_layout.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthHeader(
            image: AppAssets.profile,
            title: 'Complete Your Profile',
            subtitle: "Let's personalize your SoulLink experience.",
          ),

          const SizedBox(height: AppSpacing.xl),

          const AppTextField(
            hint: 'Full Name',
            icon: Icons.person_outline,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Date of Birth',
            icon: Icons.calendar_today_outlined,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Gender',
            icon: Icons.badge_outlined,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Profile Photo',
            icon: Icons.photo_camera_outlined,
          ),

          const SizedBox(height: AppSpacing.xl),

          AppButton(
            text: 'Continue',
            onPressed: () {
              // Dashboard comes next
            },
          ),
        ],
      ),
    );
  }
}