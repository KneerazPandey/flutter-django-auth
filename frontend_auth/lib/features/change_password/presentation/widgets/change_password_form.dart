import 'package:flutter/material.dart';

import '../../../../core/common/custom_elevated_button.dart';
import '../../../../core/common/custom_text_form_field.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  late TextEditingController _currentPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();

    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        CustomTextFormField(
          controller: _currentPasswordController,
          labelText: 'Current Password',
          hintText: 'Enter your current password',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.029),
        CustomTextFormField(
          controller: _newPasswordController,
          labelText: 'New Password',
          hintText: 'Enter your new password',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.029),
        CustomTextFormField(
          controller: _confirmPasswordController,
          labelText: 'Confirm Password',
          hintText: 'Confirm your password',
          obscureText: true,
        ),
        SizedBox(height: size.height * 0.09),
        CustomElevatedButton(
          onPressed: () {},
          text: 'Change Password',
        ),
        SizedBox(height: size.height * 0.026),
      ],
    );
  }
}
