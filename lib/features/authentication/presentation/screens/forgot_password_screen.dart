import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_layout.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthHeader(
            image: AppAssets.forgotPassword,
            title: 'Forgot Password',
            subtitle:
                "Enter your email address and we'll send you a password reset link.",
          ),

          const SizedBox(height: AppSpacing.xl),

          const AppTextField(
            hint: 'Email Address',
            icon: Icons.email_outlined,
          ),

          const SizedBox(height: AppSpacing.lg),

          AppButton(
            text: 'Send Reset Link',
            onPressed: () {
              context.go('/otp');
            },
          ),

          const SizedBox(height: AppSpacing.lg),

          TextButton.icon(
            onPressed: () {
              context.go('/login');
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text('Back to Login'),
          ),
        ],
      ),
    );
  }
}