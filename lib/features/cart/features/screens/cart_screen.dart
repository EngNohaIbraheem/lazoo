import 'package:flutter/material.dart';
import '../widgets/adress_section.dart';
import '../widgets/cart_item.dart';
import '../widgets/order_info.dart';
import '../widgets/payment_section.dat.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const  String routeName ="CartScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7F5AF0), Color(0xFF6C63FF)],
          ),
        ),
        child: const Center(
          child: Text(
            "Checkout",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFF1F1F1),
                      child: Icon(Icons.arrow_back),
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 40),
                  ],
                ),

                SizedBox(height: 20),

                /// Cart Items
                CartItem(),
                SizedBox(height: 15),
                CartItem(),

                SizedBox(height: 20),

                /// Address
                AddressSection(),

                SizedBox(height: 20),

                /// Payment
                PaymentSection(),

                SizedBox(height: 20),

                /// Order Info
                OrderInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}