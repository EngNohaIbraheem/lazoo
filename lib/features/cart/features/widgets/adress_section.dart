import 'package:flutter/material.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Delivery Address",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

        const SizedBox(height: 10),

        ListTile(
          leading: const Icon(Icons.location_on),
          title: const Text("Chhatak, Sunamgonj 12/8AB"),
          subtitle: const Text("Sylhet"),
          trailing: const Icon(Icons.check_circle, color: Colors.green),
        )
      ],
    );
  }
}