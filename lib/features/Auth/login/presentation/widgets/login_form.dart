import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../../../core/config/constant/custum_text_field.dart';
import '../../../../../core/config/constant/remember_me_switch.dart';
import '../../../forgett_password/presentation/screens/forgett_pasword.dart';

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
      child: Column(
        children: [
          /// Username
          const CustomTextField(
            label: "Username",
            hint: "Enter username",
            suffix: Icon(Icons.check, color: AppColors.green),
          ),

          const SizedBox(height: 20),

          /// Password
          const CustomTextField(
            label: "Password",
            hint: "Enter password",
            isPassword: true,
            suffix: Text(
              "Strong",
              style: TextStyle(color: AppColors.green),
            ),
          ),

          const SizedBox(height: 10),

          /// Forgot Password
          Align(
            alignment: Alignment.centerRight,
            child:
            GestureDetector(
              onTap: () {

                      Navigator.pushNamed(context,ForgotPasswordScreen.routeName);


              },
              child: Text(
                "forget password",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  decoration: TextDecoration.underline, // optional عشان يبان clickable
                ),
              ),
            )          ),

          const SizedBox(height: 20),

          const RememberMeSwitch(),
        ],
      ),
    );
  }
}