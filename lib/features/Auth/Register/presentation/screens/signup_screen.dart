import 'package:flutter/material.dart';
import '../widgets/custum_back_button.dart';
import '../widgets/signup_button.dart';
import '../widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const routeName = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            /// Back
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomBackButton(),
              ),
            ),

            const SizedBox(height: 20),

            /// Title
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            /// Form
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SignUpForm(),
              ),
            ),

            /// Button
            SignUpButton(
              onPressed: () {
                // handle logic later (Cubit/API)
              },
            ),
          ],
        ),
      ),
    );
  }
}
