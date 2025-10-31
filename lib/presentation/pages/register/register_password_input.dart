
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/controllers/regsiter_controller.dart';
import '../../widgets/custom_input.dart';



class RegisterPasswordInput extends StatelessWidget {
  const RegisterPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = RegisterController.instance;
    return CustomInput(
      controller: registerController.passwordController,
      focusNode: registerController.passwordFocus,
      hintText: AppTexts.passwords,
      prefixSvg: AppAssets.lock,
      isSecure: true,
      suffixSvg: AppAssets.hide,
    );
  }
}