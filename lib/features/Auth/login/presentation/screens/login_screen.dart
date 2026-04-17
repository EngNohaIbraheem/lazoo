import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../../../core/config/constant/custom_button.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const  String routeName ="LoginScreen" ;

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
              child: CircleAvatar(
                backgroundColor: Color(0xFFF1F1F1),
                child: Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(height: 40),
            const Text("Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text("Please enter your data to continue",
                style: TextStyle(color: AppColors.textLight)),
            const SizedBox(height: 40),
            const LoginForm(),
            const Spacer(),
            const Text.rich(
              TextSpan(
                text:
                    "By connecting your account confirm that you agree with our ",
                style: TextStyle(color: AppColors.textLight),
                children: [
                  TextSpan(
                    text: "Term and Condition",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),

            CustomButton(
              text: "Login",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
