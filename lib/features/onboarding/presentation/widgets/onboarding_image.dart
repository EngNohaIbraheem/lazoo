import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/imageman.png',
      fit: BoxFit.contain,
    );
  }
}