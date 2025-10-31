
import 'package:flutter/material.dart';

import '../../../core/constants/auth_options.dart';
import '../../../core/helpers/go.dart';
import '../../../core/helpers/pager.dart';

class RegisterAuthOption extends StatelessWidget {
  const RegisterAuthOption({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthOptions(
      optionText: 'Already have an account?',
      buttonText: 'Sign in',
      onPressed: () => Go.replace(context, Pager.login),
    );
  }
}