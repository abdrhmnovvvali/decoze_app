import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_radiuses.dart';
import '../../core/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });
  final String buttonTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.goldenFizz,
        shape: RoundedRectangleBorder(borderRadius: AppRadiuses.a100),
      ),
      child: Text(buttonTitle, style: AppTextStyles.buttonSemibold),
    );
  }
}
