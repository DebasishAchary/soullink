import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_assets.dart';
import '../../../../shared/themes/app_colors.dart';
import '../../../../shared/themes/app_spacing.dart';
import '../../../../shared/widgets/app_button.dart';
import '../models/onboarding_data.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int currentPage = 0;

  late final List<OnboardingData> pages = [
    const OnboardingData(
      image: AppAssets.onboarding1,
      title: 'Stay Connected,\nWherever Life Takes You',
      subtitle:
          'Share your journey, create memories together, and stay connected with the people who matter most.',
    ),
    const OnboardingData(
      image: AppAssets.onboarding2,
      title: 'Capture Every\nBeautiful Moment',
      subtitle:
          'Save your favorite memories, photos and milestones in one beautiful shared timeline.',
    ),
    const OnboardingData(
      image: AppAssets.onboarding3,
      title: 'Your Privacy,\nYour Relationship',
      subtitle:
          'Your chats, memories, locations and shared moments are protected with privacy at the core.',
    ),
  ];

  void _nextPage() {
    if (currentPage < pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (_, index) {
                  final page = pages[index];

                  return OnboardingPage(
                    image: page.image,
                    title: page.title,
                    subtitle: page.subtitle,
                  );
                },
              ),
            ),

            PageIndicator(
              currentPage: currentPage,
              totalPages: pages.length,
            ),

            Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: AppButton(
                text: currentPage == 2
                    ? "Let's Begin"
                    : currentPage == 0
                        ? "Get Started"
                        : "Continue",
                onPressed: _nextPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}