import 'package:decoze_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const buttonSemibold600 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.steam,
    fontFamily: AppConstants.appFontFamily,
  );
  static const bold700 = TextStyle(
    fontSize: 32,
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
  static const regular400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.millionGrey,
    fontFamily: AppConstants.appFontFamily,
  );
  static const h2Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static const semiBold600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.mercury,
    fontFamily: AppConstants.appFontFamily,
    letterSpacing: 1,
  );

  static const semiBold600x = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.ebony,
    fontFamily: AppConstants.appFontFamily,
  );

  static const medium500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.steam,
    fontFamily: AppConstants.appFontFamily,
  );

  // static const h6Semibold = TextStyle(
  //   fontSize: 16,
  //   fontWeight: FontWeight.w500,
  //   color: AppColors.dawnPink,
  // );

  // static const h1Bold = TextStyle(
  //   fontSize: 32,
  //   fontWeight: FontWeight.w700,
  //   color: AppColors.goldenFizz,
  // );
}
