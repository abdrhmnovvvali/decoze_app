import 'package:decoze/utils/constants/app_texts.dart';
import 'package:decoze/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../controllers/login_controller.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = LoginController.instance;

    return ValueListenableBuilder<bool>(
      valueListenable: loginController.isFormValid,
      builder: (context, isValid, _) {
        return CustomButton(
          enabled: isValid,
          text: AppTexts.signIn,
          onPressed: isValid ? () {
           
          } : null,
        );
      },
    );
  }
}
