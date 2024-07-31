import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';

class OnBoardingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const OnBoardingButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: AppColor.darkGreen,
      onPressed: onPressed,
      elevation: 0,
      child: Transform.rotate(
        angle: 1.5708,
        child: const Icon(
          Icons.navigation,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
