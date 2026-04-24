import 'package:flutter/material.dart';
import '../../../../core/config/constant/app_color.dart';
import '../../../../core/config/constant/custom_button.dart';
import '../../../../core/config/constant/app_strings.dart';
import '../../../Home/presentation/screens/home_screen.dart';
import '../screens/getstarted_screen.dart';


class OnboardingCard extends StatefulWidget {
  const OnboardingCard({super.key});

  @override
  State<OnboardingCard> createState() => _OnboardingCardState();
}

class _OnboardingCardState extends State<OnboardingCard> {
  String selected = AppStrings.women;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            AppStrings.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            AppStrings.description,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.green),
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: AppStrings.men,
                  isSelected: selected == AppStrings.men,
                  onTap: () => setState(() {
                    selected = AppStrings.men;
                  }),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  text: AppStrings.women,
                  isSelected: selected == AppStrings.women,
                  onTap: () => setState(() {
                    selected = AppStrings.women;
                  }),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, GetStartedScreen.routeName);
            },
            child: const Text(
              AppStrings.skip,
              style: TextStyle(
                color: AppColors.green,
                decoration: TextDecoration.underline, // optional عشان تبان clickable
              ),
            ),
          )
          // const Text(
          //   AppStrings.skip,
          //   style: TextStyle(color: AppColors.green),
          // ),
        ],
      ),
    );
  }
}