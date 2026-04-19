import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/drawer_item.dart';
import '../widgets/logout_button.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// avatar
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            "https://i.pravatar.cc/150?img=3",
          ),
        ),

        const SizedBox(width: 12),

        /// name + verified
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Mrh Raju",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text("Verified Profile"),
                SizedBox(width: 5),
                Icon(Icons.verified, color: Colors.green, size: 16),
              ],
            )
          ],
        ),

        const Spacer(),

        /// orders badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text("3 Orders"),
        )
      ],
    );
  }
}