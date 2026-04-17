import 'package:flutter/material.dart';
import 'app_color.dart';

class RememberMeSwitch extends StatefulWidget {
  const RememberMeSwitch({super.key});

  @override
  State<RememberMeSwitch> createState() => _RememberMeSwitchState();
}

class _RememberMeSwitchState extends State<RememberMeSwitch> {
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