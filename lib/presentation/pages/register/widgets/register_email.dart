import 'package:decoze/presentation/controllers/register_controller.dart';
import 'package:decoze/utils/constants/app_assets.dart';
import 'package:decoze/utils/constants/app_texts.dart';
import 'package:decoze/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class RegisterEmailInput extends StatelessWidget {
  const RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = RegisterController.instance;
    return CustomInput(
      controller: registerController.emailController,
      focusNode: registerController.emailFocus,
      hintText: AppTexts.email,
      prefixSvg: AppAssets.email,
    );
  }
}
