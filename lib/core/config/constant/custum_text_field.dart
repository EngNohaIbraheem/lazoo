import 'package:flutter/material.dart';
import 'app_color.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget? suffix;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffix,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: AppColors.textLight)),
        const SizedBox(height: 6),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffix,
            enabledBorder: const UnderlineInputBorder(),
          ),
        ),
      ],
    );
  }
}