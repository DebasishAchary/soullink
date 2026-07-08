import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../widgets/auth_divider.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_layout.dart';
import '../widgets/social_login_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthHeader(
            image: AppAssets.register,
            title: 'Create Account',
            subtitle: 'Start your beautiful journey together.',
          ),

          const SizedBox(height: AppSpacing.xl),

          const AppTextField(
            hint: 'Full Name',
            icon: Icons.person_outline,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Email Address',
            icon: Icons.email_outlined,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Password',
            icon: Icons.lock_outline,
            obscureText: true,
          ),

          const SizedBox(height: AppSpacing.md),

          const AppTextField(
            hint: 'Confirm Password',
            icon: Icons.lock_outline,
            obscureText: true,
          ),

          const SizedBox(height: AppSpacing.lg),

          AppButton(
            text: 'Create Account',
            onPressed: () {
              context.go('/otp');
            },
          ),

          const AuthDivider(),

          SocialLoginButton(
            onPressed: () {},
          ),

          const SizedBox(height: AppSpacing.xl),

          AuthFooter(
            question: 'Already have an account? ',
            actionText: 'Sign In',
            onTap: () {
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }
}