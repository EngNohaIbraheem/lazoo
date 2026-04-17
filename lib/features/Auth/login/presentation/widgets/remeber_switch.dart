import 'package:flutter/material.dart';

class RememberSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const RememberSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Remember me"),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.green,
        ),
      ],
    );
  }
}