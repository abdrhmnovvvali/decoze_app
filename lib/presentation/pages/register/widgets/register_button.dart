
import 'package:decoze/presentation/controllers/register_controller.dart';
import 'package:decoze/utils/constants/app_texts.dart';
import 'package:decoze/widgets/custom_button.dart';
import 'package:flutter/material.dart';



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
