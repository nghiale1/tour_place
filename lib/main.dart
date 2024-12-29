import 'package:flutter/material.dart';
import 'package:tour_place/features/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Tour Place',
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(primary: Colors.white)),
    home: const OnboardingScreen(),
  ));
}
