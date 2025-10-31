
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_texts.dart';
import '../../../core/controllers/regsiter_controller.dart';
import '../../widgets/custom_input.dart';

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