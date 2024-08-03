import 'package:flutter/material.dart';

import '../../../../core/common/custom_elevated_button.dart';
import '../../../../core/common/custom_text_form_field.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          controller: _emailController,
          labelText: 'Email Address',
          hintText: 'Enter your email address',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.26),
        CustomElevatedButton(
          onPressed: () {},
          text: 'Forget Password',
        ),
        SizedBox(height: size.height * 0.026),
      ],
    );
  }
}
