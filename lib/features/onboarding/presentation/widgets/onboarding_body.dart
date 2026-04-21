import 'package:flutter/material.dart';
import 'onboarding_button.dart';
import 'onboarding_text.dart';

class OnboardingBody extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onSelect;

  const OnboardingBody({
    super.key,
    required this.onSkip,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildImage(),

              _buildBottomCard(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff6A5AE0), Color(0xff8E7CFF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: Center(
        child: Image.asset(
          'assets/images/imageman.png',
          height: 300,
        ),
      ),
    );
  }

  Widget _buildBottomCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OnboardingText(),
          const SizedBox(height: 20),

          OnboardingButtons(onSelect: onSelect),

          TextButton(
            onPressed: onSkip,
            child: const Text("Skip"),
          ),
        ],
      ),
    );
  }
}