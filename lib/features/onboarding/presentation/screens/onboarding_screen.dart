import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/onboarding_body.dart';
import 'getstarted_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const  String routeName ="OnboardingScreen" ;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 60), _navigateNext);
  }

  void _navigateNext() {
    if (!mounted) return;

    Navigator.pushNamed(context, GetStartedScreen.routeName);

    // حطي route بتاعك
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingBody(
      onSkip: _navigateNext,
      onSelect: _navigateNext,
    );
  }
}