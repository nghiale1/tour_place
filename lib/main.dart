import 'package:flutter/material.dart';
import 'package:trekking/features/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(primary: Colors.white)),
    home: const OnboardingScreen(),
  ));
}
