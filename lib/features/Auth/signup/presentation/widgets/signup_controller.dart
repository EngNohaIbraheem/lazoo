import 'package:flutter/material.dart';

class SignUpController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  bool rememberMe = true;

  void toggleRemember(bool value) {
    rememberMe = value;
  }

  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
  }
}