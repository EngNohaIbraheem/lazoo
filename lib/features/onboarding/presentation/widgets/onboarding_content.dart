import 'package:flutter/material.dart';
import '../../../../core/config/constant/app_color.dart';
import 'onboarding_card.dart';
import 'onboarding_image.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.secondary,
                AppColors.primary,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),

        // Image
        const Align(
          alignment: Alignment.topCenter,
          child: OnboardingImage(),
        ),

        // Card
        const Align(
          alignment: Alignment.bottomCenter,
          child: OnboardingCard(),
        ),
      ],
    );
  }
}