import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../../../core/config/constant/custum_text_field.dart';
import '../../../../../core/config/constant/remember_me_switch.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: const Column(
        children: [
          /// Username
          CustomTextField(
            label: "Username",
            hint: "Enter username",
            suffix: Icon(Icons.check, color: AppColors.green),
          ),

          SizedBox(height: 20),

          /// Password
          CustomTextField(
            label: "Password",
            hint: "Enter password",
            isPassword: true,
            suffix: Text(
              "Strong",
              style: TextStyle(color: AppColors.green),
            ),
          ),

          SizedBox(height: 20),

          /// Email
          CustomTextField(
            label: "Email Address",
            hint: "example@mail.com",
            suffix: Icon(Icons.check, color: AppColors.green),
          ),

          SizedBox(height: 20),

          RememberMeSwitch(),
        ],
      ),
    );
  }
}