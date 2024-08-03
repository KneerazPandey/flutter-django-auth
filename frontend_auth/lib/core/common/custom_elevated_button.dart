import 'package:flutter/material.dart';
import 'package:frontend_auth/core/theme/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double buttonHeight;
  final double borderRadius;
  final Color buttonColor;
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor = Colors.white,
    this.buttonHeight = 52,
    this.borderRadius = 6,
    this.buttonColor = AppColor.darkGreen,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(size.width, buttonHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 15,
        ),
      ),
    );
  }
}
