
import 'package:decoze_app/core/extensions/widget_state_property_all_extensions.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_radiuses.dart';
import 'app_text_styles.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static final primaryButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    backgroundColor: AppColors.primary.toWspAll,
    foregroundColor: AppColors.ebony.toWspAll,
    minimumSize: const Size(double.infinity, 56).toWspAll,
    textStyle: AppTextStyles.alertSemibold600.toWspAll,
  );

  static final disablePrimaryButtonStyle = primaryButtonStyle.copyWith(
    backgroundColor: AppColors.white.toWspAll,
  );

  static final textButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    foregroundColor: AppColors.primary.toWspAll,
    textStyle: AppTextStyles.alertSemibold600
        .copyWith(color: AppColors.primary)
        .toWspAll,
  );
}
