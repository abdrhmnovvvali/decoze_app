import 'package:decoze_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_constants.dart';

class AppTextStyles {
  AppTextStyles._();

  static const buttonSemibold600 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.steam,
    fontFamily: AppConstants.appFontFamily,
  );

  static const alertSemibold600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    letterSpacing: 1,
  );

  static const h2Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static const h6Semibold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.dawnPink,
  );

  static const h1Bold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.goldenFizz,
  );
}
