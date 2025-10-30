
import 'package:decoze/presentation/controllers/register_controller.dart';
import 'package:decoze/utils/constants/app_assets.dart';
import 'package:decoze/utils/constants/app_texts.dart';
import 'package:decoze/widgets/custom_input.dart';
import 'package:flutter/material.dart';



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
