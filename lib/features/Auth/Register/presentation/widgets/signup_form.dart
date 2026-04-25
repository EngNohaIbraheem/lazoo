import 'package:flutter/material.dart';
import 'package:lazoo/features/Auth/Register/presentation/widgets/rememberme.dart';
import '../../../../../core/config/constant/app_color.dart';
import '../manger/signup_cubit.dart';
import 'custum_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();

    return Column(
      children: [
        CustomTextField(
          label: "Username",
          hint: "Esther Howard",
          controller: cubit.nameC,
          suffix: const Icon(Icons.check, color: AppColors.green),
        ),

        CustomTextField(
          label: "Password",
          hint: "HJ@#9783kja",
          obscure: true,
          controller: cubit.passwordC,
          suffix: const Text(
            "Strong",
            style: TextStyle(color: AppColors.green),
          ),
        ),

        CustomTextField(
          label: "Email Address",
          hint: "bill.sanders@example.com",
          controller: cubit.emailC,
          suffix: const Icon(Icons.check, color: AppColors.green),
        ),

        const SizedBox(height: 10),
        const RememberMe(),
      ],
    );
  }
}
