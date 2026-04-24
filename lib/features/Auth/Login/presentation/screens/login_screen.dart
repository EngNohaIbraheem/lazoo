import 'package:flutter/material.dart';
import '../../../Register/presentation/widgets/custum_back_button.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';
import '../widgets/terms_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomBackButton(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Please enter your data to continue",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: LoginForm(),
              ),
            ),
            const TermsText(),
            const SizedBox(height: 10),
            LoginButton(
              onPressed: () {
                // login logic later (Cubit/API)
              },
            ),
          ],
        ),
      ),
    );
  }
}
