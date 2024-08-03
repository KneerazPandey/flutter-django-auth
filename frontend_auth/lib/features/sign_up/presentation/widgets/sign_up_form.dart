import 'package:flutter/material.dart';

import '../../../../core/common/custom_elevated_button.dart';
import '../../../../core/common/custom_text_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _usernameController;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          controller: _usernameController,
          labelText: 'Username',
          hintText: 'Enter your username',
        ),
        SizedBox(height: size.height * 0.029),
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
        ),
        SizedBox(height: size.height * 0.11),
        CustomElevatedButton(
          onPressed: () {},
          text: 'Register',
        ),
        SizedBox(height: size.height * 0.026),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ],
    );
  }
}
