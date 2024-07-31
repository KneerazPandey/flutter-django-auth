import 'package:flutter/material.dart';
import 'package:frontend_auth/core/media/app_media.dart';
import 'package:frontend_auth/core/theme/app_color.dart';

class OnBoardingCard extends StatelessWidget {
  const OnBoardingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Container()),
        RichText(
          text: TextSpan(
            text: "Let's get you",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            children: <TextSpan>[
              TextSpan(
                text: " onboard!",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: AppColor.darkGreen,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text("Finish setting up your account and start working instantly.",
            style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: size.width * 0.2),
        Image.asset(AppMedia.onBoardingImage1),
        Expanded(child: Container()),
      ],
    );
  }
}
