import 'package:flutter/material.dart';

import '../shared/themes/app_theme.dart';
import 'router.dart';

class SoulLinkApp extends StatelessWidget {
  const SoulLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SoulLink',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}