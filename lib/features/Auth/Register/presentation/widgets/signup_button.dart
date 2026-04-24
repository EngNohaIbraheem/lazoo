import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
          ),
        ),
        child: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}