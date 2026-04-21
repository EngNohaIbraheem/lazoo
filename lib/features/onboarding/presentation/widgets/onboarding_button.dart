import 'package:flutter/material.dart';

class OnboardingButtons extends StatelessWidget {
  final VoidCallback onSelect;

  const OnboardingButtons({
    super.key,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
            ),
            child: const Text("Men"),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            onPressed: onSelect,
            child: const Text("Women"),
          ),
        ),
      ],
    );
  }
}