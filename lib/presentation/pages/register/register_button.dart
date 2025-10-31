
import 'package:flutter/material.dart';

import '../../../core/constants/app_texts.dart';
import '../../../core/controllers/regsiter_controller.dart';
import '../../widgets/custom_button.dart';



class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = RegisterController.instance;

    return ValueListenableBuilder<bool>(
      valueListenable:registerController.isFormValid,
      builder: (context, isValid, _) {
        return CustomButton(
          enabled: isValid,
          text: AppTexts.signUp,
          onPressed: isValid ? () {
           
          } : null,
        );
      },
    );
  }
}