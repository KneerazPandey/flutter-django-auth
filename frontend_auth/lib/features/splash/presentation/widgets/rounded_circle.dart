import 'package:flutter/material.dart';

class RoundedCircle extends StatelessWidget {
  final double radius;
  final Color backgroundColor;

  const RoundedCircle({
    super.key,
    required this.radius,
    this.backgroundColor = Colors.greenAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
