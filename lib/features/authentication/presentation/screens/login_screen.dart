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
import '../widgets/password_text_field.dart';
import '../widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthHeader(
            image: AppAssets.login,
            title: 'Welcome Back',
            subtitle: 'Continue your beautiful journey together.',
          ),

          const SizedBox(height: AppSpacing.xl),

          const AppTextField(
            hint: 'Email Address',
            icon: Icons.email_outlined,
          ),

          const SizedBox(height: AppSpacing.md),

          const PasswordTextField(
            hint: 'Password',
          ),

          const SizedBox(height: AppSpacing.sm),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                context.go('/forgot-password');
              },
              child: const Text('Forgot Password?'),
            ),
          ),

          const SizedBox(height: AppSpacing.md),

          AppButton(
            text: 'Sign In',
            onPressed: () {},
          ),

          const AuthDivider(),

          SocialLoginButton(
            onPressed: () {},
          ),

          const SizedBox(height: AppSpacing.xl),

          AuthFooter(
            question: "Don't have an account? ",
            actionText: "Create Account",
            onTap: () {
              context.go('/register');
            },
          ),
        ],
      ),
    );
  }
}