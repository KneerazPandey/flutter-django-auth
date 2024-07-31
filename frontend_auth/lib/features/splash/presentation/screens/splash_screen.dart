import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.darkGreen,
      body: Column(
        children: [
          Expanded(child: Container()),
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: <Widget>[
              RoundedCircle(
                radius: size.width,
                backgroundColor: const Color(0xFF04af70),
              ),
              RoundedCircle(
                radius: size.width - 120,
                backgroundColor: const Color.fromARGB(255, 7, 213, 137),
              ),
              RoundedCircle(
                radius: size.width - (120 + 120),
                backgroundColor: const Color.fromARGB(255, 15, 244, 160),
              ),
              Text(
                'fl-dj-auth',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 15, 37, 15),
                    ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Text(
            'Developed by: Kneeraz Pandey',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(
            height: size.height * 0.05,
          )
        ],
      ),
    );
  }
}
