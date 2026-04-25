import 'package:flutter/material.dart';
import '../../../Register/presentation/widgets/custum_back_button.dart';
import '../manger/login_cubit.dart';
import '../widgets/login_form.dart';
import '../widgets/login_button.dart';
import '../widgets/terms_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CustomBackButton(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Please enter your data to continue",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: LoginForm(),
                ),
              ),
              TermsText(),
              SizedBox(height: 10),
              LoginButton(),

              // login logic later (Cubit/API)
            ],
          ),
        ),
      ),
    );
  }
}
