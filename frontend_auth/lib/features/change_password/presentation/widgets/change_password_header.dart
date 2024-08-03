import 'package:flutter/material.dart';

class ChangePasswordHeader extends StatelessWidget {
  const ChangePasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Change Password",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: size.height * 0.009),
        Text(
          "To change password, please fill in the fields below. Your password must contains at least 6 characters, it must also include one special character, one upper case letter and one lower case letter.",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color.fromARGB(255, 106, 105, 105),
              ),
        ),
      ],
    );
  }
}
