import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_constants.dart';

class AppTextStyles {
  AppTextStyles._();

  static const bold700 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.steam,
    fontFamily: AppConstants.appFontFamily,
  );

   static const semiBold600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.mercury,
    fontFamily: AppConstants.appFontFamily,
    letterSpacing: 1
    
  );
   static const regular400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.millionGrey,
    fontFamily: AppConstants.appFontFamily,
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


}