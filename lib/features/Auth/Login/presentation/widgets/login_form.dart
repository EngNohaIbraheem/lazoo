import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../Register/presentation/widgets/custum_text_field.dart';
import '../../../Register/presentation/widgets/rememberme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
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

        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // navigate to forgot password
            },
            child: Text(
              "Forgot password?",
              style: TextStyle(color: AppColors.red),
            ),
          ),
        ),

        const SizedBox(height: 10),
        const RememberMe(),
      ],
    );
  }
}