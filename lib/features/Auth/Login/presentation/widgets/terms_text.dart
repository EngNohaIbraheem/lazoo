import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text.rich(
        TextSpan(
          text: "By connecting your account confirm that you agree with our ",
          style: TextStyle(color: AppColors.grey),
          children: [
            TextSpan(
              text: "Term and Condition",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}