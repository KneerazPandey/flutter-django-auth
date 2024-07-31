import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';

class OnBoardingDots extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  const OnBoardingDots({
    super.key,
    this.isSelected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColor.darkGreen : Colors.grey,
          borderRadius: BorderRadius.circular(isSelected ? 5 : 30),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 3),
        width: isSelected ? 20 : 8,
        height: 8,
      ),
    );
  }
}
