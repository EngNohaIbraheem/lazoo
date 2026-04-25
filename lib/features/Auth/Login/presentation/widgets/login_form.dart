import 'package:flutter/material.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../../../Register/presentation/widgets/custum_text_field.dart';
import '../../../Register/presentation/widgets/rememberme.dart';
import '../manger/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();

    return Column(
      children: [
        CustomTextField(
          label: "Email",
          hint: "Enter your email",
          controller: cubit.emailC, // 👈 مهم
          suffix: const Icon(Icons.check, color: AppColors.green),
        ),

        CustomTextField(
          label: "Password",
          hint: "HJ@#9783kja",
          obscure: true,
          controller: cubit.passC, // 👈 مهم
          suffix: const Text(
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