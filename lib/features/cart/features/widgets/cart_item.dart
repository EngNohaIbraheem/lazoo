import 'package:flutter/material.dart';


class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/tshirt.png",
            width: 80,
            height: 80,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Men's Tie-Dye T-Shirt Nike Sportswear",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text("\$45 (-\$4.00 Tax)",
                    style: TextStyle(color: Colors.grey)),

                const SizedBox(height: 10),

                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      onPressed: () {
                        if (quantity > 1) {
                          setState(() => quantity--);
                        }
                      },
                    ),
                    Text("$quantity"),
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_up),
                      onPressed: () {
                        setState(() => quantity++);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),

          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}