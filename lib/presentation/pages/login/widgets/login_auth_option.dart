



import 'package:flutter/material.dart';

import '../../../../core/constants/auth_options.dart';
import '../../../../core/helpers/go.dart';
import '../../../../core/helpers/pager.dart';


class LoginAuthOption extends StatelessWidget {
  const LoginAuthOption({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthOptions(
      optionText: 'Don\'t have an account?',
      buttonText: 'Sign up',
      onPressed: () => Go.replace(context, Pager.register),
    );
  }
}