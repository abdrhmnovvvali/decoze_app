import 'package:flutter/material.dart';
import '../../../../core/constants/app_texts.dart';
import '../../../../core/controllers/login_controller.dart';
import '../../../widgets/custom_button.dart';

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