import 'package:flutter/material.dart';
import 'package:lazoo/features/Auth/Login/presentation/manger/login_cubit.dart';
import 'package:lazoo/features/Home/presentation/screens/home_screen.dart';
import '../../../../../core/config/constant/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, HomeScreen.routeName);
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.msg)));
        }
      },
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          var cubit = context.read<LoginCubit>();
          return Center(
            child: SizedBox(
              width: 200,
              height: 50,
              child: state is LoginLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: () {
                        if (cubit.emailC.text.isNotEmpty &&
                            cubit.passC.text.isNotEmpty) {
                          cubit.login(
                              email: cubit.emailC.text, pass: cubit.passC.text);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Please Fill Texts")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2D1B16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}

// class LoginButton extends StatelessWidget {
//   final VoidCallback onPressed;
//
//   const LoginButton({super.key, required this.onPressed});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child:
//        BlocListener<LoginCubit, LoginState>(
//     listener: (context, state) {
//       if (state is LoginSuccess) {
//         Navigator.pushNamed(context, HomeScreen.routeName);
//       } else if (state is LoginFailure) {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text(state.msg)));
//       }
//     },
//         child: BlocBuilder<LoginCubit, LoginState>(
//           builder: (context, state) {
//             return Container(
//               height: 60,
//               width: double.infinity,
//               alignment: Alignment.center,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [AppColors.primary, AppColors.secondary],
//                 ),
//               ),
//               child: const Text(
//                 "Login",
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
