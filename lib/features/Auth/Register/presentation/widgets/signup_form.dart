import 'package:flutter/material.dart';
import 'package:lazoo/features/Auth/Register/presentation/widgets/rememberme.dart';
import '../../../../../core/config/constant/app_color.dart';
import 'custum_text_field.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: "Username",
          hint: "Esther Howard",
          suffix: Icon(Icons.check, color: AppColors.green),
        ),
        const CustomTextField(
          label: "Password",
          hint: "HJ@#9783kja",
          obscure: true,
          suffix: Text(
            "Strong",
            style: TextStyle(color: AppColors.green),
          ),
        ),
        const CustomTextField(
          label: "Email Address",
          hint: "bill.sanders@example.com",
          suffix: Icon(Icons.check, color: AppColors.green),
        ),
        const SizedBox(height: 10),
        RememberMe(),
      ],
    );
  }
}