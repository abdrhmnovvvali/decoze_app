import 'package:decoze/utils/constants/app_radius.dart';
import 'package:decoze/utils/constants/app_text_styles.dart';
import 'package:decoze/utils/extensions/widget_state_property_all_extensions.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppButtonStyles {
  AppButtonStyles._();

  static final primaryButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    backgroundColor: AppColors.primary.toWspAll,
    foregroundColor: AppColors.ebony.toWspAll,
    minimumSize: const Size(double.infinity, 56).toWspAll,
    textStyle: AppTextStyles.semiBold600x.toWspAll,
  );

  static final disablePrimaryButtonStyle = primaryButtonStyle.copyWith(
    backgroundColor: AppColors.white.toWspAll,
  );

  static final textButtonStyle = ButtonStyle(
    shape: const RoundedRectangleBorder(
      borderRadius: AppRadiuses.a100,
    ).toWspAll,
    foregroundColor: AppColors.primary.toWspAll,
    textStyle: AppTextStyles.semiBold600x
        .copyWith(color: AppColors.primary)
        .toWspAll,
  );
}
