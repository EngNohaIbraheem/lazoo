import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(Icons.menu),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: const Icon(Icons.shopping_bag_outlined),
        ),
      ],
    );
  }
}