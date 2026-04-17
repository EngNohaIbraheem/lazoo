import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String image;

  const AuthHeader({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        // Back Button
        Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),

        const SizedBox(height: 20),

        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),

        const SizedBox(height: 30),

        Image.asset(
          image,
          height: 180,
        ),
      ],
    );
  }
}