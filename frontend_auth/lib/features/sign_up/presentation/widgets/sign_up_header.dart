import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "Hello, ",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            children: <TextSpan>[
              TextSpan(
                text: 'Welcome 👋',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkGreen,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.009),
        Text(
          "First, Let's create your account.",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color.fromARGB(255, 106, 105, 105),
              ),
        ),
      ],
    );
  }
}
