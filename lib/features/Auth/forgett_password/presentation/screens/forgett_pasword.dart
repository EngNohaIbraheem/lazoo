import 'package:flutter/material.dart';
import '../../../../../core/config/constant/custom_button.dart';
import '../../../../../core/config/constant/custum_text_field.dart';
import '../../../reset_password/screens/Reset_password.dart';



class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static const  String routeName ="ForgotPasswordScreen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Back Button
              const Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFF1F1F1),
                  child: Icon(Icons.arrow_back),
                ),
              ),

              const SizedBox(height: 30),

              /// Title
              const Text(
                "Forgot Password",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              /// 🔥 IMAGE هنا
              Image.asset(
                "assets/images/lock.png",
                height: 180,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 40),

              /// Email Field
              const CustomTextField(
                label: "Email Address",
                hint: "example@mail.com",
              ),

              const Spacer(),

              const Text(
                "Please write your email to receive a confirmation code to set a new password.",
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              CustomButton(
                text: "Confirm Mail",
                onTap: () {
                  Navigator.pushNamed(context,ResetPasswordScreen.routeName);

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}