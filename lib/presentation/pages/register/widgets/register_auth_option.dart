import 'package:decoze/utils/helpers/go.dart';
import 'package:decoze/utils/helpers/pager.dart';
import 'package:decoze/widgets/auth/auth_options.dart';
import 'package:flutter/material.dart';

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
