import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final Widget? suffix;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: AppColors.grey)),
        const SizedBox(height: 6),

        Row(
          children: [
            Expanded(
              child: TextField(
                obscureText: obscure,
                decoration: InputDecoration(
                  hintText: hint,
                  border: InputBorder.none,
                ),
              ),
            ),
            if (suffix != null) suffix!,
          ],
        ),

        const Divider(),
        const SizedBox(height: 20),
      ],
    );
  }
}