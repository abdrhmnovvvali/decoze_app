import 'package:decoze/utils/constants/app_assets.dart';
import 'package:decoze/utils/constants/app_texts.dart';
import 'package:flutter/material.dart';
import '../../../controllers/login_controller.dart';
import '../../../../widgets/custom_input.dart';

class LoginEmailInput extends StatelessWidget {
  const LoginEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = LoginController.instance;
    return CustomInput(
      controller: loginController.emailController,
      focusNode: loginController.emailFocus,
      hintText: AppTexts.email,
      prefixSvg: AppAssets.email,
    );
  }
}
