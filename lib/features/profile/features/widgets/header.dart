import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final VoidCallback onMenuTap;

  const Header({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// زرار menu
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onMenuTap,
        ),

        const Text(
          "Home",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const Icon(Icons.notifications_none),
      ],
    );
  }
}