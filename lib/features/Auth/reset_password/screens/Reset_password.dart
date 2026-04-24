import 'package:flutter/material.dart';
import '../../../../core/config/constant/custom_button.dart';
import '../../../../core/config/constant/custum_text_field.dart';
import '../../Register/presentation/widgets/custum_text_field.dart';


class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});
  static const  String routeName ="ResetPasswordScreen" ;

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
              child: CircleAvatar(child: Icon(Icons.arrow_back)),
            ),

            const SizedBox(height: 40),

            const Text("New Password",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),

            const SizedBox(height: 40),

            const CustomTextFieldspecial(
              label: "Password",
              hint: "********",
              isPassword: true,
            ),

            const SizedBox(height: 20),

            const CustomTextFieldspecial(
              label: "Confirm Password",
              hint: "********",
              isPassword: true,
            ),

            const Spacer(),

            const Text("Please write your new password."),

            const SizedBox(height: 10),

            CustomButton(
              text: "Reset Password",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}