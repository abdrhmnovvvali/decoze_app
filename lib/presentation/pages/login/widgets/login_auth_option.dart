import 'package:decoze/widgets/auth/auth_options.dart';

import '../../../../../utils/helpers/go.dart';
import '../../../../../utils/helpers/pager.dart';

import 'package:flutter/material.dart';


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
