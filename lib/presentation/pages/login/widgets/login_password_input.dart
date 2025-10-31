
import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_texts.dart';
import '../../../../core/controllers/login_controller.dart';
import '../../../widgets/custom_input.dart';


class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = LoginController.instance;
    return CustomInput(
      controller: loginController.passwordController,
      focusNode: loginController.passwordFocus,
      hintText: AppTexts.passwords,
      prefixSvg: AppAssets.lock,
      isSecure: true,
      suffixSvg: AppAssets.hide,
    );
  }
}