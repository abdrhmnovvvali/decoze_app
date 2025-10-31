import 'package:flutter/material.dart';

import '../extensions/widget_state_all_extension.dart';
import 'app_colors.dart';
import 'app_radiuses.dart';
import 'app_text_styles.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static final primaryButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    backgroundColor: AppColors.goldenFizz.toWspAll,
    foregroundColor: AppColors.gunMetal.toWspAll,
    minimumSize: const Size(double.infinity, 55).toWspAll,
    textStyle: AppTextStyles.buttonSemibold600.copyWith(fontSize: 18).toWspAll,
  );

  static final disablePrimaryButtonStyle = primaryButtonStyle.copyWith(
    backgroundColor: AppColors.ivory.toWspAll,
  );

  static final textButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    foregroundColor: AppColors.goldenFizz.toWspAll,
    textStyle: AppTextStyles.buttonSemibold600.toWspAll,
    visualDensity: const VisualDensity(vertical: -2, horizontal: -2),
    //overlayColor: AppColors.primary100.toWspAll,
  );
}
