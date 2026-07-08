import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/widgets/app_button.dart';
import '../widgets/auth_header.dart';
import '../widgets/auth_layout.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthHeader(
            image: AppAssets.otp,
            title: 'Verify Your Email',
            subtitle:
                "We've sent a 6-digit verification code to your email address.",
          ),

          const SizedBox(height: AppSpacing.xl),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              6,
              (_) => SizedBox(
                width: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: const InputDecoration(
                    counterText: '',
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.xl),

          AppButton(
            text: 'Verify Code',
            onPressed: () {
              context.go('/profile-setup');
            },
          ),

          const SizedBox(height: AppSpacing.lg),

          TextButton(
            onPressed: () {},
            child: const Text('Resend Code'),
          ),
        ],
      ),
    );
  }
}