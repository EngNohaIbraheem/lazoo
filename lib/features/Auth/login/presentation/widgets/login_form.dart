import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../../../core/config/constant/custum_text_field.dart';
import '../../../../../core/config/constant/remember_me_switch.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String username = '';
  String password = '';

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

          SizedBox(height: 10),

          /// Forgot Password
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot password?",
              style: TextStyle(color: AppColors.red),
            ),
          ),

          SizedBox(height: 20),

          RememberMeSwitch(),
        ],
      ),
    );
  }
}