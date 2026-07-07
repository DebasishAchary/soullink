import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static const card = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  static const dialog = [
    BoxShadow(
      color: Color(0x22000000),
      blurRadius: 20,
      offset: Offset(0, 8),
    ),
  ];
}