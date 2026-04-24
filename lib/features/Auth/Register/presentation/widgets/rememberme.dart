import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Remember me"),
        Switch(
          value: value,
          activeColor: AppColors.green,
          onChanged: (v) => setState(() => value = v),
        ),
      ],
    );
  }
}