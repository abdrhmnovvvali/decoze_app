import 'package:decoze_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const buttonSemibold = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

 static final semiBold500 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontFamily: AppConstants.appFontFamily,
  );
  static final bold700 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    fontFamily: AppConstants.appFontFamily,
  );
   static final regular400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontFamily: AppConstants.appFontFamily,
  );

}
