import 'package:flutter/material.dart';

import '../widgets/social_Button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});
  static const  String routeName ="GetStartedScreen" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Back Button
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey.shade200,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// Title
              const Text(
                "Let’s Get Started",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              /// Social Buttons
              SocialButton(
                text: "Facebook",
                color: const Color(0xFF3b5998),
                icon: Icons.facebook,
                onTap: () {},
              ),

              const SizedBox(height: 15),

              SocialButton(
                text: "Twitter",
                color: const Color(0xFF1DA1F2),
                icon: Icons.flutter_dash, // بديل لـ twitter icon
                onTap: () {},
              ),

              const SizedBox(height: 15),

              SocialButton(
                text: "Google",
                color: const Color(0xFFDB4437),
                icon: Icons.g_mobiledata,
                onTap: () {},
              ),

              const Spacer(),

              /// Sign In Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Signin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      /// Bottom Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Create an Account",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}