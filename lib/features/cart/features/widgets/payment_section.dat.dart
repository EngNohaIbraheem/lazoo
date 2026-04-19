import 'package:flutter/material.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Payment Method",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

        const SizedBox(height: 10),

        ListTile(
          leading: const Icon(Icons.credit_card),
          title: const Text("Visa Classic"),
          subtitle: const Text("**** 7690"),
          trailing: const Icon(Icons.check_circle, color: Colors.green),
        )
      ],
    );
  }
}