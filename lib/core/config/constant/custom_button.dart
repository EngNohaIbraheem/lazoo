import 'package:flutter/material.dart';
import 'app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  /// ✅ optional
  final bool isSelected;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isSelected = false, // 👈 default
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isSelected
                ? [AppColors.secondary, AppColors.primary] // 🔥 selected
                : [AppColors.primary, AppColors.secondary],
          ),
          boxShadow: isSelected
              ? [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ]
              : [],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight:
            isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//
//   const CustomButton({
//     super.key,
//     required this.text,
//     required this.onTap, required bool isSelected,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         height: 60,
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [AppColors.primary, AppColors.secondary],
//           ),
//         ),
//         child: Text(
//           text,
//           style: const TextStyle(
//               color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }