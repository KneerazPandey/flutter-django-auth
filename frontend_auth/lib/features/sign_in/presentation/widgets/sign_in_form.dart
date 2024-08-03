import 'package:flutter/material.dart';
import 'package:frontend_auth/core/routing/routing_key.dart';
import 'package:frontend_auth/core/theme/app_color.dart';

import '../../../../core/common/custom_elevated_button.dart';
import '../../../../core/common/custom_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool _rememberMe;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _rememberMe = true;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          controller: _emailController,
          labelText: 'Email',
          hintText: 'Enter your email',
        ),
        SizedBox(height: size.height * 0.029),
        CustomTextFormField(
          controller: _passwordController,
          labelText: 'Password',
          hintText: 'Enter your password',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.013),
        Row(
          children: <Widget>[
            Checkbox(
              value: _rememberMe,
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    _rememberMe = value;
                  });
                }
              },
            ),
            const Text('Remember Me'),
            Expanded(child: Container()),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color.fromARGB(255, 195, 107, 100),
                    ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.09),
        CustomElevatedButton(
          onPressed: () {},
          text: 'Register',
        ),
        SizedBox(height: size.height * 0.026),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey,
                  ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutingKey.signUpScreenKey,
                  (route) => false,
                );
              },
              child: Text(
                'Register',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColor.darkGreen,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
