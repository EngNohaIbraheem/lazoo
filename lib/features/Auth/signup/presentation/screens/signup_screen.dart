import 'package:flutter/material.dart';
import '../../../../../core/config/constant/custom_button.dart';
import '../widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const  String routeName ="SignupScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(child: Icon(Icons.arrow_back)),
            ),
            const SizedBox(height: 40),
            const Text("Sign Up",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            const SignupForm(),
            const Spacer(),
            CustomButton(
              text: "Sign Up",
              onTap: () {},

            ),
          ],
        ),
      ),
    );
  }
}
