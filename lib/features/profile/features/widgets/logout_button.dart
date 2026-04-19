import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.logout, color: Colors.red),
        SizedBox(width: 8),
        Text(
          "Logout",
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ],
    );
  }
}