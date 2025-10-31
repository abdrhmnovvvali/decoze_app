import 'package:decoze_app/core/extensions/widget_state_property_all_extensions.dart';
import 'package:flutter/widgets.dart';

import '../../presentation/widgets/custom_text_button.dart';


import 'app_button_styles.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';



class AuthOptions extends StatelessWidget {
  const AuthOptions({
    super.key,
    required this.optionText,
    required this.buttonText,
    required this.onPressed,
  });

  final String optionText;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(optionText, style: AppTextStyles.regular400),
          CustomTextButton(
            text: buttonText,
            onPressed: onPressed,

            style: AppButtonStyles.textButtonStyle.copyWith(
              foregroundColor: AppColors.primary.toWspAll,
            ),
          ),
        ],
      ),
    );
  }
}